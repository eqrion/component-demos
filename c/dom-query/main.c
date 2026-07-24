#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#include "bindings/dq.h"

#include "../utils.h"

// --- Small wrappers over the generated bindings ------------------------------

static dq_own_element_t create_element(dq_borrow_document_t document,
                                       const char *local_name) {
  dq_string_t name;
  dq_string_set(&name, local_name);
  return dq_method_document_create_element(document, &name);
}

static void set_attribute(dq_borrow_element_t element, const char *name,
                          const char *value) {
  dq_string_t n, v;
  dq_string_set(&n, name);
  dq_string_set(&v, value);
  dq_method_element_set_attribute(element, &n, &v);
}

static void set_text_content(dq_borrow_element_t element, const char *value) {
  dq_string_t text;
  dq_string_set(&text, value);
  dq_method_element_set_text_content(element, &text);
}

static void append_child(dq_borrow_element_t parent,
                         dq_borrow_element_t child) {
  dq_own_element_t appended = dq_method_element_append_child(parent, child);
  dq_element_drop_own(appended);
}

static void mark(dq_borrow_performance_t perf, const char *name) {
  dq_string_t mark_name;
  dq_string_set(&mark_name, name);
  dq_performance_mark_drop_own(dq_method_performance_mark(perf, &mark_name));
}

static double measure(dq_borrow_performance_t perf, const char *name,
                      const char *start_mark, const char *end_mark) {
  dq_string_t n, s, e;
  dq_string_set(&n, name);
  dq_string_set(&s, start_mark);
  dq_string_set(&e, end_mark);
  dq_own_performance_measure_t m =
      dq_method_performance_measure(perf, &n, &s, &e);
  double duration = dq_method_performance_measure_get_duration(
      dq_borrow_performance_measure(m));
  dq_performance_measure_drop_own(m);
  return duration;
}

// --- The benchmark -----------------------------------------------------------

static void append_row(dq_borrow_document_t document, dq_borrow_element_t table,
                       const char *c0, const char *c1, const char *c2,
                       const char *c3) {
  const char *cells[] = {c0, c1, c2, c3};
  dq_own_element_t row = create_element(document, "tr");
  for (int i = 0; i < 4; i++) {
    dq_own_element_t td = create_element(document, "td");
    set_text_content(dq_borrow_element(td), cells[i]);
    append_child(dq_borrow_element(row), dq_borrow_element(td));
    dq_element_drop_own(td);
  }
  append_child(table, dq_borrow_element(row));
  dq_element_drop_own(row);
}

void exports_dq_run(uint32_t num_elements, uint32_t iterations) {
  dq_own_window_t _window = dq_get_window();
  dq_own_document_t _document =
      dq_method_window_get_document(dq_borrow_window(_window));
  dq_borrow_document_t document = dq_borrow_document(_document);
  dq_own_html_element_t _body;
  dq_method_document_get_body(document, &_body);
  dq_borrow_html_element_t body = dq_borrow_html_element(_body);
  dq_own_performance_t _perf = dq_get_performance();
  dq_borrow_performance_t perf = dq_borrow_performance(_perf);

  mark(perf, "c-start");

  // Insert N elements to query for, hidden so they don't affect layout. Their
  // ids ("item-0", "item-1", ...) are kept in one buffer so the individual
  // lookup loop can reuse them without re-formatting.
  const size_t stride = 24;
  char *ids = malloc((size_t)num_elements * stride);
  for (uint32_t i = 0; i < num_elements; i++) {
    char *id = ids + (size_t)i * stride;
    size_t n = fmt_str(id, 0, "item-");
    n = fmt_uint(id, n, i);
    id[n] = '\0';
  }

  dq_own_element_t container = create_element(document, "div");
  set_attribute(dq_borrow_element(container), "style", "display: none");
  for (uint32_t i = 0; i < num_elements; i++) {
    dq_own_element_t item = create_element(document, "div");
    set_attribute(dq_borrow_element(item), "id", ids + (size_t)i * stride);
    set_attribute(dq_borrow_element(item), "class", "c-item");
    append_child(dq_borrow_element(container), dq_borrow_element(item));
    dq_element_drop_own(item);
  }
  dq_element_drop_own(
      dq_method_html_element_append_child(body, dq_borrow_element(container)));

  double num_individual = (double)num_elements * (double)iterations;

  mark(perf, "individual-start");
  for (uint32_t it = 0; it < iterations; it++) {
    for (uint32_t i = 0; i < num_elements; i++) {
      dq_string_t id;
      dq_string_set(&id, ids + (size_t)i * stride);
      dq_own_element_t found;
      if (dq_method_document_get_element_by_id(document, &id, &found)) {
        dq_element_drop_own(found);
      }
    }
  }
  mark(perf, "individual-end");
  double individual_ms =
      measure(perf, "individual", "individual-start", "individual-end");

  mark(perf, "bulk-start");
  for (uint32_t it = 0; it < iterations; it++) {
    dq_string_t cls;
    dq_string_set(&cls, "c-item");
    dq_list_own_element_t found;
    dq_method_document_get_elements_by_class_name_list(document, &cls, &found);
    for (size_t k = 0; k < found.len; k++) {
      dq_element_drop_own(found.ptr[k]);
    }
    dq_list_own_element_free(&found);
  }
  mark(perf, "bulk-end");
  double bulk_ms = measure(perf, "bulk", "bulk-start", "bulk-end");

  double us_per_individual = individual_ms * 1000.0 / num_individual;

  dq_own_element_t heading = create_element(document, "h2");
  set_text_content(dq_borrow_element(heading), "Wasm component (C)");

  dq_own_element_t table = create_element(document, "table");
  dq_own_element_t header = create_element(document, "tr");
  const char *labels[] = {"approach", "iterations", "total ms", "µs/element"};
  for (int i = 0; i < 4; i++) {
    dq_own_element_t th = create_element(document, "th");
    set_text_content(dq_borrow_element(th), labels[i]);
    append_child(dq_borrow_element(header), dq_borrow_element(th));
    dq_element_drop_own(th);
  }
  append_child(dq_borrow_element(table), dq_borrow_element(header));
  dq_element_drop_own(header);

  char iterbuf[16], msbuf[32], usbuf[32];
  size_t ni = fmt_uint(iterbuf, 0, iterations);
  iterbuf[ni] = '\0';
  size_t nm = fmt_fixed(msbuf, 0, individual_ms, 3);
  msbuf[nm] = '\0';
  size_t nu = fmt_fixed(usbuf, 0, us_per_individual, 3);
  usbuf[nu] = '\0';
  append_row(document, dq_borrow_element(table), "individual (getElementById)",
             iterbuf, msbuf, usbuf);

  size_t nb = fmt_fixed(msbuf, 0, bulk_ms, 3);
  msbuf[nb] = '\0';
  append_row(document, dq_borrow_element(table),
             "bulk (getElementsByClassName)", iterbuf, msbuf, "n/a");

  dq_element_drop_own(
      dq_method_html_element_append_child(body, dq_borrow_element(heading)));
  dq_element_drop_own(
      dq_method_html_element_append_child(body, dq_borrow_element(table)));

  mark(perf, "c-end");
  measure(perf, "c", "c-start", "c-end");

  free(ids);
  dq_element_drop_own(container);
  dq_element_drop_own(heading);
  dq_element_drop_own(table);
  dq_html_element_drop_own(_body);
  dq_performance_drop_own(_perf);
  dq_document_drop_own(_document);
  dq_window_drop_own(_window);
}
