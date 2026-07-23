#include "bindings/dom_traversal_cpp.h"

#include <cstdint>
#include <functional>
#include <optional>
#include <string_view>

#include "../../utils.h"

namespace dom = demos::dom_traversal::dom;

static dom::Element build_tree(const dom::Document &document, int depth,
                               int num_children) {
  dom::Element el = document.CreateElement("div");
  if (depth > 0) {
    for (int i = 0; i < num_children; i++) {
      dom::Element child = build_tree(document, depth - 1, num_children);
      el.AppendChild(std::cref(child));
    }
  }
  return el;
}

static uint32_t traverse(const dom::Element &node) {
  uint32_t count = 1;
  if (std::optional<dom::Element> first = node.GetFirstChild()) {
    count += traverse(*first);
  }
  if (std::optional<dom::Element> sibling = node.GetNextSibling()) {
    count += traverse(*sibling);
  }
  return count;
}

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

void exports::dom_traversal::Run(int32_t depth, int32_t num_children) {
  dom::Window window = dom::GetWindow();
  dom::Document document = window.GetDocument();

  std::optional<dom::HtmlElement> body = document.GetBody();
  if (!body) {
    return;
  }

  double build_start = dom::Now();
  dom::Element root = build_tree(document, depth, num_children);
  double build_ms = dom::Now() - build_start;

  double traverse_start = dom::Now();
  uint32_t node_total = traverse(root);
  double traverse_ms = dom::Now() - traverse_start;

  double us_per_node = (traverse_ms * 1000.0) / static_cast<double>(node_total);

  dom::Element heading = document.CreateElement("h2");
  heading.SetTextContent("Wasm component (C++)");

  dom::Element table = document.CreateElement("table");
  char buf[64];
  size_t n;

  n = fmt_uint(buf, 0, node_total);
  append_row(document, table, "nodes", std::string_view(buf, n));

  n = fmt_fixed(buf, 0, build_ms, 2);
  buf[n++] = ' ';
  buf[n++] = 'm';
  buf[n++] = 's';
  append_row(document, table, "build", std::string_view(buf, n));

  n = fmt_fixed(buf, 0, traverse_ms, 2);
  buf[n++] = ' ';
  buf[n++] = 'm';
  buf[n++] = 's';
  append_row(document, table, "traverse (total)", std::string_view(buf, n));

  n = fmt_fixed(buf, 0, us_per_node, 3);
  buf[n++] = ' ';
  buf[n++] = static_cast<char>(0xC2);
  buf[n++] = static_cast<char>(0xB5); // µ
  buf[n++] = 's';
  append_row(document, table, "traverse (per node)", std::string_view(buf, n));

  body->AppendChild(std::cref(heading));
  body->AppendChild(std::cref(table));
}
