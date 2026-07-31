#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#include "bindings/tu.h"

#include "../utils.h"

// --- Small wrappers over the generated bindings ------------------------------

static tu_own_element_t create_element(tu_borrow_document_t document,
                                       const char *local_name) {
  tu_string_t name;
  tu_string_set(&name, local_name);
  return tu_method_document_create_element(document, &name);
}

static void set_attribute(tu_borrow_element_t element, const char *name,
                          const char *value) {
  tu_string_t n, v;
  tu_string_set(&n, name);
  tu_string_set(&v, value);
  tu_method_element_set_attribute(element, &n, &v);
}

// Returns whether the attribute is present, freeing its value if so.
static bool has_attribute(tu_borrow_element_t element, const char *name) {
  tu_string_t n;
  tu_string_set(&n, name);
  tu_string_t value;
  if (tu_method_element_get_attribute(element, &n, &value)) {
    tu_string_free(&value);
    return true;
  }
  return false;
}

static void set_text_content(tu_borrow_element_t element, const char *value) {
  tu_string_t text;
  tu_string_set(&text, value);
  tu_method_element_set_text_content(element, &text);
}

static void append_child(tu_borrow_element_t parent,
                         tu_borrow_element_t child) {
  tu_own_element_t appended = tu_method_element_append_child(parent, child);
  tu_element_drop_own(appended);
}

static void mark(tu_borrow_performance_t perf, const char *name) {
  tu_string_t mark_name;
  tu_string_set(&mark_name, name);
  tu_performance_mark_drop_own(tu_method_performance_mark(perf, &mark_name));
}

static double measure(tu_borrow_performance_t perf, const char *name,
                      const char *start_mark, const char *end_mark) {
  tu_string_t n, s, e;
  tu_string_set(&n, name);
  tu_string_set(&s, start_mark);
  tu_string_set(&e, end_mark);
  tu_own_performance_measure_t m =
      tu_method_performance_measure(perf, &n, &s, &e);
  double duration = tu_method_performance_measure_get_duration(
      tu_borrow_performance_measure(m));
  tu_performance_measure_drop_own(m);
  return duration;
}

// --- The benchmark -----------------------------------------------------------

static void append_row(tu_borrow_document_t document, tu_borrow_element_t table,
                       const char *c0, const char *c1, const char *c2,
                       const char *c3) {
  const char *cells[] = {c0, c1, c2, c3};
  tu_own_element_t row = create_element(document, "tr");
  for (int i = 0; i < 4; i++) {
    tu_own_element_t td = create_element(document, "td");
    set_text_content(tu_borrow_element(td), cells[i]);
    append_child(tu_borrow_element(row), tu_borrow_element(td));
    tu_element_drop_own(td);
  }
  append_child(table, tu_borrow_element(row));
  tu_element_drop_own(row);
}

void exports_tu_run(uint32_t row_count) {
  tu_own_window_t _window = tu_get_window();
  tu_own_document_t _document =
      tu_method_window_get_document(tu_borrow_window(_window));
  tu_borrow_document_t document = tu_borrow_document(_document);
  tu_own_html_element_t _body;
  tu_method_document_get_body(document, &_body);
  tu_borrow_html_element_t body = tu_borrow_html_element(_body);
  tu_own_performance_t _perf = tu_get_performance();
  tu_borrow_performance_t perf = tu_borrow_performance(_perf);

  mark(perf, "c-start");

  tu_own_element_t heading = create_element(document, "h2");
  set_text_content(tu_borrow_element(heading), "Wasm component (C)");
  tu_element_drop_own(
      tu_method_html_element_append_child(body, tu_borrow_element(heading)));

  tu_own_element_t toggle = create_element(document, "details");
  set_attribute(tu_borrow_element(toggle), "style", "margin-bottom: 1rem");
  tu_own_element_t toggle_title = create_element(document, "summary");
  set_text_content(tu_borrow_element(toggle_title), "Result");
  append_child(tu_borrow_element(toggle), tu_borrow_element(toggle_title));
  tu_element_drop_own(
      tu_method_html_element_append_child(body, tu_borrow_element(toggle)));

  tu_own_element_t table_el = create_element(document, "table");
  tu_own_element_t tbody = create_element(document, "tbody");
  append_child(tu_borrow_element(table_el), tu_borrow_element(tbody));
  append_child(tu_borrow_element(toggle), tu_borrow_element(table_el));

  // Keep an owned handle to every row (and its cell), so the update and clear
  // phases can revisit them without re-querying the DOM.
  tu_own_element_t *trs = malloc((size_t)row_count * sizeof(tu_own_element_t));
  tu_own_element_t *tds = malloc((size_t)row_count * sizeof(tu_own_element_t));

  mark(perf, "create-start");
  for (uint32_t i = 1; i <= row_count; i++) {
    tu_own_element_t tr = create_element(document, "tr");
    tu_own_element_t td = create_element(document, "td");
    char buf[24];
    size_t n = fmt_str(buf, 0, "row ");
    n = fmt_uint(buf, n, i);
    buf[n] = '\0';
    set_text_content(tu_borrow_element(td), buf);
    append_child(tu_borrow_element(tr), tu_borrow_element(td));
    append_child(tu_borrow_element(tbody), tu_borrow_element(tr));
    trs[i - 1] = tr;
    tds[i - 1] = td;
  }
  mark(perf, "create-end");
  double create_ms = measure(perf, "create", "create-start", "create-end");

  mark(perf, "update-start");
  uint32_t updated = 0;
  for (uint32_t i = 1; i <= row_count; i++) {
    if (i % 8 == 0) {
      char buf[32];
      size_t n = fmt_str(buf, 0, "row ");
      n = fmt_uint(buf, n, i);
      n = fmt_str(buf, n, " (selected)");
      buf[n] = '\0';
      set_text_content(tu_borrow_element(tds[i - 1]), buf);
      set_attribute(tu_borrow_element(trs[i - 1]), "data-selected", "data-selected");
      updated++;
    }
  }
  mark(perf, "update-end");
  double update_ms = measure(perf, "update", "update-start", "update-end");

  mark(perf, "clear-start");
  uint32_t cleared = 0;
  for (uint32_t i = 0; i < row_count; i++) {
    if (!has_attribute(tu_borrow_element(trs[i]), "data-selected")) {
      tu_method_element_remove(tu_borrow_element(trs[i]));
      cleared++;
    }
  }
  mark(perf, "clear-end");
  double clear_ms = measure(perf, "clear", "clear-start", "clear-end");

  tu_method_element_remove(tu_borrow_element(toggle));

  tu_own_element_t report = create_element(document, "table");
  tu_own_element_t header = create_element(document, "tr");
  const char *labels[] = {"phase", "total ms", "µs/row",
                          "µs/row touched (est.)"};
  for (int i = 0; i < 4; i++) {
    tu_own_element_t th = create_element(document, "th");
    set_text_content(tu_borrow_element(th), labels[i]);
    append_child(tu_borrow_element(header), tu_borrow_element(th));
    tu_element_drop_own(th);
  }
  append_child(tu_borrow_element(report), tu_borrow_element(header));
  tu_element_drop_own(header);

  double rows_d = (double)row_count;
  char msbuf[32], perbuf[32], touchedbuf[32];
  size_t nm, np, nt;

  nm = fmt_fixed(msbuf, 0, create_ms, 3);
  msbuf[nm] = '\0';
  np = fmt_fixed(perbuf, 0, create_ms * 1000.0 / rows_d, 3);
  perbuf[np] = '\0';
  append_row(document, tu_borrow_element(report), "create", msbuf, perbuf, "-");

  nm = fmt_fixed(msbuf, 0, update_ms, 3);
  msbuf[nm] = '\0';
  np = fmt_fixed(perbuf, 0, update_ms * 1000.0 / rows_d, 3);
  perbuf[np] = '\0';
  nt = fmt_fixed(touchedbuf, 0, update_ms * 1000.0 / (double)updated, 3);
  touchedbuf[nt] = '\0';
  append_row(document, tu_borrow_element(report), "update (selected)", msbuf,
             perbuf, touchedbuf);

  nm = fmt_fixed(msbuf, 0, clear_ms, 3);
  msbuf[nm] = '\0';
  np = fmt_fixed(perbuf, 0, clear_ms * 1000.0 / rows_d, 3);
  perbuf[np] = '\0';
  nt = fmt_fixed(touchedbuf, 0, clear_ms * 1000.0 / (double)cleared, 3);
  touchedbuf[nt] = '\0';
  append_row(document, tu_borrow_element(report), "clear (unselected)", msbuf,
             perbuf, touchedbuf);

  tu_element_drop_own(
      tu_method_html_element_append_child(body, tu_borrow_element(report)));

  mark(perf, "c-end");
  measure(perf, "c", "c-start", "c-end");

  for (uint32_t i = 0; i < row_count; i++) {
    tu_element_drop_own(trs[i]);
    tu_element_drop_own(tds[i]);
  }
  free(trs);
  free(tds);
  tu_element_drop_own(heading);
  tu_element_drop_own(toggle);
  tu_element_drop_own(toggle_title);
  tu_element_drop_own(table_el);
  tu_element_drop_own(tbody);
  tu_element_drop_own(report);
  tu_html_element_drop_own(_body);
  tu_performance_drop_own(_perf);
  tu_document_drop_own(_document);
  tu_window_drop_own(_window);
}
