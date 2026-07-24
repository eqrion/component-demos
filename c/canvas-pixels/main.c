#include <stddef.h>
#include <stdint.h>

#include "bindings/cp.h"

#include "../utils.h"

#define MAX_REPS (1u << 20)
#define MARGIN 40u

// --- Small wrappers over the generated bindings ------------------------------

static cp_own_element_t create_element(cp_borrow_document_t document,
                                       const char *local_name) {
  cp_string_t name;
  cp_string_set(&name, local_name);
  return cp_method_document_create_element(document, &name);
}

static void set_attribute(cp_borrow_element_t element, const char *name,
                          const char *value) {
  cp_string_t n, v;
  cp_string_set(&n, name);
  cp_string_set(&v, value);
  cp_method_element_set_attribute(element, &n, &v);
}

static void set_text_content(cp_borrow_element_t element, const char *value) {
  cp_string_t text;
  cp_string_set(&text, value);
  cp_method_element_set_text_content(element, &text);
}

static void set_fill_style(cp_borrow_canvas_rendering_context2d_t ctx,
                           const char *value) {
  cp_string_t v;
  cp_string_set(&v, value);
  cp_method_canvas_rendering_context2d_set_fill_style(ctx, &v);
}

static void append_child(cp_borrow_element_t parent,
                         cp_borrow_element_t child) {
  cp_own_element_t appended = cp_method_element_append_child(parent, child);
  cp_element_drop_own(appended);
}

static void mark(cp_borrow_performance_t perf, const char *name) {
  cp_string_t mark_name;
  cp_string_set(&mark_name, name);
  cp_performance_mark_drop_own(cp_method_performance_mark(perf, &mark_name));
}

static double measure(cp_borrow_performance_t perf, const char *name,
                      const char *start_mark, const char *end_mark) {
  cp_string_t n, s, e;
  cp_string_set(&n, name);
  cp_string_set(&s, start_mark);
  cp_string_set(&e, end_mark);
  cp_own_performance_measure_t m =
      cp_method_performance_measure(perf, &n, &s, &e);
  double duration = cp_method_performance_measure_get_duration(
      cp_borrow_performance_measure(m));
  cp_performance_measure_drop_own(m);
  return duration;
}

// --- The benchmark -----------------------------------------------------------

static void checker(cp_borrow_canvas_rendering_context2d_t ctx, uint32_t size,
                    uint32_t checker_size, const char *color1,
                    const char *color2) {
  set_fill_style(ctx, color1);
  cp_method_canvas_rendering_context2d_fill_rect(ctx, 0.0, 0.0, size, size);
  set_fill_style(ctx, color2);
  for (uint32_t x = 0; x < size / checker_size; x++) {
    for (uint32_t y = 0; y < size / checker_size; y++) {
      if ((x + y) % 2 == 0) {
        cp_method_canvas_rendering_context2d_fill_rect(
            ctx, x * checker_size, y * checker_size, checker_size,
            checker_size);
      }
    }
  }
}

static cp_own_element_t make_canvas(cp_borrow_document_t document,
                                    uint32_t size) {
  cp_own_element_t canvas = create_element(document, "canvas");
  char buf[16];
  size_t n = fmt_uint(buf, 0, size);
  buf[n] = '\0';
  set_attribute(cp_borrow_element(canvas), "width", buf);
  set_attribute(cp_borrow_element(canvas), "height", buf);
  return canvas;
}

static void append_row(cp_borrow_document_t document, cp_borrow_element_t table,
                       const char *cell_tag, const char *c0, const char *c1,
                       const char *c2, const char *c3) {
  const char *cells[] = {c0, c1, c2, c3};
  cp_own_element_t row = create_element(document, "tr");
  for (int i = 0; i < 4; i++) {
    cp_own_element_t cell = create_element(document, cell_tag);
    set_text_content(cp_borrow_element(cell), cells[i]);
    append_child(cp_borrow_element(row), cp_borrow_element(cell));
    cp_element_drop_own(cell);
  }
  append_child(table, cp_borrow_element(row));
  cp_element_drop_own(row);
}

void exports_cp_run(uint32_t size, uint32_t min_ms) {
  cp_own_window_t _window = cp_get_window();
  cp_own_document_t _document =
      cp_method_window_get_document(cp_borrow_window(_window));
  cp_borrow_document_t document = cp_borrow_document(_document);
  cp_own_html_element_t _body;
  cp_method_document_get_body(document, &_body);
  cp_borrow_html_element_t body = cp_borrow_html_element(_body);
  cp_own_performance_t _perf = cp_get_performance();
  cp_borrow_performance_t perf = cp_borrow_performance(_perf);

  mark(perf, "c-start");

  cp_own_element_t heading = create_element(document, "h2");
  set_text_content(cp_borrow_element(heading), "Wasm component (C)");
  cp_element_drop_own(
      cp_method_html_element_append_child(body, cp_borrow_element(heading)));

  cp_own_element_t wrapper = create_element(document, "div");
  set_attribute(cp_borrow_element(wrapper), "style",
                "display: flex; gap: 1rem; margin-bottom: 1rem");
  cp_element_drop_own(
      cp_method_html_element_append_child(body, cp_borrow_element(wrapper)));

  cp_own_element_t canvas1 = make_canvas(document, size);
  cp_own_canvas_rendering_context2d_t _ctx1 =
      cp_method_element_get_context2d(cp_borrow_element(canvas1));
  cp_borrow_canvas_rendering_context2d_t ctx1 =
      cp_borrow_canvas_rendering_context2d(_ctx1);
  checker(ctx1, size, 32, "steelblue", "sandybrown");
  append_child(cp_borrow_element(wrapper), cp_borrow_element(canvas1));

  cp_own_element_t canvas2 = make_canvas(document, size);
  cp_own_canvas_rendering_context2d_t _ctx2 =
      cp_method_element_get_context2d(cp_borrow_element(canvas2));
  cp_borrow_canvas_rendering_context2d_t ctx2 =
      cp_borrow_canvas_rendering_context2d(_ctx2);
  checker(ctx2, size, 16, "mediumturquoise", "indianred");
  append_child(cp_borrow_element(wrapper), cp_borrow_element(canvas2));

  double region = (double)(size - MARGIN * 2);
  cp_list_u8_t pixels = {NULL, 0};

  // get: pull pixels into wasm memory, autoranging reps until min_ms elapsed.
  uint64_t get_reps = 1;
  double get_ms;
  for (;;) {
    mark(perf, "measure-start");
    for (uint64_t r = 0; r < get_reps; r++) {
      cp_list_u8_free(&pixels);
      cp_method_canvas_rendering_context2d_get_image_data_array_buffer(
          ctx1, MARGIN, MARGIN, region, region, &pixels);
    }
    mark(perf, "measure-end");
    get_ms = measure(perf, "measure", "measure-start", "measure-end");
    if (get_ms >= (double)min_ms || get_reps >= MAX_REPS) {
      break;
    }
    get_reps *= 2;
  }
  size_t byte_len = pixels.len;

  // put: push the same pixels back out.
  uint64_t put_reps = 1;
  double put_ms;
  for (;;) {
    mark(perf, "measure-start");
    for (uint64_t r = 0; r < put_reps; r++) {
      cp_method_canvas_rendering_context2d_put_image_data_array_buffer(
          ctx2, &pixels, MARGIN, MARGIN, region, region);
    }
    mark(perf, "measure-end");
    put_ms = measure(perf, "measure", "measure-start", "measure-end");
    if (put_ms >= (double)min_ms || put_reps >= MAX_REPS) {
      break;
    }
    put_reps *= 2;
  }

  double get_us = get_ms * 1000.0 / (double)get_reps;
  double put_us = put_ms * 1000.0 / (double)put_reps;
  double get_mb_s =
      ((double)byte_len * (double)get_reps / 1000000.0) / (get_ms / 1000.0);
  double put_mb_s =
      ((double)byte_len * (double)put_reps / 1000000.0) / (put_ms / 1000.0);

  cp_own_element_t table = create_element(document, "table");
  append_row(document, cp_borrow_element(table), "th", "direction",
             "bytes/call", "µs/call", "MB/s");

  char lenbuf[16], usbuf[16], mbbuf[16];
  size_t nl = fmt_uint(lenbuf, 0, byte_len);
  lenbuf[nl] = '\0';
  size_t nu = fmt_fixed(usbuf, 0, get_us, 1);
  usbuf[nu] = '\0';
  size_t nm = fmt_fixed(mbbuf, 0, get_mb_s, 1);
  mbbuf[nm] = '\0';
  append_row(document, cp_borrow_element(table), "td", "getImageData()", lenbuf,
             usbuf, mbbuf);

  nu = fmt_fixed(usbuf, 0, put_us, 1);
  usbuf[nu] = '\0';
  nm = fmt_fixed(mbbuf, 0, put_mb_s, 1);
  mbbuf[nm] = '\0';
  append_row(document, cp_borrow_element(table), "td", "putImageData()", lenbuf,
             usbuf, mbbuf);

  cp_element_drop_own(
      cp_method_html_element_append_child(body, cp_borrow_element(table)));

  mark(perf, "c-end");
  measure(perf, "c", "c-start", "c-end");

  cp_list_u8_free(&pixels);
  cp_canvas_rendering_context2d_drop_own(_ctx1);
  cp_canvas_rendering_context2d_drop_own(_ctx2);
  cp_element_drop_own(canvas1);
  cp_element_drop_own(canvas2);
  cp_element_drop_own(wrapper);
  cp_element_drop_own(heading);
  cp_element_drop_own(table);
  cp_html_element_drop_own(_body);
  cp_performance_drop_own(_perf);
  cp_document_drop_own(_document);
  cp_window_drop_own(_window);
}
