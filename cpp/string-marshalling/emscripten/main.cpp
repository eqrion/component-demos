#include <emscripten/bind.h>
#include <emscripten/val.h>

#include <cstdint>
#include <cstdio>
#include <string>

using emscripten::val;

static constexpr size_t SIZES[] = {8, 128, 1024, 16384, 262144};
static constexpr uint64_t MAX_REPS = uint64_t(1) << 24;

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
                       const std::string &c2, const std::string &c3,
                       const std::string &c4) {
  val row = document.call<val>("createElement", val("tr"));
  for (const std::string &value : {c0, c1, c2, c3, c4}) {
    val td = document.call<val>("createElement", val("td"));
    td.set("textContent", val(value));
    row.call<void>("appendChild", td);
  }
  table.call<void>("appendChild", row);
}

// Autoranging timer: doubles the rep count until at least `min_ms` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
template <typename Fn>
static uint64_t autorange(const val &perf, double min_ms, Fn &&run, double *out_ms) {
  uint64_t reps = 100;
  for (;;) {
    perf.call<void>("mark", val("measure-start"));
    run(reps);
    perf.call<void>("mark", val("measure-end"));
    double elapsed = measure(perf, "measure", "measure-start", "measure-end");
    if (elapsed >= min_ms || reps >= MAX_REPS) {
      *out_ms = elapsed;
      return reps;
    }
    reps *= 2;
  }
}

static void run(uint32_t min_ms_raw) {
  val document = val::global("document");
  val body = document["body"];
  val perf = val::global("performance");

  perf.call<void>("mark", val("emscripten-start"));

  val el = document.call<val>("createElement", val("div"));

  val heading = document.call<val>("createElement", val("h2"));
  heading.set("textContent", val(std::string("Emscripten (C++, embind)")));

  val table = document.call<val>("createElement", val("table"));
  append_row(document, table, "size", "set µs/call", "set MB/s",
             "get µs/call", "get MB/s");

  double min_ms = min_ms_raw < 1 ? 1.0 : static_cast<double>(min_ms_raw);

  for (size_t size : SIZES) {
    std::string value(size, 'x');

    double set_ms;
    uint64_t set_reps = autorange(
        perf, min_ms,
        [&](uint64_t reps) {
          for (uint64_t i = 0; i < reps; i++) {
            el.set("textContent", val(value));
          }
        },
        &set_ms);

    double get_ms;
    uint64_t get_reps = autorange(
        perf, min_ms,
        [&](uint64_t reps) {
          for (uint64_t i = 0; i < reps; i++) {
            el["textContent"].as<std::string>();
          }
        },
        &get_ms);

    double set_us_per_call = set_ms * 1000.0 / static_cast<double>(set_reps);
    double get_us_per_call = get_ms * 1000.0 / static_cast<double>(get_reps);
    double set_mb_per_s =
        (static_cast<double>(size) * static_cast<double>(set_reps)) /
        (set_ms * 1000.0);
    double get_mb_per_s =
        (static_cast<double>(size) * static_cast<double>(get_reps)) /
        (get_ms * 1000.0);

    append_row(document, table, std::to_string(size) + " B",
               fmt(set_us_per_call, 3), fmt(set_mb_per_s, 1),
               fmt(get_us_per_call, 3), fmt(get_mb_per_s, 1));
  }

  body.call<void>("appendChild", heading);
  body.call<void>("appendChild", table);

  perf.call<void>("mark", val("emscripten-end"));
  perf.call<val>("measure", val("emscripten"), val("emscripten-start"),
                 val("emscripten-end"));
}

EMSCRIPTEN_BINDINGS(string_marshalling) { emscripten::function("run", &run); }
