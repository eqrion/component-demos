#include <emscripten/bind.h>
#include <emscripten/val.h>

#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

using emscripten::val;

static const uint64_t MAX_REPS = 1 << 20;

struct Timing {
  uint64_t reps;
  double ms;
};

static std::string fmt(double v, int decimals) {
  char buf[64];
  snprintf(buf, sizeof buf, "%.*f", decimals, v);
  return buf;
}

static double perf_measure(const val &perf, const char *name, const char *start,
                           const char *end) {
  return perf.call<val>("measure", val(name), val(start), val(end))["duration"]
      .as<double>();
}

template <typename F>
static Timing measure(const val &perf, uint32_t min_ms, F run) {
  uint64_t reps = 1;
  for (;;) {
    perf.call<void>("mark", val("measure-start"));
    run(reps);
    perf.call<void>("mark", val("measure-end"));
    double elapsed =
        perf_measure(perf, "measure", "measure-start", "measure-end");
    if (elapsed >= static_cast<double>(min_ms) || reps >= MAX_REPS) {
      return {reps, elapsed};
    }
    reps *= 2;
  }
}

static void checker(val ctx, uint32_t size, uint32_t checker_size,
                    const char *color1, const char *color2) {
  ctx.set("fillStyle", val(std::string(color1)));
  ctx.call<void>("fillRect", val(0), val(0), val(size), val(size));
  ctx.set("fillStyle", val(std::string(color2)));
  for (uint32_t x = 0; x < size / checker_size; x++) {
    for (uint32_t y = 0; y < size / checker_size; y++) {
      if ((x + y) % 2 == 0) {
        ctx.call<void>("fillRect", val(x * checker_size), val(y * checker_size),
                       val(checker_size), val(checker_size));
      }
    }
  }
}

static void append_row(const val &document, const val &table,
                       const char *cell_tag, const std::string &c0,
                       const std::string &c1, const std::string &c2,
                       const std::string &c3) {
  val row = document.call<val>("createElement", val("tr"));
  for (const std::string &value : {c0, c1, c2, c3}) {
    val cell = document.call<val>("createElement", val(std::string(cell_tag)));
    cell.set("textContent", val(value));
    row.call<void>("appendChild", cell);
  }
  table.call<void>("appendChild", row);
}

static val make_canvas(const val &document, uint32_t size) {
  val canvas = document.call<val>("createElement", val("canvas"));
  canvas.set("width", val(size));
  canvas.set("height", val(size));
  return canvas;
}

static void run(uint32_t size, uint32_t min_ms) {
  val document = val::global("document");
  val body = document["body"];
  val perf = val::global("performance");

  perf.call<void>("mark", val("emscripten-start"));

  val heading = document.call<val>("createElement", val("h2"));
  heading.set("textContent", val(std::string("Emscripten (C++)")));
  body.call<void>("appendChild", heading);

  val wrapper = document.call<val>("createElement", val("div"));
  wrapper.call<void>("setAttribute", val("style"),
                     val("display: flex; gap: 1rem; margin-bottom: 1rem"));
  body.call<void>("appendChild", wrapper);

  val canvas1 = make_canvas(document, size);
  val ctx1 = canvas1.call<val>("getContext", val("2d"));
  checker(ctx1, size, 32, "steelblue", "sandybrown");
  wrapper.call<void>("appendChild", canvas1);

  val canvas2 = make_canvas(document, size);
  val ctx2 = canvas2.call<val>("getContext", val("2d"));
  checker(ctx2, size, 16, "mediumturquoise", "indianred");
  wrapper.call<void>("appendChild", canvas2);

  const uint32_t MARGIN = 40;
  int region = static_cast<int>(size - MARGIN * 2);
  std::vector<uint8_t> pixels;

  Timing get = measure(perf, min_ms, [&](uint64_t reps) {
    for (uint64_t i = 0; i < reps; i++) {
      val image_data = ctx1.call<val>("getImageData", val(MARGIN), val(MARGIN),
                                      val(region), val(region));
      pixels =
          emscripten::convertJSArrayToNumberVector<uint8_t>(image_data["data"]);
    }
  });
  size_t byte_len = pixels.size();

  val Uint8ClampedArray = val::global("Uint8ClampedArray");
  val ImageData = val::global("ImageData");
  Timing put = measure(perf, min_ms, [&](uint64_t reps) {
    for (uint64_t i = 0; i < reps; i++) {
      val view(emscripten::typed_memory_view(pixels.size(), pixels.data()));
      val clamped = Uint8ClampedArray.new_(view);
      val image_data = ImageData.new_(clamped, val(region), val(region));
      ctx2.call<void>("putImageData", image_data, val(MARGIN), val(MARGIN));
    }
  });

  double get_us = get.ms * 1000.0 / static_cast<double>(get.reps);
  double put_us = put.ms * 1000.0 / static_cast<double>(put.reps);
  double get_mb_s = (byte_len * static_cast<double>(get.reps) / 1'000'000.0) /
                    (get.ms / 1000.0);
  double put_mb_s = (byte_len * static_cast<double>(put.reps) / 1'000'000.0) /
                    (put.ms / 1000.0);

  val table = document.call<val>("createElement", val("table"));
  append_row(document, table, "th", "direction", "bytes/call", "µs/call",
             "MB/s");
  std::string len_str = std::to_string(byte_len);
  append_row(document, table, "td", "getImageData()", len_str, fmt(get_us, 1),
             fmt(get_mb_s, 1));
  append_row(document, table, "td", "putImageData()", len_str, fmt(put_us, 1),
             fmt(put_mb_s, 1));

  body.call<void>("appendChild", table);

  perf.call<void>("mark", val("emscripten-end"));
  perf.call<val>("measure", val("emscripten"), val("emscripten-start"),
                 val("emscripten-end"));
}

EMSCRIPTEN_BINDINGS(canvas_pixels) { emscripten::function("run", &run); }
