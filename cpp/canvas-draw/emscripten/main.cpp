#include <emscripten/bind.h>
#include <emscripten/val.h>

#include <cstdint>
#include <cstdio>
#include <string>

using emscripten::val;

static const double CANVAS_SIZE = 400.0;
static const double RECT_SIZE = 3.0;

static double rand_next(uint32_t &state) {
  uint32_t x = state;
  x ^= x << 13;
  x ^= x >> 17;
  x ^= x << 5;
  state = x;
  return static_cast<double>(x) / (static_cast<double>(UINT32_MAX) + 1.0);
}

static std::string fmt(double v, int decimals, const char *suffix) {
  char buf[64];
  snprintf(buf, sizeof buf, "%.*f%s", decimals, v, suffix);
  return buf;
}

static double measure(const val &perf, const char *name, const char *start,
                      const char *end) {
  return perf.call<val>("measure", val(name), val(start), val(end))["duration"]
      .as<double>();
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

static void run(uint32_t rects) {
  val document = val::global("document");
  val body = document["body"];
  val perf = val::global("performance");

  perf.call<void>("mark", val("emscripten-start"));

  val canvas = document.call<val>("createElement", val("canvas"));
  canvas.set("width", val(400));
  canvas.set("height", val(400));
  val ctx = canvas.call<val>("getContext", val("2d"));
  ctx.set("fillStyle", val(std::string("seagreen")));

  perf.call<void>("mark", val("draw-start"));
  uint32_t state = static_cast<uint32_t>(perf.call<double>("now"));
  for (uint32_t i = 0; i < rects; i++) {
    double x = rand_next(state) * (CANVAS_SIZE - RECT_SIZE);
    double y = rand_next(state) * (CANVAS_SIZE - RECT_SIZE);
    ctx.call<void>("fillRect", val(x), val(y), val(RECT_SIZE), val(RECT_SIZE));
  }
  perf.call<void>("mark", val("draw-end"));
  double ms = measure(perf, "draw", "draw-start", "draw-end");
  double us_per_call = ms * 1000.0 / static_cast<double>(rects);

  val heading = document.call<val>("createElement", val("h2"));
  heading.set("textContent", val(std::string("Emscripten (C++)")));

  val table = document.call<val>("createElement", val("table"));
  append_row(document, table, "rects", std::to_string(rects));
  append_row(document, table, "total", fmt(ms, 3, " ms"));
  append_row(document, table, "per fill_rect()", fmt(us_per_call, 3, " µs"));

  body.call<void>("appendChild", heading);
  body.call<void>("appendChild", canvas);
  body.call<void>("appendChild", table);

  perf.call<void>("mark", val("emscripten-end"));
  perf.call<val>("measure", val("emscripten"), val("emscripten-start"),
                 val("emscripten-end"));
}

EMSCRIPTEN_BINDINGS(canvas_draw) { emscripten::function("run", &run); }
