#include "bindings/hello_world.h"

void exports_hello_world_run(void) {
  hello_world_own_window_t window = hello_world_get_window();
  hello_world_own_document_t document =
      hello_world_method_window_get_document(hello_world_borrow_window(window));

  hello_world_own_html_element_t body;
  if (!hello_world_method_document_get_body(
          hello_world_borrow_document(document), &body)) {
    return;
  }

  hello_world_string_t tag;
  hello_world_string_set(&tag, "h1");
  hello_world_own_element_t heading = hello_world_method_document_create_element(
      hello_world_borrow_document(document), &tag);

  hello_world_own_dom_token_list_t classes =
      hello_world_method_element_get_class_list(
          hello_world_borrow_element(heading));
  hello_world_string_t tokens[2];
  hello_world_string_set(&tokens[0], "hello");
  hello_world_string_set(&tokens[1], "from-wasm");
  hello_world_list_string_t token_list = {tokens, 2};
  hello_world_method_dom_token_list_add(
      hello_world_borrow_dom_token_list(classes), &token_list);

  hello_world_string_t text;
  hello_world_string_set(&text, "Hello from Wasm!");
  hello_world_method_element_set_text_content(
      hello_world_borrow_element(heading), &text);

  hello_world_own_element_t appended =
      hello_world_method_html_element_append_child(
          hello_world_borrow_html_element(body),
          hello_world_borrow_element(heading));

  // Release the handles we still own. The elements themselves stay in the live
  // DOM; dropping a handle only ends this component's reference to it.
  hello_world_element_drop_own(appended);
  hello_world_dom_token_list_drop_own(classes);
  hello_world_element_drop_own(heading);
  hello_world_html_element_drop_own(body);
  hello_world_document_drop_own(document);
  hello_world_window_drop_own(window);
}
