#include <stddef.h>
#include <stdint.h>

#include "bindings/cd.h"

#include "../utils.h"

#define CANVAS_SIZE 400.0
#define RECT_SIZE 3.0

// --- Small wrappers over the generated bindings ------------------------------

static cd_own_element_t create_element(cd_borrow_document_t document,
                                       const char *local_name) {
  cd_string_t name;
  cd_string_set(&name, local_name);
  return cd_method_document_create_element(document, &name);
}

static void set_attribute(cd_borrow_element_t element, const char *name,
                          const char *value) {
  cd_string_t n, v;
  cd_string_set(&n, name);
  cd_string_set(&v, value);
  cd_method_element_set_attribute(element, &n, &v);
}

static void set_text_content(cd_borrow_element_t element, const char *value) {
  cd_string_t text;
  cd_string_set(&text, value);
  cd_method_element_set_text_content(element, &text);
}

static void set_fill_style(cd_borrow_canvas_rendering_context2d_t ctx,
                           const char *value) {
  cd_string_t v;
  cd_string_set(&v, value);
  cd_method_canvas_rendering_context2d_set_fill_style(ctx, &v);
}

static void append_child(cd_borrow_element_t parent,
                         cd_borrow_element_t child) {
  cd_own_element_t appended = cd_method_element_append_child(parent, child);
  cd_element_drop_own(appended);
}

static void mark(cd_borrow_performance_t perf, const char *name) {
  cd_string_t mark_name;
  cd_string_set(&mark_name, name);
  cd_performance_mark_drop_own(cd_method_performance_mark(perf, &mark_name));
}

static double measure(cd_borrow_performance_t perf, const char *name,
                      const char *start_mark, const char *end_mark) {
  cd_string_t n, s, e;
  cd_string_set(&n, name);
  cd_string_set(&s, start_mark);
  cd_string_set(&e, end_mark);
  cd_own_performance_measure_t m =
      cd_method_performance_measure(perf, &n, &s, &e);
  double duration = cd_method_performance_measure_get_duration(
      cd_borrow_performance_measure(m));
  cd_performance_measure_drop_own(m);
  return duration;
}

// --- The benchmark -----------------------------------------------------------

// Simple xorshift prng.
static double rand_next(uint32_t *state) {
  uint32_t x = *state;
  x ^= x << 13;
  x ^= x >> 17;
  x ^= x << 5;
  *state = x;
  return (double)x / ((double)UINT32_MAX + 1.0);
}

static void append_row(cd_borrow_document_t document, cd_borrow_element_t table,
                       const char *label, const char *value) {
  cd_own_element_t row = create_element(document, "tr");
  cd_own_element_t th = create_element(document, "th");
  set_text_content(cd_borrow_element(th), label);
  append_child(cd_borrow_element(row), cd_borrow_element(th));
  cd_element_drop_own(th);
  cd_own_element_t td = create_element(document, "td");
  set_text_content(cd_borrow_element(td), value);
  append_child(cd_borrow_element(row), cd_borrow_element(td));
  cd_element_drop_own(td);
  append_child(table, cd_borrow_element(row));
  cd_element_drop_own(row);
}

void exports_cd_run(uint32_t rects) {
  cd_own_window_t _window = cd_get_window();
  cd_own_document_t _document =
      cd_method_window_get_document(cd_borrow_window(_window));
  cd_borrow_document_t document = cd_borrow_document(_document);
  cd_own_html_element_t _body;
  cd_method_document_get_body(document, &_body);
  cd_borrow_html_element_t body = cd_borrow_html_element(_body);
  cd_own_performance_t _perf = cd_get_performance();
  cd_borrow_performance_t perf = cd_borrow_performance(_perf);

  mark(perf, "c-start");

  cd_own_element_t canvas = create_element(document, "canvas");
  set_attribute(cd_borrow_element(canvas), "width", "400");
  set_attribute(cd_borrow_element(canvas), "height", "400");
  cd_own_canvas_rendering_context2d_t _ctx =
      cd_method_element_get_context2d(cd_borrow_element(canvas));
  cd_borrow_canvas_rendering_context2d_t ctx =
      cd_borrow_canvas_rendering_context2d(_ctx);
  set_fill_style(ctx, "mediumpurple");

  mark(perf, "draw-start");
  uint32_t state = (uint32_t)cd_method_performance_now(perf);
  for (uint32_t i = 0; i < rects; i++) {
    double x = rand_next(&state) * (CANVAS_SIZE - RECT_SIZE);
    double y = rand_next(&state) * (CANVAS_SIZE - RECT_SIZE);
    cd_method_canvas_rendering_context2d_fill_rect(ctx, x, y, RECT_SIZE,
                                                   RECT_SIZE);
  }
  mark(perf, "draw-end");
  double ms = measure(perf, "draw", "draw-start", "draw-end");
  double us_per_call = ms * 1000.0 / (double)rects;

  cd_own_element_t heading = create_element(document, "h2");
  set_text_content(cd_borrow_element(heading), "Wasm component (C)");

  cd_own_element_t table = create_element(document, "table");
  char buf[64];
  size_t n;

  n = fmt_uint(buf, 0, rects);
  buf[n] = '\0';
  append_row(document, cd_borrow_element(table), "rects", buf);

  n = fmt_fixed(buf, 0, ms, 3);
  n = fmt_str(buf, n, " ms");
  buf[n] = '\0';
  append_row(document, cd_borrow_element(table), "total", buf);

  n = fmt_fixed(buf, 0, us_per_call, 3);
  n = fmt_str(buf, n, " µs");
  buf[n] = '\0';
  append_row(document, cd_borrow_element(table), "per fill_rect()", buf);

  cd_element_drop_own(
      cd_method_html_element_append_child(body, cd_borrow_element(heading)));
  cd_element_drop_own(
      cd_method_html_element_append_child(body, cd_borrow_element(canvas)));
  cd_element_drop_own(
      cd_method_html_element_append_child(body, cd_borrow_element(table)));

  mark(perf, "c-end");
  measure(perf, "c", "c-start", "c-end");

  cd_canvas_rendering_context2d_drop_own(_ctx);
  cd_element_drop_own(canvas);
  cd_element_drop_own(heading);
  cd_element_drop_own(table);
  cd_html_element_drop_own(_body);
  cd_performance_drop_own(_perf);
  cd_document_drop_own(_document);
  cd_window_drop_own(_window);
}
