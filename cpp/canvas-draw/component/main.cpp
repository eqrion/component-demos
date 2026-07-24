#include "bindings/canvas_draw_cpp.h"

#include <cstdint>
#include <functional>
#include <string_view>

#include "../../utils.h"

namespace dom = demos::canvas_draw::dom;

static const double CANVAS_SIZE = 400.0;
static const double RECT_SIZE = 3.0;

// Simple xorshift prng
static double rand_next(uint32_t &state) {
  uint32_t x = state;
  x ^= x << 13;
  x ^= x >> 17;
  x ^= x << 5;
  state = x;
  return static_cast<double>(x) / (static_cast<double>(UINT32_MAX) + 1.0);
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

void exports::canvas_draw::Run(uint32_t rects) {
  dom::Window window = dom::GetWindow();
  dom::Document document = window.GetDocument();
  dom::HtmlElement body = document.GetBody().value();
  dom::Performance perf = dom::GetPerformance();

  perf.Mark("cpp-start");

  dom::Element canvas = document.CreateElement("canvas");
  canvas.SetAttribute("width", "400");
  canvas.SetAttribute("height", "400");
  dom::CanvasRenderingContext2d ctx = canvas.GetContext2d();
  ctx.SetFillStyle("darkorange");

  perf.Mark("draw-start");
  uint32_t state = static_cast<uint32_t>(perf.Now());
  for (uint32_t i = 0; i < rects; i++) {
    double x = rand_next(state) * (CANVAS_SIZE - RECT_SIZE);
    double y = rand_next(state) * (CANVAS_SIZE - RECT_SIZE);
    ctx.FillRect(x, y, RECT_SIZE, RECT_SIZE);
  }
  perf.Mark("draw-end");
  double ms = perf.Measure("draw", "draw-start", "draw-end").GetDuration();
  double us_per_call = ms * 1000.0 / static_cast<double>(rects);

  dom::Element heading = document.CreateElement("h2");
  heading.SetTextContent("Wasm component (C++)");

  dom::Element table = document.CreateElement("table");
  char buf[64];
  size_t n;

  n = fmt_uint(buf, 0, rects);
  append_row(document, table, "rects", std::string_view(buf, n));

  n = fmt_str(buf, fmt_fixed(buf, 0, ms, 3), " ms");
  append_row(document, table, "total", std::string_view(buf, n));

  n = fmt_str(buf, fmt_fixed(buf, 0, us_per_call, 3), " µs");
  append_row(document, table, "per fill_rect()", std::string_view(buf, n));

  body.AppendChild(std::cref(heading));
  body.AppendChild(std::cref(canvas));
  body.AppendChild(std::cref(table));

  perf.Mark("cpp-end");
  perf.Measure("cpp", "cpp-start", "cpp-end");
}
