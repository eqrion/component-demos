#include "bindings/string_marshalling_cpp.h"

#include <cstddef>
#include <cstdint>
#include <functional>
#include <string_view>
#include <vector>

#include "../../utils.h"

namespace dom = demos::string_marshalling::dom;

static constexpr size_t SIZES[] = {8, 128, 1024, 16384, 262144};
static constexpr uint64_t MAX_REPS = uint64_t(1) << 24;

static void append_row(const dom::Document &document, const dom::Element &table,
                       std::string_view c0, std::string_view c1,
                       std::string_view c2, std::string_view c3,
                       std::string_view c4) {
  dom::Element row = document.CreateElement("tr");
  for (std::string_view value : {c0, c1, c2, c3, c4}) {
    dom::Element td = document.CreateElement("td");
    td.SetTextContent(value);
    row.AppendChild(std::cref(td));
  }
  table.AppendChild(std::cref(row));
}

// Autoranging timer: doubles the rep count until at least `min_ms` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
template <typename Fn>
static uint64_t autorange(const dom::Performance &perf, double min_ms, Fn &&run,
                          double *out_ms) {
  uint64_t reps = 100;
  for (;;) {
    perf.Mark("measure-start");
    run(reps);
    perf.Mark("measure-end");
    double elapsed =
        perf.Measure("measure", "measure-start", "measure-end").GetDuration();
    if (elapsed >= min_ms || reps >= MAX_REPS) {
      *out_ms = elapsed;
      return reps;
    }
    reps *= 2;
  }
}

void exports::string_marshalling::Run(uint32_t min_ms_raw) {
  dom::Window window = dom::GetWindow();
  dom::Document document = window.GetDocument();
  dom::HtmlElement body = document.GetBody().value();
  dom::Performance perf = dom::GetPerformance();

  perf.Mark("cpp-start");

  dom::Element el = document.CreateElement("div");

  dom::Element heading = document.CreateElement("h2");
  heading.SetTextContent("Wasm component (C++)");

  dom::Element table = document.CreateElement("table");
  append_row(document, table, "size", "set µs/call", "set MB/s",
            "get µs/call", "get MB/s");

  double min_ms = min_ms_raw < 1 ? 1.0 : static_cast<double>(min_ms_raw);

  for (size_t size : SIZES) {
    std::vector<char> value(size, 'x');
    std::string_view value_view(value.data(), value.size());

    double set_ms;
    uint64_t set_reps = autorange(
        perf, min_ms,
        [&](uint64_t reps) {
          for (uint64_t i = 0; i < reps; i++) {
            el.SetTextContent(value_view);
          }
        },
        &set_ms);

    double get_ms;
    uint64_t get_reps = autorange(
        perf, min_ms,
        [&](uint64_t reps) {
          for (uint64_t i = 0; i < reps; i++) {
            el.GetTextContent();
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

    char size_buf[32], set_us_buf[32], set_mb_buf[32], get_us_buf[32], get_mb_buf[32];
    size_t n_size = fmt_str(size_buf, fmt_uint(size_buf, 0, size), " B");
    size_t n_set_us = fmt_fixed(set_us_buf, 0, set_us_per_call, 3);
    size_t n_set_mb = fmt_fixed(set_mb_buf, 0, set_mb_per_s, 1);
    size_t n_get_us = fmt_fixed(get_us_buf, 0, get_us_per_call, 3);
    size_t n_get_mb = fmt_fixed(get_mb_buf, 0, get_mb_per_s, 1);

    append_row(document, table, std::string_view(size_buf, n_size),
              std::string_view(set_us_buf, n_set_us),
              std::string_view(set_mb_buf, n_set_mb),
              std::string_view(get_us_buf, n_get_us),
              std::string_view(get_mb_buf, n_get_mb));
  }

  body.AppendChild(std::cref(heading));
  body.AppendChild(std::cref(table));

  perf.Mark("cpp-end");
  perf.Measure("cpp", "cpp-start", "cpp-end");
}
