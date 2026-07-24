#include "bindings/hw.h"

void exports_hw_run(void) {
  hw_own_window_t _window = hw_get_window();
  hw_own_document_t _document =
      hw_method_window_get_document(hw_borrow_window(_window));
  hw_borrow_document_t document = hw_borrow_document(_document);

  hw_own_html_element_t _body;
  if (!hw_method_document_get_body(document, &_body)) {
    return;
  }

  hw_string_t tag;
  hw_string_set(&tag, "h1");
  hw_own_element_t heading = hw_method_document_create_element(document, &tag);

  hw_own_dom_token_list_t classes =
      hw_method_element_get_class_list(hw_borrow_element(heading));
  hw_string_t tokens[2];
  hw_string_set(&tokens[0], "hello");
  hw_string_set(&tokens[1], "from-wasm");
  hw_list_string_t token_list = {tokens, 2};
  hw_method_dom_token_list_add(hw_borrow_dom_token_list(classes), &token_list);

  hw_string_t text;
  hw_string_set(&text, "Hello from C!");
  hw_method_element_set_text_content(hw_borrow_element(heading), &text);

  hw_own_element_t appended = hw_method_html_element_append_child(
      hw_borrow_html_element(_body), hw_borrow_element(heading));

  // Release the handles we still own. The elements themselves stay in the live
  // DOM; dropping a handle only ends this component's reference to it.
  hw_element_drop_own(appended);
  hw_dom_token_list_drop_own(classes);
  hw_element_drop_own(heading);
  hw_html_element_drop_own(_body);
  hw_document_drop_own(_document);
  hw_window_drop_own(_window);
}
