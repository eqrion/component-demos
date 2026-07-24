#include "bindings/dom_query_cpp.h"

#include <cstdint>
#include <functional>
#include <string>
#include <string_view>
#include <vector>

#include "../../utils.h"

namespace dom = demos::dom_query::dom;

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

void exports::dom_query::Run(uint32_t num_elements, uint32_t iterations) {
  dom::Window window = dom::GetWindow();
  dom::Document document = window.GetDocument();
  dom::HtmlElement body = document.GetBody().value();
  dom::Performance perf = dom::GetPerformance();

  perf.Mark("cpp-start");

  // Insert N elements to query for, hidden so they don't affect layout.
  dom::Element container = document.CreateElement("div");
  container.SetAttribute("style", "display: none");
  std::vector<std::string> ids;
  ids.reserve(num_elements);
  for (uint32_t i = 0; i < num_elements; i++) {
    char buf[24];
    size_t n = fmt_str(buf, 0, "item-");
    n = fmt_uint(buf, n, i);
    ids.emplace_back(buf, n);
  }
  for (const std::string &id : ids) {
    dom::Element item = document.CreateElement("div");
    item.SetAttribute("id", id);
    item.SetAttribute("class", "cpp-item");
    container.AppendChild(std::cref(item));
  }
  body.AppendChild(std::cref(container));

  double num_individual =
      static_cast<double>(num_elements) * static_cast<double>(iterations);

  perf.Mark("individual-start");
  for (uint32_t i = 0; i < iterations; i++) {
    for (const std::string &id : ids) {
      document.GetElementById(id);
    }
  }
  perf.Mark("individual-end");
  double individual_ms =
      perf.Measure("individual", "individual-start", "individual-end")
          .GetDuration();

  perf.Mark("bulk-start");
  for (uint32_t i = 0; i < iterations; i++) {
    document.GetElementsByClassNameList("cpp-item");
  }
  perf.Mark("bulk-end");
  double bulk_ms = perf.Measure("bulk", "bulk-start", "bulk-end").GetDuration();

  double us_per_individual = individual_ms * 1000.0 / num_individual;

  dom::Element heading = document.CreateElement("h2");
  heading.SetTextContent("Wasm component (C++)");

  dom::Element table = document.CreateElement("table");
  dom::Element header = document.CreateElement("tr");
  for (std::string_view label :
       {"approach", "iterations", "total ms", "µs/element"}) {
    dom::Element th = document.CreateElement("th");
    th.SetTextContent(label);
    header.AppendChild(std::cref(th));
  }
  table.AppendChild(std::cref(header));

  char iterbuf[16], msbuf[32], usbuf[32];
  size_t ni = fmt_uint(iterbuf, 0, iterations);
  size_t nm = fmt_fixed(msbuf, 0, individual_ms, 3);
  size_t nu = fmt_fixed(usbuf, 0, us_per_individual, 3);
  append_row(document, table, "individual (getElementById)",
             std::string_view(iterbuf, ni), std::string_view(msbuf, nm),
             std::string_view(usbuf, nu));

  size_t nb = fmt_fixed(msbuf, 0, bulk_ms, 3);
  append_row(document, table, "bulk (getElementsByClassName)",
             std::string_view(iterbuf, ni), std::string_view(msbuf, nb), "n/a");

  body.AppendChild(std::cref(heading));
  body.AppendChild(std::cref(table));

  perf.Mark("cpp-end");
  perf.Measure("cpp", "cpp-start", "cpp-end");
}
