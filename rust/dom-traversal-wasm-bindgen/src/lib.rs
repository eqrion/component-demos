use wasm_bindgen::prelude::*;
use web_sys::{Document, Element, Node};

fn build_tree(document: &Document, depth: i32, num_children: i32) -> Element {
    let el = document.create_element("div").unwrap();
    if depth > 0 {
        for _ in 0..num_children {
            el.append_child(&build_tree(document, depth - 1, num_children))
                .unwrap();
        }
    }
    el
}

fn traverse(node: Option<Node>) -> u32 {
    match node {
        None => 0,
        Some(n) => {
            let first = n.first_child();
            let sibling = n.next_sibling();
            1 + traverse(first) + traverse(sibling)
        }
    }
}

fn append_row(document: &Document, table: &Element, label: &str, value: &str) {
    let row = document.create_element("tr").unwrap();
    let th = document.create_element("th").unwrap();
    th.set_text_content(Some(label));
    row.append_child(&th).unwrap();
    let td = document.create_element("td").unwrap();
    td.set_text_content(Some(value));
    row.append_child(&td).unwrap();
    table.append_child(&row).unwrap();
}

#[wasm_bindgen]
pub fn run(depth: i32, num_children: i32) {
    let window = web_sys::window().unwrap();
    let document = window.document().unwrap();
    let body = document.body().unwrap();
    let perf = window.performance().unwrap();

    perf.mark("wasm-bindgen-start").unwrap();

    perf.mark("build-start").unwrap();
    let root = build_tree(&document, depth, num_children);
    perf.mark("build-end").unwrap();
    let build_ms = perf
        .measure_with_str_and_end_mark("build", "build-start", "build-end")
        .unwrap()
        .duration();

    perf.mark("traverse-start").unwrap();
    let node_total = traverse(Some(root.clone().into())) as u64;
    perf.mark("traverse-end").unwrap();
    let traverse_ms = perf
        .measure_with_str_and_end_mark("traverse", "traverse-start", "traverse-end")
        .unwrap()
        .duration();

    root.remove();

    let us_per_node = (traverse_ms * 1_000.0) / node_total as f64;

    let heading = document.create_element("h2").unwrap();
    heading.set_text_content(Some("wasm-bindgen (Rust)"));

    let table = document.create_element("table").unwrap();
    append_row(&document, &table, "nodes", &node_total.to_string());
    append_row(&document, &table, "build", &format!("{build_ms:.2} ms"));
    append_row(
        &document,
        &table,
        "traverse (total)",
        &format!("{traverse_ms:.2} ms"),
    );
    append_row(
        &document,
        &table,
        "traverse (per node)",
        &format!("{us_per_node:.3} µs"),
    );

    body.append_child(&heading).unwrap();
    body.append_child(&table).unwrap();

    perf.mark("wasm-bindgen-end").unwrap();
    perf.measure_with_str_and_end_mark("wasm-bindgen", "wasm-bindgen-start", "wasm-bindgen-end")
        .unwrap();
}
