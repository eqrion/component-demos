#include <emscripten/bind.h>
#include <emscripten/emscripten.h> // emscripten_get_now
#include <emscripten/val.h>

#include <cstdio>
#include <string>

using emscripten::val;

static val build_tree(const val &document, int depth, int num_children) {
  val el = document.call<val>("createElement", val("div"));
  if (depth > 0) {
    for (int i = 0; i < num_children; i++) {
      el.call<void>("appendChild",
                    build_tree(document, depth - 1, num_children));
    }
  }
  return el;
}

static unsigned traverse(val node) {
  if (node.isNull() || node.isUndefined()) {
    return 0;
  }
  return 1 + traverse(node["firstChild"]) + traverse(node["nextSibling"]);
}

static std::string fmt(double v, int decimals, const char *suffix) {
  char buf[64];
  snprintf(buf, sizeof buf, "%.*f%s", decimals, v, suffix);
  return buf;
}

static void append_row(const val &document, const val &table,
                       const std::string &label, const std::string &value) {
  val row = document.call<val>("createElement", val("tr"));
  val th = document.call<val>("createElement", val("th"));
  th.set("textContent", val(label));
  row.call<void>("appendChild", th);
  val td = document.call<val>("createElement", val("td"));
  td.set("textContent", val(value));
  row.call<void>("appendChild", td);
  table.call<void>("appendChild", row);
}

static void run(int depth, int num_children) {
  val document = val::global("document");
  val body = document["body"];

  double build_start = emscripten_get_now();
  val root = build_tree(document, depth, num_children);
  double build_ms = emscripten_get_now() - build_start;

  double traverse_start = emscripten_get_now();
  unsigned node_total = traverse(root);
  double traverse_ms = emscripten_get_now() - traverse_start;

  double us_per_node = (traverse_ms * 1000.0) / static_cast<double>(node_total);

  val heading = document.call<val>("createElement", val("h2"));
  heading.set("textContent", val(std::string("Emscripten (C++)")));

  val table = document.call<val>("createElement", val("table"));
  append_row(document, table, "nodes", std::to_string(node_total));
  append_row(document, table, "build", fmt(build_ms, 2, " ms"));
  append_row(document, table, "traverse (total)", fmt(traverse_ms, 2, " ms"));
  append_row(document, table, "traverse (per node)",
             fmt(us_per_node, 3, " µs"));

  body.call<void>("appendChild", heading);
  body.call<void>("appendChild", table);
}

EMSCRIPTEN_BINDINGS(dom_traversal) { emscripten::function("run", &run); }
