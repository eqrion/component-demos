#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#include "bindings/ac.h"

#include "../utils.h"

static const char *ATTRS[] = {"data-x", "data-y", "class", "title"};

// --- Small wrappers over the generated bindings ------------------------------

static ac_own_element_t create_element(ac_borrow_document_t document,
                                       const char *local_name) {
  ac_string_t name;
  ac_string_set(&name, local_name);
  return ac_method_document_create_element(document, &name);
}

static void set_attribute(ac_borrow_element_t element, const char *name,
                          const char *value) {
  ac_string_t n, v;
  ac_string_set(&n, name);
  ac_string_set(&v, value);
  ac_method_element_set_attribute(element, &n, &v);
}

static void set_text_content(ac_borrow_element_t element, const char *value) {
  ac_string_t text;
  ac_string_set(&text, value);
  ac_method_element_set_text_content(element, &text);
}

static void append_child(ac_borrow_element_t parent,
                         ac_borrow_element_t child) {
  ac_own_element_t appended = ac_method_element_append_child(parent, child);
  ac_element_drop_own(appended);
}

static void mark(ac_borrow_performance_t perf, const char *name) {
  ac_string_t mark_name;
  ac_string_set(&mark_name, name);
  ac_performance_mark_drop_own(ac_method_performance_mark(perf, &mark_name));
}

static double measure(ac_borrow_performance_t perf, const char *name,
                      const char *start_mark, const char *end_mark) {
  ac_string_t n, s, e;
  ac_string_set(&n, name);
  ac_string_set(&s, start_mark);
  ac_string_set(&e, end_mark);
  ac_own_performance_measure_t m =
      ac_method_performance_measure(perf, &n, &s, &e);
  double duration = ac_method_performance_measure_get_duration(
      ac_borrow_performance_measure(m));
  ac_performance_measure_drop_own(m);
  return duration;
}

// --- The benchmark -----------------------------------------------------------

static void append_row(ac_borrow_document_t document, ac_borrow_element_t table,
                       const char *label, const char *value) {
  ac_own_element_t row = create_element(document, "tr");
  ac_own_element_t th = create_element(document, "th");
  set_text_content(ac_borrow_element(th), label);
  append_child(ac_borrow_element(row), ac_borrow_element(th));
  ac_element_drop_own(th);
  ac_own_element_t td = create_element(document, "td");
  set_text_content(ac_borrow_element(td), value);
  append_child(ac_borrow_element(row), ac_borrow_element(td));
  ac_element_drop_own(td);
  append_child(table, ac_borrow_element(row));
  ac_element_drop_own(row);
}

void exports_ac_run(uint32_t elements, uint32_t iters) {
  ac_own_window_t _window = ac_get_window();
  ac_own_document_t _document =
      ac_method_window_get_document(ac_borrow_window(_window));
  ac_borrow_document_t document = ac_borrow_document(_document);
  ac_own_html_element_t _body;
  ac_method_document_get_body(document, &_body);
  ac_borrow_html_element_t body = ac_borrow_html_element(_body);
  ac_own_performance_t _perf = ac_get_performance();
  ac_borrow_performance_t perf = ac_borrow_performance(_perf);

  mark(perf, "c-start");

  uint64_t total_writes = (uint64_t)elements * iters * 4;

  ac_own_element_t *els = malloc(elements * sizeof(ac_own_element_t));
  for (uint32_t i = 0; i < elements; i++) {
    els[i] = create_element(document, "div");
  }

  mark(perf, "run-start");
  for (uint32_t i = 0; i < iters; i++) {
    for (uint32_t e = 0; e < elements; e++) {
      ac_borrow_element_t el = ac_borrow_element(els[e]);
      for (uint32_t j = 0; j < 4; j++) {
        char v[24];
        size_t n = fmt_uint(v, 0, i);
        n = fmt_str(v, n, "-");
        n = fmt_uint(v, n, j);
        v[n] = '\0';
        set_attribute(el, ATTRS[j], v);
      }
    }
  }
  mark(perf, "run-end");
  double total_ms = measure(perf, "run", "run-start", "run-end");

  double us_per = total_ms * 1000.0 / (double)total_writes;

  ac_own_element_t heading = create_element(document, "h2");
  set_text_content(ac_borrow_element(heading), "Wasm component (C)");

  ac_own_element_t table = create_element(document, "table");
  char buf[64];
  size_t n;

  n = fmt_uint(buf, 0, total_writes);
  buf[n] = '\0';
  append_row(document, ac_borrow_element(table), "num calls", buf);

  n = fmt_fixed(buf, 0, total_ms, 3);
  n = fmt_str(buf, n, " ms");
  buf[n] = '\0';
  append_row(document, ac_borrow_element(table), "total time", buf);

  n = fmt_fixed(buf, 0, us_per, 3);
  n = fmt_str(buf, n, " µs");
  buf[n] = '\0';
  append_row(document, ac_borrow_element(table), "per setAttribute()", buf);

  ac_element_drop_own(
      ac_method_html_element_append_child(body, ac_borrow_element(heading)));
  ac_element_drop_own(
      ac_method_html_element_append_child(body, ac_borrow_element(table)));

  mark(perf, "c-end");
  measure(perf, "c", "c-start", "c-end");

  for (uint32_t i = 0; i < elements; i++) {
    ac_element_drop_own(els[i]);
  }
  free(els);
  ac_element_drop_own(heading);
  ac_element_drop_own(table);
  ac_html_element_drop_own(_body);
  ac_performance_drop_own(_perf);
  ac_document_drop_own(_document);
  ac_window_drop_own(_window);
}
