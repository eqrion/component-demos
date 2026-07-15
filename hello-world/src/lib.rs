#[allow(warnings)]
mod bindings;

use bindings::Guest;
use bindings::webidl::baseline::web;

struct Component;

impl Guest for Component {
    fn run() {
        let document = web::get_window().document();

        let heading = document.create_element("h1");
        heading
            .class_list()
            .add(&["hello".into(), "from-wasm".into()]);
        let text = document.create_text_node("Hello from Wasm!");
        heading.append_child(&web::text_as_node(&text));

        if let Some(body) = document.body() {
            body.append_child(&web::element_as_node(&heading));
        }
    }
}

bindings::export!(Component with_types_in bindings);
