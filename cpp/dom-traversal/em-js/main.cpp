#include <emscripten.h>

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

EM_JS(DomHandleId, dom_first_child_js, (DomHandleId node), {
  var fc = Module.__domHandles[node].firstChild;
  return fc ? Module.__domAlloc(fc) : 0;
});

EM_JS(DomHandleId, dom_next_sibling_js, (DomHandleId node), {
  var ns = Module.__domHandles[node].nextSibling;
  return ns ? Module.__domAlloc(ns) : 0;
});

EM_JS(void, dom_set_text_content_js, (DomHandleId node, const char *text), {
  Module.__domHandles[node].textContent = UTF8ToString(text);
});

EM_JS(void, dom_append_row_js, (DomHandleId document, DomHandleId table, const char *label, const char *value), {
  var doc = Module.__domHandles[document];
  var row = doc.createElement("tr");
  var th = doc.createElement("th");
  th.textContent = UTF8ToString(label);
  row.appendChild(th);
  var td = doc.createElement("td");
  td.textContent = UTF8ToString(value);
  row.appendChild(td);
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
  explicit operator bool() const { return id_ != 0; }

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

static DomHandle dom_first_child(const DomHandle &node) {
  return DomHandle(dom_first_child_js(node.id()));
}

static DomHandle dom_next_sibling(const DomHandle &node) {
  return DomHandle(dom_next_sibling_js(node.id()));
}

static void dom_set_text_content(const DomHandle &node, const char *text) {
  dom_set_text_content_js(node.id(), text);
}

static void dom_append_row(const DomHandle &document, const DomHandle &table,
                           const std::string &label, const std::string &value) {
  dom_append_row_js(document.id(), table.id(), label.c_str(), value.c_str());
}

static DomHandle build_tree(const DomHandle &document, int depth, int num_children) {
  DomHandle el = dom_create_element(document, "div");
  if (depth > 0) {
    for (int i = 0; i < num_children; i++) {
      dom_append_child(el, build_tree(document, depth - 1, num_children));
    }
  }
  return el;
}

static unsigned traverse(const DomHandle &node) {
  if (!node) {
    return 0;
  }
  return 1 + traverse(dom_first_child(node)) + traverse(dom_next_sibling(node));
}

static std::string fmt_measurement(double v, int decimals, const char *suffix) {
  char buf[64];
  snprintf(buf, sizeof buf, "%.*f%s", decimals, v, suffix);
  return buf;
}

extern "C" void EMSCRIPTEN_KEEPALIVE run(int depth, int num_children) {
  dom_init();

  DomHandle document = dom_get_document();
  DomHandle body = dom_get_body();

  perf_mark("em_js-start");

  perf_mark("build-start");
  DomHandle root = build_tree(document, depth, num_children);
  perf_mark("build-end");
  double build_ms = perf_measure("build", "build-start", "build-end");

  perf_mark("traverse-start");
  unsigned node_total = traverse(root);
  perf_mark("traverse-end");
  double traverse_ms = perf_measure("traverse", "traverse-start", "traverse-end");

  double us_per_node = (traverse_ms * 1000.0) / static_cast<double>(node_total);

  DomHandle heading = dom_create_element(document, "h2");
  dom_set_text_content(heading, "Emscripten (C++, EM_JS)");

  DomHandle table = dom_create_element(document, "table");
  dom_append_row(document, table, "nodes", std::to_string(node_total));
  dom_append_row(document, table, "build", fmt_measurement(build_ms, 2, " ms"));
  dom_append_row(document, table, "traverse (total)", fmt_measurement(traverse_ms, 2, " ms"));
  dom_append_row(document, table, "traverse (per node)", fmt_measurement(us_per_node, 3, " µs"));

  dom_append_child(body, heading);
  dom_append_child(body, table);

  perf_mark("em_js-end");
  perf_measure("em_js", "em_js-start", "em_js-end");
}
