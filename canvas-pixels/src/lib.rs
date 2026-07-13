#[allow(warnings)]
mod bindings;

use bindings::webidl::baseline::web;
use bindings::webidl::baseline::web::{Document, Element, TrustedTypeOrString};
use bindings::Guest;

struct Component;

const MAX_REPS: u64 = 1 << 20;

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn set_attr(element: &Element, name: &str, value: &str) {
    element.set_attribute(name, TrustedTypeOrString::String(value.to_string()));
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(&web::element_as_node(child));
}

fn append_text(document: &Document, parent: &Element, text: &str) {
    let node = document.create_text_node(text);
    parent.append_child(&web::text_as_node(&node));
}

fn append_row(document: &Document, table: &Element, cell_tag: &str, cells: &[String]) {
    let row = create(document, "tr");
    for cell in cells {
        let td = create(document, cell_tag);
        append_text(document, &td, cell);
        append_child(&row, &td);
    }
    append_child(table, &row);
}

// Same autoranging timer as string-marshalling: double reps until at
// least `min_ms` has elapsed, so both directions get a trustworthy
// measurement regardless of canvas size.
fn measure(min_ms: f64, mut run: impl FnMut(u64)) -> (u64, f64) {
    let mut reps: u64 = 1;
    loop {
        let start = web::now();
        run(reps);
        let elapsed = web::now() - start;
        if elapsed >= min_ms || reps >= MAX_REPS {
            return (reps, elapsed);
        }
        reps *= 2;
    }
}

impl Guest for Component {
    // Moves raw RGBA pixel bytes across the boundary via getImageData/
    // putImageData, instead of the UTF-16 strings (string-marshalling) or
    // resource handles (dom-query) the other demos move.
    fn run(size: u32, min_ms: u32) {
        let document = web::get_window().document();
        let size_n = size.max(1);
        let min_ms = min_ms.max(1) as f64;
        let dim = size_n as f64;
        let byte_len = size_n as usize * size_n as usize * 4;

        let canvas = create(&document, "canvas");
        set_attr(&canvas, "width", &size_n.to_string());
        set_attr(&canvas, "height", &size_n.to_string());
        let ctx = canvas.get_context2d();
        ctx.set_fill_style("steelblue");
        ctx.fill_rect(0.0, 0.0, dim, dim);

        let pixels = vec![128u8; byte_len];

        let (get_reps, get_ms) = measure(min_ms, |reps| {
            for _ in 0..reps {
                let _ = ctx.get_image_data(0.0, 0.0, dim, dim);
            }
        });
        let (put_reps, put_ms) = measure(min_ms, |reps| {
            for _ in 0..reps {
                ctx.put_image_data(&pixels, 0.0, 0.0, dim, dim);
            }
        });

        let get_ns = get_ms * 1_000_000.0 / get_reps as f64;
        let put_ns = put_ms * 1_000_000.0 / put_reps as f64;
        let get_mb_s = (byte_len as f64 * get_reps as f64) / (get_ms * 1_000.0);
        let put_mb_s = (byte_len as f64 * put_reps as f64) / (put_ms * 1_000.0);

        let heading = create(&document, "h2");
        append_text(&document, &heading, "Rust component (wasm)");

        let table = create(&document, "table");
        append_row(
            &document,
            &table,
            "th",
            &[
                String::from("direction"),
                String::from("bytes/call"),
                String::from("ns/call"),
                String::from("MB/s"),
            ],
        );
        append_row(
            &document,
            &table,
            "td",
            &[
                String::from("get (read pixels)"),
                byte_len.to_string(),
                format!("{get_ns:.1}"),
                format!("{get_mb_s:.1}"),
            ],
        );
        append_row(
            &document,
            &table,
            "td",
            &[
                String::from("put (write pixels)"),
                byte_len.to_string(),
                format!("{put_ns:.1}"),
                format!("{put_mb_s:.1}"),
            ],
        );

        if let Some(body) = document.body() {
            body.append_child(&web::element_as_node(&heading));
            body.append_child(&web::element_as_node(&canvas));
            body.append_child(&web::element_as_node(&table));
        }
    }
}

bindings::export!(Component with_types_in bindings);
