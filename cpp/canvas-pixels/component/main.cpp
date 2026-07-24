#include "bindings/canvas_pixels_cpp.h"

#include <cstdint>
#include <functional>
#include <span>
#include <string_view>

#include "../../utils.h"

namespace dom = demos::canvas_pixels::dom;

static const uint64_t MAX_REPS = 1 << 20;

struct Timing {
  uint64_t reps;
  double ms;
};

// Autoranging timer, matching rust/canvas-pixels and string-marshalling: double
// reps until at least `min_ms` has elapsed, so both directions get a
// trustworthy measurement regardless of canvas size.
template <typename F>
static Timing measure(const dom::Performance &perf, uint32_t min_ms, F run) {
  uint64_t reps = 1;
  for (;;) {
    perf.Mark("measure-start");
    run(reps);
    perf.Mark("measure-end");
    double elapsed =
        perf.Measure("measure", "measure-start", "measure-end").GetDuration();
    if (elapsed >= static_cast<double>(min_ms) || reps >= MAX_REPS) {
      return {reps, elapsed};
    }
    reps *= 2;
  }
}

static void checker(const dom::CanvasRenderingContext2d &ctx, uint32_t size,
                    uint32_t checker_size, std::string_view color1,
                    std::string_view color2) {
  ctx.SetFillStyle(color1);
  ctx.FillRect(0.0, 0.0, size, size);
  ctx.SetFillStyle(color2);
  for (uint32_t x = 0; x < size / checker_size; x++) {
    for (uint32_t y = 0; y < size / checker_size; y++) {
      if ((x + y) % 2 == 0) {
        ctx.FillRect(x * checker_size, y * checker_size, checker_size,
                     checker_size);
      }
    }
  }
}

static void append_row(const dom::Document &document, const dom::Element &table,
                       std::string_view cell_tag, std::string_view c0,
                       std::string_view c1, std::string_view c2,
                       std::string_view c3) {
  dom::Element row = document.CreateElement("tr");
  for (std::string_view value : {c0, c1, c2, c3}) {
    dom::Element cell = document.CreateElement(cell_tag);
    cell.SetTextContent(value);
    row.AppendChild(std::cref(cell));
  }
  table.AppendChild(std::cref(row));
}

static dom::Element make_canvas(const dom::Document &document, uint32_t size) {
  dom::Element canvas = document.CreateElement("canvas");
  char buf[16];
  size_t n = fmt_uint(buf, 0, size);
  std::string_view size_str(buf, n);
  canvas.SetAttribute("width", size_str);
  canvas.SetAttribute("height", size_str);
  return canvas;
}

void exports::canvas_pixels::Run(uint32_t size, uint32_t min_ms) {
  dom::Window window = dom::GetWindow();
  dom::Document document = window.GetDocument();
  dom::HtmlElement body = document.GetBody().value();
  dom::Performance perf = dom::GetPerformance();

  perf.Mark("cpp-start");

  dom::Element heading = document.CreateElement("h2");
  heading.SetTextContent("Wasm component (C++)");
  body.AppendChild(std::cref(heading));

  dom::Element wrapper = document.CreateElement("div");
  wrapper.SetAttribute("style", "display: flex; gap: 1rem; margin-bottom: 1rem");
  body.AppendChild(std::cref(wrapper));

  dom::Element canvas1 = make_canvas(document, size);
  dom::CanvasRenderingContext2d ctx1 = canvas1.GetContext2d();
  checker(ctx1, size, 32, "steelblue", "sandybrown");
  wrapper.AppendChild(std::cref(canvas1));

  dom::Element canvas2 = make_canvas(document, size);
  dom::CanvasRenderingContext2d ctx2 = canvas2.GetContext2d();
  checker(ctx2, size, 16, "mediumturquoise", "indianred");
  wrapper.AppendChild(std::cref(canvas2));

  const uint32_t MARGIN = 40;
  double region = static_cast<double>(size - MARGIN * 2);
  wit::vector<uint8_t> pixels;

  Timing get = measure(perf, min_ms, [&](uint64_t reps) {
    for (uint64_t i = 0; i < reps; i++) {
      pixels = ctx1.GetImageDataArrayBuffer(MARGIN, MARGIN, region, region);
    }
  });
  size_t byte_len = pixels.size();

  Timing put = measure(perf, min_ms, [&](uint64_t reps) {
    std::span<const uint8_t> data(pixels.data(), pixels.size());
    for (uint64_t i = 0; i < reps; i++) {
      ctx2.PutImageDataArrayBuffer(data, MARGIN, MARGIN, region, region);
    }
  });

  double get_us = get.ms * 1000.0 / static_cast<double>(get.reps);
  double put_us = put.ms * 1000.0 / static_cast<double>(put.reps);
  double get_mb_s =
      (byte_len * static_cast<double>(get.reps) / 1'000'000.0) /
      (get.ms / 1000.0);
  double put_mb_s =
      (byte_len * static_cast<double>(put.reps) / 1'000'000.0) /
      (put.ms / 1000.0);

  dom::Element table = document.CreateElement("table");
  append_row(document, table, "th", "direction", "bytes/call", "µs/call",
             "MB/s");

  char lenbuf[16], usbuf[16], mbbuf[16];
  size_t nl = fmt_uint(lenbuf, 0, byte_len);
  size_t nu = fmt_fixed(usbuf, 0, get_us, 1);
  size_t nm = fmt_fixed(mbbuf, 0, get_mb_s, 1);
  append_row(document, table, "td", "getImageData()",
             std::string_view(lenbuf, nl), std::string_view(usbuf, nu),
             std::string_view(mbbuf, nm));

  nu = fmt_fixed(usbuf, 0, put_us, 1);
  nm = fmt_fixed(mbbuf, 0, put_mb_s, 1);
  append_row(document, table, "td", "putImageData()",
             std::string_view(lenbuf, nl), std::string_view(usbuf, nu),
             std::string_view(mbbuf, nm));

  body.AppendChild(std::cref(table));

  perf.Mark("cpp-end");
  perf.Measure("cpp", "cpp-start", "cpp-end");
}
