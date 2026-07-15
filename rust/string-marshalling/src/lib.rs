#[allow(warnings)]
mod bindings;

use bindings::webidl::baseline::web;
use bindings::webidl::baseline::web::{Document, Element};
use bindings::Guest;

struct Component;

const SIZES: [usize; 5] = [8, 128, 1024, 16384, 262144];
const MAX_REPS: u64 = 1 << 24;

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
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

// Autoranging timer: doubles the rep count until at least `min_ms` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
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
    fn run(min_ms: u32) {
        let document = web::get_window().document();
        let el = create(&document, "div");
        let node = web::element_as_node(&el);
        let min_ms = min_ms.max(1) as f64;

        let heading = create(&document, "h2");
        append_text(&document, &heading, "Rust component (wasm)");

        let table = create(&document, "table");
        append_row(
            &document,
            &table,
            "th",
            &[
                String::from("size"),
                String::from("set ns/call"),
                String::from("set MB/s"),
                String::from("get ns/call"),
                String::from("get MB/s"),
            ],
        );

        for &size in SIZES.iter() {
            let value = "x".repeat(size);
            node.set_text_content(&value);
            debug_assert_eq!(node.text_content().len(), size);

            let (set_reps, set_ms) = measure(min_ms, |reps| {
                for _ in 0..reps {
                    node.set_text_content(&value);
                }
            });
            let (get_reps, get_ms) = measure(min_ms, |reps| {
                for _ in 0..reps {
                    let _ = node.text_content();
                }
            });

            let set_ns_per_call = set_ms * 1_000_000.0 / set_reps as f64;
            let get_ns_per_call = get_ms * 1_000_000.0 / get_reps as f64;
            let set_mb_per_s = (size as f64 * set_reps as f64) / (set_ms * 1_000.0);
            let get_mb_per_s = (size as f64 * get_reps as f64) / (get_ms * 1_000.0);

            append_row(
                &document,
                &table,
                "td",
                &[
                    format!("{size} B"),
                    format!("{set_ns_per_call:.1}"),
                    format!("{set_mb_per_s:.1}"),
                    format!("{get_ns_per_call:.1}"),
                    format!("{get_mb_per_s:.1}"),
                ],
            );
        }

        if let Some(body) = document.body() {
            body.append_child(&web::element_as_node(&heading));
            body.append_child(&web::element_as_node(&table));
        }
    }
}

bindings::export!(Component with_types_in bindings);
