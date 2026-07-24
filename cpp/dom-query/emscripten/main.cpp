#include <emscripten/bind.h>
#include <emscripten/val.h>

#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

using emscripten::val;

static std::string fmt(double v, int decimals) {
  char buf[64];
  snprintf(buf, sizeof buf, "%.*f", decimals, v);
  return buf;
}

static double measure(const val &perf, const char *name, const char *start,
                      const char *end) {
  return perf.call<val>("measure", val(name), val(start), val(end))["duration"]
      .as<double>();
}

static void append_row(const val &document, const val &table,
                       const std::string &c0, const std::string &c1,
                       const std::string &c2, const std::string &c3) {
  val row = document.call<val>("createElement", val("tr"));
  for (const std::string &value : {c0, c1, c2, c3}) {
    val td = document.call<val>("createElement", val("td"));
    td.set("textContent", val(value));
    row.call<void>("appendChild", td);
  }
  table.call<void>("appendChild", row);
}

static void run(int num_elements, int iterations) {
  val document = val::global("document");
  val body = document["body"];
  val perf = val::global("performance");

  perf.call<void>("mark", val("emscripten-start"));

  val container = document.call<val>("createElement", val("div"));
  container.call<void>("setAttribute", val("style"), val("display: none"));
  std::vector<std::string> ids;
  ids.reserve(num_elements);
  for (int i = 0; i < num_elements; i++) {
    ids.push_back("item-" + std::to_string(i));
  }
  for (const std::string &id : ids) {
    val item = document.call<val>("createElement", val("div"));
    item.call<void>("setAttribute", val("id"), val(id));
    item.call<void>("setAttribute", val("class"), val("emscripten-item"));
    container.call<void>("appendChild", item);
  }
  body.call<void>("appendChild", container);

  double num_individual =
      static_cast<double>(num_elements) * static_cast<double>(iterations);

  perf.call<void>("mark", val("individual-start"));
  for (int i = 0; i < iterations; i++) {
    for (const std::string &id : ids) {
      document.call<val>("getElementById", val(id));
    }
  }
  perf.call<void>("mark", val("individual-end"));
  double individual_ms =
      measure(perf, "individual", "individual-start", "individual-end");

  perf.call<void>("mark", val("bulk-start"));
  for (int i = 0; i < iterations; i++) {
    document.call<val>("getElementsByClassName", val("emscripten-item"));
  }
  perf.call<void>("mark", val("bulk-end"));
  double bulk_ms = measure(perf, "bulk", "bulk-start", "bulk-end");

  double us_per_individual = individual_ms * 1000.0 / num_individual;

  val heading = document.call<val>("createElement", val("h2"));
  heading.set("textContent", val(std::string("Emscripten (C++)")));

  val table = document.call<val>("createElement", val("table"));
  val header = document.call<val>("createElement", val("tr"));
  for (const char *label :
       {"approach", "iterations", "total ms", "µs/element"}) {
    val th = document.call<val>("createElement", val("th"));
    th.set("textContent", val(std::string(label)));
    header.call<void>("appendChild", th);
  }
  table.call<void>("appendChild", header);

  std::string iters_str = std::to_string(iterations);
  append_row(document, table, "individual (getElementById)", iters_str,
             fmt(individual_ms, 3), fmt(us_per_individual, 3));
  append_row(document, table, "bulk (getElementsByClassName)", iters_str,
             fmt(bulk_ms, 3), "n/a");

  body.call<void>("appendChild", heading);
  body.call<void>("appendChild", table);

  perf.call<void>("mark", val("emscripten-end"));
  perf.call<val>("measure", val("emscripten"), val("emscripten-start"),
                 val("emscripten-end"));
}

EMSCRIPTEN_BINDINGS(dom_query) { emscripten::function("run", &run); }
