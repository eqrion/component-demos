#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#include "bindings/sm.h"

#include "../utils.h"

// --- Small wrappers over the generated bindings ------------------------------

static sm_own_element_t create_element(sm_borrow_document_t document,
                                       const char *local_name) {
  sm_string_t name;
  sm_string_set(&name, local_name);
  return sm_method_document_create_element(document, &name);
}

static void set_text_content(sm_borrow_element_t element, sm_string_t *value) {
  sm_method_element_set_text_content(element, value);
}

static void append_child(sm_borrow_element_t parent, sm_borrow_element_t child) {
  sm_own_element_t appended = sm_method_element_append_child(parent, child);
  sm_element_drop_own(appended);
}

static void mark(sm_borrow_performance_t perf, const char *name) {
  sm_string_t mark_name;
  sm_string_set(&mark_name, name);
  sm_performance_mark_drop_own(sm_method_performance_mark(perf, &mark_name));
}

static double measure_duration(sm_borrow_performance_t perf, const char *name,
                               const char *start_mark, const char *end_mark) {
  sm_string_t n, s, e;
  sm_string_set(&n, name);
  sm_string_set(&s, start_mark);
  sm_string_set(&e, end_mark);
  sm_own_performance_measure_t m =
      sm_method_performance_measure(perf, &n, &s, &e);
  double duration = sm_method_performance_measure_get_duration(
      sm_borrow_performance_measure(m));
  sm_performance_measure_drop_own(m);
  return duration;
}

static void append_row(sm_borrow_document_t document, sm_borrow_element_t table,
                       const char *c0, const char *c1, const char *c2,
                       const char *c3, const char *c4) {
  const char *cells[] = {c0, c1, c2, c3, c4};
  sm_own_element_t row = create_element(document, "tr");
  for (int i = 0; i < 5; i++) {
    sm_own_element_t td = create_element(document, "td");
    sm_string_t text;
    sm_string_set(&text, cells[i]);
    set_text_content(sm_borrow_element(td), &text);
    append_child(sm_borrow_element(row), sm_borrow_element(td));
    sm_element_drop_own(td);
  }
  append_child(table, sm_borrow_element(row));
  sm_element_drop_own(row);
}

// --- The benchmark -----------------------------------------------------------

static const size_t SIZES[] = {8, 128, 1024, 16384, 262144};
static const size_t NUM_SIZES = sizeof(SIZES) / sizeof(SIZES[0]);
static const uint64_t MAX_REPS = (uint64_t)1 << 24;

typedef void (*measure_fn)(uint64_t reps, void *ctx);

// Autoranging timer: doubles the rep count until at least `min_ms` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
static uint64_t autorange(sm_borrow_performance_t perf, double min_ms,
                          measure_fn fn, void *ctx, double *out_ms) {
  uint64_t reps = 100;
  for (;;) {
    mark(perf, "measure-start");
    fn(reps, ctx);
    mark(perf, "measure-end");
    double elapsed = measure_duration(perf, "measure", "measure-start", "measure-end");
    if (elapsed >= min_ms || reps >= MAX_REPS) {
      *out_ms = elapsed;
      return reps;
    }
    reps *= 2;
  }
}

typedef struct {
  sm_borrow_element_t element;
  sm_string_t value;
} set_ctx_t;

static void run_set(uint64_t reps, void *ctx_ptr) {
  set_ctx_t *ctx = ctx_ptr;
  for (uint64_t i = 0; i < reps; i++) {
    sm_method_element_set_text_content(ctx->element, &ctx->value);
  }
}

typedef struct {
  sm_borrow_element_t element;
  size_t total_length;
} get_ctx_t;

static void run_get(uint64_t reps, void *ctx_ptr) {
  get_ctx_t *ctx = ctx_ptr;
  for (uint64_t i = 0; i < reps; i++) {
    sm_string_t text;
    sm_method_element_get_text_content(ctx->element, &text);
    ctx->total_length += text.len;
    sm_string_free(&text);
  }
}

void exports_sm_run(uint32_t min_ms) {
  sm_own_window_t _window = sm_get_window();
  sm_own_document_t _document =
      sm_method_window_get_document(sm_borrow_window(_window));
  sm_borrow_document_t document = sm_borrow_document(_document);
  sm_own_html_element_t _body;
  sm_method_document_get_body(document, &_body);
  sm_borrow_html_element_t body = sm_borrow_html_element(_body);
  sm_own_performance_t _perf = sm_get_performance();
  sm_borrow_performance_t perf = sm_borrow_performance(_perf);

  mark(perf, "c-start");

  sm_own_element_t el = create_element(document, "div");

  sm_own_element_t heading = create_element(document, "h2");
  sm_string_t heading_text;
  sm_string_set(&heading_text, "Wasm component (C)");
  set_text_content(sm_borrow_element(heading), &heading_text);

  sm_own_element_t table = create_element(document, "table");
  append_row(document, sm_borrow_element(table), "size", "set µs/call",
            "set MB/s", "get µs/call", "get MB/s");

  double min_ms_d = min_ms < 1 ? 1.0 : (double)min_ms;

  for (size_t i = 0; i < NUM_SIZES; i++) {
    size_t size = SIZES[i];
    char *value = malloc(size);
    for (size_t j = 0; j < size; j++) {
      value[j] = 'x';
    }

    set_ctx_t set_ctx = {
        .element = sm_borrow_element(el),
        .value = {.ptr = (uint8_t *)value, .len = size},
    };
    double set_ms;
    uint64_t set_reps = autorange(perf, min_ms_d, run_set, &set_ctx, &set_ms);

    get_ctx_t get_ctx = {.element = sm_borrow_element(el), .total_length = 0};
    double get_ms;
    uint64_t get_reps = autorange(perf, min_ms_d, run_get, &get_ctx, &get_ms);

    free(value);

    double set_us_per_call = set_ms * 1000.0 / (double)set_reps;
    double get_us_per_call = get_ms * 1000.0 / (double)get_reps;
    double set_mb_per_s = ((double)size * (double)set_reps) / (set_ms * 1000.0);
    double get_mb_per_s = ((double)size * (double)get_reps) / (get_ms * 1000.0);

    char size_buf[32], set_us_buf[32], set_mb_buf[32], get_us_buf[32], get_mb_buf[32];
    size_t n;
    n = fmt_uint(size_buf, 0, (uint64_t)size);
    n = fmt_str(size_buf, n, " B");
    size_buf[n] = '\0';
    n = fmt_fixed(set_us_buf, 0, set_us_per_call, 3);
    set_us_buf[n] = '\0';
    n = fmt_fixed(set_mb_buf, 0, set_mb_per_s, 1);
    set_mb_buf[n] = '\0';
    n = fmt_fixed(get_us_buf, 0, get_us_per_call, 3);
    get_us_buf[n] = '\0';
    n = fmt_fixed(get_mb_buf, 0, get_mb_per_s, 1);
    get_mb_buf[n] = '\0';

    append_row(document, sm_borrow_element(table), size_buf, set_us_buf,
              set_mb_buf, get_us_buf, get_mb_buf);
  }

  sm_element_drop_own(
      sm_method_html_element_append_child(body, sm_borrow_element(heading)));
  sm_element_drop_own(
      sm_method_html_element_append_child(body, sm_borrow_element(table)));

  mark(perf, "c-end");
  measure_duration(perf, "c", "c-start", "c-end");

  sm_element_drop_own(el);
  sm_element_drop_own(heading);
  sm_element_drop_own(table);
  sm_html_element_drop_own(_body);
  sm_performance_drop_own(_perf);
  sm_document_drop_own(_document);
  sm_window_drop_own(_window);
}
