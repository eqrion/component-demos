#include <stddef.h>
#include <stdint.h>

#include "bindings/dt.h"

#include "../utils.h"

// --- Small wrappers over the generated bindings ------------------------------

static dt_own_element_t create_element(dt_borrow_document_t document,
                                       const char *local_name) {
  dt_string_t name;
  dt_string_set(&name, local_name);
  return dt_method_document_create_element(document, &name);
}

static void set_text_content(dt_borrow_element_t element, const char *value) {
  dt_string_t text;
  dt_string_set(&text, value);
  dt_method_element_set_text_content(element, &text);
}

static void append_child(dt_borrow_element_t parent,
                         dt_borrow_element_t child) {
  dt_own_element_t appended = dt_method_element_append_child(parent, child);
  dt_element_drop_own(appended);
}

static void mark(dt_borrow_performance_t perf, const char *name) {
  dt_string_t mark_name;
  dt_string_set(&mark_name, name);
  dt_performance_mark_drop_own(dt_method_performance_mark(perf, &mark_name));
}

static double measure(dt_borrow_performance_t perf, const char *name,
                      const char *start_mark, const char *end_mark) {
  dt_string_t n, s, e;
  dt_string_set(&n, name);
  dt_string_set(&s, start_mark);
  dt_string_set(&e, end_mark);
  dt_own_performance_measure_t m =
      dt_method_performance_measure(perf, &n, &s, &e);
  double duration = dt_method_performance_measure_get_duration(
      dt_borrow_performance_measure(m));
  dt_performance_measure_drop_own(m);
  return duration;
}

// --- The benchmark
// ------------------------------------------------------------

static dt_own_element_t build_tree(dt_borrow_document_t document, int depth,
                                   int num_children) {
  dt_own_element_t el = create_element(document, "div");
  if (depth > 0) {
    for (int i = 0; i < num_children; i++) {
      dt_own_element_t child = build_tree(document, depth - 1, num_children);
      append_child(dt_borrow_element(el), dt_borrow_element(child));
      dt_element_drop_own(child);
    }
  }
  return el;
}

// Walks the tree, consuming (dropping) each handle it visits.
static uint32_t traverse(dt_own_element_t node) {
  uint32_t count = 1;
  dt_own_element_t child;
  if (dt_method_element_get_first_child(dt_borrow_element(node), &child)) {
    count += traverse(child);
  }
  dt_own_element_t sibling;
  if (dt_method_element_get_next_sibling(dt_borrow_element(node), &sibling)) {
    count += traverse(sibling);
  }
  dt_element_drop_own(node);
  return count;
}

static void append_row(dt_borrow_document_t document, dt_borrow_element_t table,
                       const char *label, const char *value) {
  dt_own_element_t row = create_element(document, "tr");
  dt_own_element_t th = create_element(document, "th");
  set_text_content(dt_borrow_element(th), label);
  append_child(dt_borrow_element(row), dt_borrow_element(th));
  dt_element_drop_own(th);
  dt_own_element_t td = create_element(document, "td");
  set_text_content(dt_borrow_element(td), value);
  append_child(dt_borrow_element(row), dt_borrow_element(td));
  dt_element_drop_own(td);
  append_child(table, dt_borrow_element(row));
  dt_element_drop_own(row);
}

void exports_dt_run(int32_t depth, int32_t num_children) {
  dt_own_window_t _window = dt_get_window();
  dt_own_document_t _document =
      dt_method_window_get_document(dt_borrow_window(_window));
  dt_borrow_document_t document = dt_borrow_document(_document);
  dt_own_html_element_t _body;
  dt_method_document_get_body(document, &_body);
  dt_borrow_html_element_t body = dt_borrow_html_element(_body);
  dt_own_performance_t _perf = dt_get_performance();
  dt_borrow_performance_t perf = dt_borrow_performance(_perf);

  mark(perf, "c-start");

  mark(perf, "build-start");
  dt_own_element_t root = build_tree(document, depth, num_children);
  mark(perf, "build-end");
  double build_ms = measure(perf, "build", "build-start", "build-end");

  mark(perf, "traverse-start");
  uint32_t node_total = traverse(root);
  mark(perf, "traverse-end");
  double traverse_ms =
      measure(perf, "traverse", "traverse-start", "traverse-end");

  double us_per_node = (traverse_ms * 1000.0) / (double)node_total;

  dt_own_element_t heading = create_element(document, "h2");
  set_text_content(dt_borrow_element(heading), "Wasm component (C)");

  dt_own_element_t table = create_element(document, "table");
  char buf[64];
  size_t n;

  n = fmt_uint(buf, 0, node_total);
  buf[n] = '\0';
  append_row(document, dt_borrow_element(table), "nodes", buf);

  n = fmt_fixed(buf, 0, build_ms, 2);
  n = fmt_str(buf, n, " ms");
  buf[n] = '\0';
  append_row(document, dt_borrow_element(table), "build", buf);

  n = fmt_fixed(buf, 0, traverse_ms, 2);
  n = fmt_str(buf, n, " ms");
  buf[n] = '\0';
  append_row(document, dt_borrow_element(table), "traverse (total)", buf);

  n = fmt_fixed(buf, 0, us_per_node, 3);
  n = fmt_str(buf, n, " µs");
  buf[n] = '\0';
  append_row(document, dt_borrow_element(table), "traverse (per node)", buf);

  dt_element_drop_own(
      dt_method_html_element_append_child(body, dt_borrow_element(heading)));
  dt_element_drop_own(
      dt_method_html_element_append_child(body, dt_borrow_element(table)));

  mark(perf, "c-end");
  measure(perf, "c", "c-start", "c-end");

  dt_element_drop_own(heading);
  dt_element_drop_own(table);
  dt_html_element_drop_own(_body);
  dt_performance_drop_own(_perf);
  dt_document_drop_own(_document);
  dt_window_drop_own(_window);
}
