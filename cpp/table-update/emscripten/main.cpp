#include <emscripten/bind.h>
#include <emscripten/val.h>

#include <cstdint>
#include <cstdio>
#include <string>
#include <utility>
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

static void run(uint32_t row_count) {
  val document = val::global("document");
  val body = document["body"];
  val perf = val::global("performance");

  perf.call<void>("mark", val("emscripten-start"));

  val heading = document.call<val>("createElement", val("h2"));
  heading.set("textContent", val(std::string("Emscripten (C++, embind)")));
  body.call<void>("appendChild", heading);

  val toggle = document.call<val>("createElement", val("details"));
  toggle.call<void>("setAttribute", val("style"), val("margin-bottom: 1rem"));
  val toggle_title = document.call<val>("createElement", val("summary"));
  toggle_title.set("textContent", val(std::string("Result")));
  toggle.call<void>("appendChild", toggle_title);
  body.call<void>("appendChild", toggle);

  val table_el = document.call<val>("createElement", val("table"));
  val tbody = document.call<val>("createElement", val("tbody"));
  table_el.call<void>("appendChild", tbody);
  toggle.call<void>("appendChild", table_el);

  perf.call<void>("mark", val("create-start"));
  std::vector<std::pair<val, val>> rows;
  rows.reserve(row_count);
  for (uint32_t i = 1; i <= row_count; i++) {
    val tr = document.call<val>("createElement", val("tr"));
    val td = document.call<val>("createElement", val("td"));
    td.set("textContent", val("row " + std::to_string(i)));
    tr.call<void>("appendChild", td);
    tbody.call<void>("appendChild", tr);
    rows.emplace_back(std::move(tr), std::move(td));
  }
  perf.call<void>("mark", val("create-end"));
  double create_ms = measure(perf, "create", "create-start", "create-end");

  perf.call<void>("mark", val("update-start"));
  uint32_t updated = 0;
  for (uint32_t idx = 0; idx < rows.size(); idx++) {
    uint32_t i = idx + 1;
    if (i % 8 == 0) {
      auto &[tr, td] = rows[idx];
      td.set("textContent", val("row " + std::to_string(i) + " (selected)"));
      tr.call<void>("setAttribute", val("data-selected"), val("data-selected"));
      updated++;
    }
  }
  perf.call<void>("mark", val("update-end"));
  double update_ms = measure(perf, "update", "update-start", "update-end");

  perf.call<void>("mark", val("clear-start"));
  uint32_t cleared = 0;
  for (auto &[tr, td] : rows) {
    if (tr.call<val>("getAttribute", val("data-selected")).isNull()) {
      tr.call<void>("remove");
      cleared++;
    }
  }
  perf.call<void>("mark", val("clear-end"));
  double clear_ms = measure(perf, "clear", "clear-start", "clear-end");

  toggle.call<void>("remove");

  val report = document.call<val>("createElement", val("table"));
  val header = document.call<val>("createElement", val("tr"));
  for (const char *label :
       {"phase", "total ms", "µs/row", "µs/row touched (est.)"}) {
    val th = document.call<val>("createElement", val("th"));
    th.set("textContent", val(std::string(label)));
    header.call<void>("appendChild", th);
  }
  report.call<void>("appendChild", header);

  double rows_d = static_cast<double>(row_count);
  append_row(document, report, "create", fmt(create_ms, 3),
             fmt(create_ms * 1000.0 / rows_d, 3), "-");
  append_row(document, report, "update (selected)", fmt(update_ms, 3),
             fmt(update_ms * 1000.0 / rows_d, 3),
             fmt(update_ms * 1000.0 / static_cast<double>(updated), 3));
  append_row(document, report, "clear (unselected)", fmt(clear_ms, 3),
             fmt(clear_ms * 1000.0 / rows_d, 3),
             fmt(clear_ms * 1000.0 / static_cast<double>(cleared), 3));

  body.call<void>("appendChild", report);

  perf.call<void>("mark", val("emscripten-end"));
  perf.call<val>("measure", val("emscripten"), val("emscripten-start"),
                 val("emscripten-end"));
}

EMSCRIPTEN_BINDINGS(table_update) { emscripten::function("run", &run); }
