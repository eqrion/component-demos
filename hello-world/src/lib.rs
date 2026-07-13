#[allow(warnings)]
mod bindings;

use bindings::webidl::baseline::web;
use bindings::webidl::baseline::web::TrustedTypeOrString;
use bindings::Guest;

struct Component;

impl Guest for Component {
    fn run() {
        let document = web::get_window().document();

        let heading = document.create_element("h1");
        heading.set_attribute("class", TrustedTypeOrString::String("hello".to_string()));
        heading.class_list().add(&["from-wasm".to_string()]);
        let text = document.create_text_node("Hello, world!");
        heading.append_child(&web::text_as_node(&text));

        if let Some(body) = document.body() {
            body.append_child(&web::element_as_node(&heading));
        }
    }
}

bindings::export!(Component with_types_in bindings);
