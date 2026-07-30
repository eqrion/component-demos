#include <emscripten.h>

#include <cstdint>
#include <cstdio>
#include <string>
#include <utility>

typedef int DomHandleId;

EM_JS(void, dom_init, (), {
  Module.__domHandles = [undefined];
  Module.__domFreeList = [];
  Module.__domAlloc = function(value) {
    var id = Module.__domFreeList.pop();
    if (id === undefined) {
      id = Module.__domHandles.length;
      Module.__domHandles.push(value);
    } else {
      Module.__domHandles[id] = value;
    }
    return id;
  };
});

EM_JS(void, dom_release, (DomHandleId id), {
  Module.__domHandles[id] = undefined;
  Module.__domFreeList.push(id);
});

EM_JS(DomHandleId, dom_get_document_js, (), {
  return Module.__domAlloc(document);
});

EM_JS(DomHandleId, dom_get_body_js, (), {
  return Module.__domAlloc(document.body);
});

EM_JS(DomHandleId, dom_create_element_js, (DomHandleId document, const char *tag), {
  return Module.__domAlloc(Module.__domHandles[document].createElement(UTF8ToString(tag)));
});

EM_JS(void, dom_append_child_js, (DomHandleId parent, DomHandleId child), {
  Module.__domHandles[parent].appendChild(Module.__domHandles[child]);
});

EM_JS(void, dom_set_text_content_js, (DomHandleId node, const char *text), {
  Module.__domHandles[node].textContent = UTF8ToString(text);
});

EM_JS(int, dom_get_text_content_js, (DomHandleId node, char *buf, int buf_size), {
  var s = Module.__domHandles[node].textContent;
  stringToUTF8(s, buf, buf_size);
  return lengthBytesUTF8(s);
});

EM_JS(void, dom_append_row_js, (DomHandleId document, DomHandleId table,
                                const char *c0, const char *c1,
                                const char *c2, const char *c3,
                                const char *c4), {
  var doc = Module.__domHandles[document];
  var row = doc.createElement("tr");
  [c0, c1, c2, c3, c4].forEach(function(ptr) {
    var td = doc.createElement("td");
    td.textContent = UTF8ToString(ptr);
    row.appendChild(td);
  });
  Module.__domHandles[table].appendChild(row);
});

EM_JS(void, perf_mark, (const char *name), {
  performance.mark(UTF8ToString(name));
});

EM_JS(double, perf_measure, (const char *name, const char *start, const char *end), {
  return performance.measure(UTF8ToString(name), UTF8ToString(start), UTF8ToString(end)).duration;
});

// Owns a slot in the JS-side handle table (see dom_init above) and releases it
// back to the free list on destruction, mirroring embind::val's RAII handle.
class DomHandle {
public:
  DomHandle() = default;
  explicit DomHandle(DomHandleId id) : id_(id) {}

  DomHandle(const DomHandle &) = delete;
  DomHandle &operator=(const DomHandle &) = delete;

  DomHandle(DomHandle &&other) noexcept : id_(std::exchange(other.id_, 0)) {}
  DomHandle &operator=(DomHandle &&other) noexcept {
    if (this != &other) {
      release();
      id_ = std::exchange(other.id_, 0);
    }
    return *this;
  }

  ~DomHandle() { release(); }

  DomHandleId id() const { return id_; }

private:
  void release() {
    if (id_) {
      dom_release(id_);
      id_ = 0;
    }
  }

  DomHandleId id_ = 0;
};

static DomHandle dom_get_document() { return DomHandle(dom_get_document_js()); }
static DomHandle dom_get_body() { return DomHandle(dom_get_body_js()); }

static DomHandle dom_create_element(const DomHandle &document, const char *tag) {
  return DomHandle(dom_create_element_js(document.id(), tag));
}

static void dom_append_child(const DomHandle &parent, const DomHandle &child) {
  dom_append_child_js(parent.id(), child.id());
}

static void dom_set_text_content(const DomHandle &node, const std::string &text) {
  dom_set_text_content_js(node.id(), text.c_str());
}

static int dom_get_text_content(const DomHandle &node, char *buf, int buf_size) {
  return dom_get_text_content_js(node.id(), buf, buf_size);
}

static void dom_append_row(const DomHandle &document, const DomHandle &table,
                           const std::string &c0, const std::string &c1,
                           const std::string &c2, const std::string &c3,
                           const std::string &c4) {
  dom_append_row_js(document.id(), table.id(), c0.c_str(), c1.c_str(),
                    c2.c_str(), c3.c_str(), c4.c_str());
}

static constexpr size_t SIZES[] = {8, 128, 1024, 16384, 262144};
static constexpr size_t MAX_SIZE = 262144;
static constexpr uint64_t MAX_REPS = uint64_t(1) << 24;

static std::string fmt(double v, int decimals) {
  char buf[64];
  snprintf(buf, sizeof buf, "%.*f", decimals, v);
  return buf;
}

// Autoranging timer: doubles the rep count until at least `min_ms` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
template <typename Fn>
static uint64_t autorange(double min_ms, Fn &&run, double *out_ms) {
  uint64_t reps = 100;
  for (;;) {
    perf_mark("measure-start");
    run(reps);
    perf_mark("measure-end");
    double elapsed = perf_measure("measure", "measure-start", "measure-end");
    if (elapsed >= min_ms || reps >= MAX_REPS) {
      *out_ms = elapsed;
      return reps;
    }
    reps *= 2;
  }
}

extern "C" void EMSCRIPTEN_KEEPALIVE run(uint32_t min_ms_raw) {
  dom_init();

  DomHandle document = dom_get_document();
  DomHandle body = dom_get_body();

  perf_mark("em_js-start");

  DomHandle el = dom_create_element(document, "div");

  DomHandle heading = dom_create_element(document, "h2");
  dom_set_text_content(heading, "Emscripten (C++, EM_JS)");

  DomHandle table = dom_create_element(document, "table");
  dom_append_row(document, table, "size", "set µs/call", "set MB/s",
                "get µs/call", "get MB/s");

  // Preallocated once so the "get" measurement is pure marshalling cost, not
  // malloc/free churn.
  std::string get_buf(MAX_SIZE + 1, '\0');

  double min_ms = min_ms_raw < 1 ? 1.0 : static_cast<double>(min_ms_raw);

  for (size_t size : SIZES) {
    std::string value(size, 'x');
    dom_set_text_content(el, value);

    double set_ms;
    uint64_t set_reps = autorange(
        min_ms,
        [&](uint64_t reps) {
          for (uint64_t i = 0; i < reps; i++) {
            dom_set_text_content(el, value);
          }
        },
        &set_ms);

    double get_ms;
    uint64_t get_reps = autorange(
        min_ms,
        [&](uint64_t reps) {
          for (uint64_t i = 0; i < reps; i++) {
            dom_get_text_content(el, get_buf.data(), static_cast<int>(get_buf.size()));
          }
        },
        &get_ms);

    double set_us_per_call = set_ms * 1000.0 / static_cast<double>(set_reps);
    double get_us_per_call = get_ms * 1000.0 / static_cast<double>(get_reps);
    double set_mb_per_s =
        (static_cast<double>(size) * static_cast<double>(set_reps)) /
        (set_ms * 1000.0);
    double get_mb_per_s =
        (static_cast<double>(size) * static_cast<double>(get_reps)) /
        (get_ms * 1000.0);

    dom_append_row(document, table, std::to_string(size) + " B",
                  fmt(set_us_per_call, 3), fmt(set_mb_per_s, 1),
                  fmt(get_us_per_call, 3), fmt(get_mb_per_s, 1));
  }

  dom_append_child(body, heading);
  dom_append_child(body, table);

  perf_mark("em_js-end");
  perf_measure("em_js", "em_js-start", "em_js-end");
}
