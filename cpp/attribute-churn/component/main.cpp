#include "bindings/attribute_churn_cpp.h"

#include <cstdint>
#include <functional>
#include <string_view>
#include <vector>

#include "../../utils.h"

namespace dom = demos::attribute_churn::dom;

static const char *ATTRS[] = {"data-x", "data-y", "class", "title"};

static void append_row(const dom::Document &document, const dom::Element &table,
                       std::string_view label, std::string_view value) {
  dom::Element row = document.CreateElement("tr");
  dom::Element th = document.CreateElement("th");
  th.SetTextContent(label);
  row.AppendChild(std::cref(th));
  dom::Element td = document.CreateElement("td");
  td.SetTextContent(value);
  row.AppendChild(std::cref(td));
  table.AppendChild(std::cref(row));
}

void exports::attribute_churn::Run(uint32_t elements, uint32_t iters) {
  dom::Window window = dom::GetWindow();
  dom::Document document = window.GetDocument();
  dom::HtmlElement body = document.GetBody().value();
  dom::Performance perf = dom::GetPerformance();

  uint64_t total_writes = static_cast<uint64_t>(elements) * iters * 4;

  std::vector<dom::Element> els;
  els.reserve(elements);
  for (uint32_t i = 0; i < elements; i++) {
    els.push_back(document.CreateElement("div"));
  }

  perf.Mark("run-start");
  for (uint32_t i = 0; i < iters; i++) {
    for (const dom::Element &el : els) {
      for (uint32_t j = 0; j < 4; j++) {
        char v[24];
        size_t n = fmt_uint(v, 0, i);
        n = fmt_str(v, n, "-");
        n = fmt_uint(v, n, j);
        el.SetAttribute(ATTRS[j], std::string_view(v, n));
      }
    }
  }
  perf.Mark("run-end");
  double total_ms = perf.Measure("run", "run-start", "run-end").GetDuration();

  double us_per = total_ms * 1000.0 / static_cast<double>(total_writes);

  dom::Element heading = document.CreateElement("h2");
  heading.SetTextContent("Wasm component (C++)");

  dom::Element table = document.CreateElement("table");
  char buf[64];
  size_t n;

  n = fmt_uint(buf, 0, total_writes);
  append_row(document, table, "num calls", std::string_view(buf, n));

  n = fmt_str(buf, fmt_fixed(buf, 0, total_ms, 3), " ms");
  append_row(document, table, "total time", std::string_view(buf, n));

  n = fmt_str(buf, fmt_fixed(buf, 0, us_per, 3), " µs");
  append_row(document, table, "per setAttribute()", std::string_view(buf, n));

  body.AppendChild(std::cref(heading));
  body.AppendChild(std::cref(table));
}
