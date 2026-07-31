#include <emscripten.h>

#include <cstdint>
#include <cstdio>
#include <string>
#include <utility>
#include <vector>

typedef int DomHandleId;

EM_JS(void, dom_init, (), {
  Module.__domHandles = [null, undefined];
  Module.__domFreeList = [];
  Module.__domGet = function(index) {
    return Module.__domHandles[index];
  };
  Module.__domAlloc = function(value) {
    if (value === null) {
      return 0;
    }
    if (value === undefined) {
      return 1;
    }
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
  if (id <= 1) {
    return;
  }
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
  let tagString = !tag ? '' : UTF8ToString(tag);
  return Module.__domAlloc(Module.__domGet(document).createElement(tagString));
});

EM_JS(void, dom_append_child_js, (DomHandleId parent, DomHandleId child), {
  Module.__domGet(parent).appendChild(Module.__domGet(child));
});

EM_JS(void, dom_set_text_content_js, (DomHandleId node, const char *text), {
  let textString = !text ? '' : UTF8ToString(text);
  Module.__domGet(node).textContent = textString;
});

EM_JS(void, dom_set_attribute_js, (DomHandleId node, const char *name, const char *value), {
  let nameString = !name ? '' : UTF8ToString(name);
  let valueString = !value ? '' : UTF8ToString(value);
  Module.__domGet(node).setAttribute(nameString, valueString);
});

EM_JS(int, dom_has_attribute_js, (DomHandleId node, const char *name), {
  let nameString = !name ? '' : UTF8ToString(name);
  return Module.__domGet(node).hasAttribute(nameString) ? 1 : 0;
});

EM_JS(void, dom_remove_js, (DomHandleId node), {
  Module.__domGet(node).remove();
});

EM_JS(void, dom_append_row_js, (DomHandleId document, DomHandleId table,
                                const char *c0, const char *c1,
                                const char *c2, const char *c3), {
  var doc = Module.__domGet(document);
  var row = doc.createElement("tr");
  [c0, c1, c2, c3].forEach(function(ptr) {
    var td = doc.createElement("td");
    td.textContent = UTF8ToString(ptr);
    row.appendChild(td);
  });
  Module.__domGet(table).appendChild(row);
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

static void dom_set_attribute(const DomHandle &node, const char *name, const char *value) {
  dom_set_attribute_js(node.id(), name, value);
}

static bool dom_has_attribute(const DomHandle &node, const char *name) {
  return dom_has_attribute_js(node.id(), name) != 0;
}

static void dom_remove(const DomHandle &node) {
  dom_remove_js(node.id());
}

static void dom_append_row(const DomHandle &document, const DomHandle &table,
                           const std::string &c0, const std::string &c1,
                           const std::string &c2, const std::string &c3) {
  dom_append_row_js(document.id(), table.id(), c0.c_str(), c1.c_str(), c2.c_str(), c3.c_str());
}

static std::string fmt(double v, int decimals) {
  char buf[64];
  snprintf(buf, sizeof buf, "%.*f", decimals, v);
  return buf;
}

extern "C" void EMSCRIPTEN_KEEPALIVE run(uint32_t row_count) {
  dom_init();

  DomHandle document = dom_get_document();
  DomHandle body = dom_get_body();

  perf_mark("em_js-start");

  DomHandle heading = dom_create_element(document, "h2");
  dom_set_text_content(heading, "Emscripten (C++, EM_JS)");
  dom_append_child(body, heading);

  DomHandle toggle = dom_create_element(document, "details");
  dom_set_attribute(toggle, "style", "margin-bottom: 1rem");
  DomHandle toggle_title = dom_create_element(document, "summary");
  dom_set_text_content(toggle_title, "Result");
  dom_append_child(toggle, toggle_title);
  dom_append_child(body, toggle);

  DomHandle table_el = dom_create_element(document, "table");
  DomHandle tbody = dom_create_element(document, "tbody");
  dom_append_child(table_el, tbody);
  dom_append_child(toggle, table_el);

  perf_mark("create-start");
  std::vector<std::pair<DomHandle, DomHandle>> rows;
  rows.reserve(row_count);
  for (uint32_t i = 1; i <= row_count; i++) {
    DomHandle tr = dom_create_element(document, "tr");
    DomHandle td = dom_create_element(document, "td");
    dom_set_text_content(td, "row " + std::to_string(i));
    dom_append_child(tr, td);
    dom_append_child(tbody, tr);
    rows.emplace_back(std::move(tr), std::move(td));
  }
  perf_mark("create-end");
  double create_ms = perf_measure("create", "create-start", "create-end");

  perf_mark("update-start");
  uint32_t updated = 0;
  for (uint32_t idx = 0; idx < rows.size(); idx++) {
    uint32_t i = idx + 1;
    if (i % 8 == 0) {
      auto &[tr, td] = rows[idx];
      dom_set_text_content(td, "row " + std::to_string(i) + " (selected)");
      dom_set_attribute(tr, "data-selected", "data-selected");
      updated++;
    }
  }
  perf_mark("update-end");
  double update_ms = perf_measure("update", "update-start", "update-end");

  perf_mark("clear-start");
  uint32_t cleared = 0;
  for (auto &[tr, td] : rows) {
    if (!dom_has_attribute(tr, "data-selected")) {
      dom_remove(tr);
      cleared++;
    }
  }
  perf_mark("clear-end");
  double clear_ms = perf_measure("clear", "clear-start", "clear-end");

  dom_remove(toggle);

  DomHandle report = dom_create_element(document, "table");
  DomHandle header = dom_create_element(document, "tr");
  for (const char *label :
       {"phase", "total ms", "µs/row", "µs/row touched (est.)"}) {
    DomHandle th = dom_create_element(document, "th");
    dom_set_text_content(th, label);
    dom_append_child(header, th);
  }
  dom_append_child(report, header);

  double rows_d = static_cast<double>(row_count);
  dom_append_row(document, report, "create", fmt(create_ms, 3),
                fmt(create_ms * 1000.0 / rows_d, 3), "-");
  dom_append_row(document, report, "update (selected)", fmt(update_ms, 3),
                fmt(update_ms * 1000.0 / rows_d, 3),
                fmt(update_ms * 1000.0 / static_cast<double>(updated), 3));
  dom_append_row(document, report, "clear (unselected)", fmt(clear_ms, 3),
                fmt(clear_ms * 1000.0 / rows_d, 3),
                fmt(clear_ms * 1000.0 / static_cast<double>(cleared), 3));

  dom_append_child(body, report);

  perf_mark("em_js-end");
  perf_measure("em_js", "em_js-start", "em_js-end");
}
