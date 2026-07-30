#include "bindings/table_update_cpp.h"

#include <cstdint>
#include <functional>
#include <string_view>
#include <utility>
#include <vector>

#include "../../utils.h"

namespace dom = demos::table_update::dom;

static void append_row(const dom::Document &document, const dom::Element &table,
                       std::string_view c0, std::string_view c1,
                       std::string_view c2, std::string_view c3) {
  dom::Element row = document.CreateElement("tr");
  for (std::string_view value : {c0, c1, c2, c3}) {
    dom::Element td = document.CreateElement("td");
    td.SetTextContent(value);
    row.AppendChild(std::cref(td));
  }
  table.AppendChild(std::cref(row));
}

void exports::table_update::Run(uint32_t row_count) {
  dom::Window window = dom::GetWindow();
  dom::Document document = window.GetDocument();
  dom::HtmlElement body = document.GetBody().value();
  dom::Performance perf = dom::GetPerformance();

  perf.Mark("cpp-start");

  dom::Element heading = document.CreateElement("h2");
  heading.SetTextContent("Wasm component (C++)");
  body.AppendChild(std::cref(heading));

  dom::Element toggle = document.CreateElement("details");
  toggle.SetAttribute("style", "margin-bottom: 1rem");
  dom::Element toggle_title = document.CreateElement("summary");
  toggle_title.SetTextContent("Result");
  toggle.AppendChild(std::cref(toggle_title));
  body.AppendChild(std::cref(toggle));

  dom::Element table_el = document.CreateElement("table");
  dom::Element tbody = document.CreateElement("tbody");
  table_el.AppendChild(std::cref(tbody));
  toggle.AppendChild(std::cref(table_el));

  perf.Mark("create-start");
  std::vector<std::pair<dom::Element, dom::Element>> rows;
  rows.reserve(row_count);
  for (uint32_t i = 1; i <= row_count; i++) {
    dom::Element tr = document.CreateElement("tr");
    dom::Element td = document.CreateElement("td");
    char buf[24];
    size_t n = fmt_str(buf, 0, "row ");
    n = fmt_uint(buf, n, i);
    td.SetTextContent(std::string_view(buf, n));
    tr.AppendChild(std::cref(td));
    tbody.AppendChild(std::cref(tr));
    rows.emplace_back(std::move(tr), std::move(td));
  }
  perf.Mark("create-end");
  double create_ms =
      perf.Measure("create", "create-start", "create-end").GetDuration();

  perf.Mark("update-start");
  uint32_t updated = 0;
  for (uint32_t idx = 0; idx < rows.size(); idx++) {
    uint32_t i = idx + 1;
    if (i % 8 == 0) {
      const auto &[tr, td] = rows[idx];
      char buf[32];
      size_t n = fmt_str(buf, 0, "row ");
      n = fmt_uint(buf, n, i);
      n = fmt_str(buf, n, " (selected)");
      td.SetTextContent(std::string_view(buf, n));
      tr.SetAttribute("data-selected", "data-selected");
      updated++;
    }
  }
  perf.Mark("update-end");
  double update_ms =
      perf.Measure("update", "update-start", "update-end").GetDuration();

  perf.Mark("clear-start");
  uint32_t cleared = 0;
  for (const auto &[tr, td] : rows) {
    if (!tr.GetAttribute("data-selected").has_value()) {
      tr.Remove();
      cleared++;
    }
  }
  perf.Mark("clear-end");
  double clear_ms =
      perf.Measure("clear", "clear-start", "clear-end").GetDuration();

  dom::Element report = document.CreateElement("table");
  dom::Element header = document.CreateElement("tr");
  for (std::string_view label :
       {"phase", "total ms", "µs/row", "µs/row touched (est.)"}) {
    dom::Element th = document.CreateElement("th");
    th.SetTextContent(label);
    header.AppendChild(std::cref(th));
  }
  report.AppendChild(std::cref(header));

  char msbuf[32], perbuf[32], touchedbuf[32];
  double rows_d = static_cast<double>(row_count);

  size_t nm = fmt_fixed(msbuf, 0, create_ms, 3);
  size_t np = fmt_fixed(perbuf, 0, create_ms * 1000.0 / rows_d, 3);
  append_row(document, report, "create", std::string_view(msbuf, nm),
             std::string_view(perbuf, np), "-");

  nm = fmt_fixed(msbuf, 0, update_ms, 3);
  np = fmt_fixed(perbuf, 0, update_ms * 1000.0 / rows_d, 3);
  size_t nt =
      fmt_fixed(touchedbuf, 0, update_ms * 1000.0 / static_cast<double>(updated),
                3);
  append_row(document, report, "update (selected)", std::string_view(msbuf, nm),
             std::string_view(perbuf, np), std::string_view(touchedbuf, nt));

  nm = fmt_fixed(msbuf, 0, clear_ms, 3);
  np = fmt_fixed(perbuf, 0, clear_ms * 1000.0 / rows_d, 3);
  nt = fmt_fixed(touchedbuf, 0, clear_ms * 1000.0 / static_cast<double>(cleared),
                 3);
  append_row(document, report, "clear (unselected)",
             std::string_view(msbuf, nm), std::string_view(perbuf, np),
             std::string_view(touchedbuf, nt));

  body.AppendChild(std::cref(report));

  perf.Mark("cpp-end");
  perf.Measure("cpp", "cpp-start", "cpp-end");
}
