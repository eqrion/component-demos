// attribute-churn, Emscripten variant (C++).
//
// Same workload as the component variant, but attribute writes cross the
// boundary through Emscripten's JS glue via emscripten::val. Mirrors
// rust/attribute-churn.
#include <emscripten/bind.h>
#include <emscripten/val.h>

#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

using emscripten::val;

static const char *ATTRS[] = {"data-x", "data-y", "class", "title"};

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

static double measure(const val &perf, const char *name, const char *start,
                      const char *end) {
  return perf.call<val>("measure", val(name), val(start), val(end))["duration"]
      .as<double>();
}

static void run(int elements, int iters) {
  val document = val::global("document");
  val body = document["body"];
  val perf = val::global("performance");

  perf.call<void>("mark", val("emscripten-start"));

  uint64_t total_writes = static_cast<uint64_t>(elements) * iters * 4;

  std::vector<val> els;
  els.reserve(elements);
  for (int i = 0; i < elements; i++) {
    els.push_back(document.call<val>("createElement", val("div")));
  }

  perf.call<void>("mark", val("run-start"));
  for (int i = 0; i < iters; i++) {
    for (val &el : els) {
      for (int j = 0; j < 4; j++) {
        el.call<void>("setAttribute", val(ATTRS[j]),
                      val(std::to_string(i) + "-" + std::to_string(j)));
      }
    }
  }
  perf.call<void>("mark", val("run-end"));
  double total_ms = measure(perf, "run", "run-start", "run-end");

  double us_per = total_ms * 1000.0 / static_cast<double>(total_writes);

  val heading = document.call<val>("createElement", val("h2"));
  heading.set("textContent", val(std::string("Emscripten (C++)")));

  val table = document.call<val>("createElement", val("table"));
  append_row(document, table, "num calls", std::to_string(total_writes));
  append_row(document, table, "total time", fmt(total_ms, 3, " ms"));
  append_row(document, table, "per setAttribute()", fmt(us_per, 3, " µs"));

  body.call<void>("appendChild", heading);
  body.call<void>("appendChild", table);

  perf.call<void>("mark", val("emscripten-end"));
  perf.call<val>("measure", val("emscripten"), val("emscripten-start"), val("emscripten-end"));
}

EMSCRIPTEN_BINDINGS(attribute_churn) { emscripten::function("run", &run); }
