#[allow(warnings)]
mod bindings;

use bindings::webidl::baseline::web;
use bindings::webidl::baseline::web::{Document, Element, Node};
use bindings::Guest;

struct Component;

const FANOUT: u32 = 8;

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

fn append_row(document: &Document, table: &Element, label: &str, value: &str) {
    let row = create(document, "tr");
    let th = create(document, "th");
    append_text(document, &th, label);
    append_child(&row, &th);
    let td = create(document, "td");
    append_text(document, &td, value);
    append_child(&row, &td);
    append_child(table, &row);
}

fn count_for_depth(fanout: u64, depth: u32) -> u64 {
    let mut total = 0u64;
    let mut term = 1u64;
    for _ in 0..=depth {
        total += term;
        term *= fanout;
    }
    total
}

// Largest depth whose complete fanout-ary tree has at most `node_count` nodes.
fn choose_depth(node_count: u32) -> u32 {
    let mut depth = 0u32;
    while count_for_depth(FANOUT as u64, depth + 1) <= node_count as u64 {
        depth += 1;
    }
    depth
}

// Built detached from `document` so the benchmark measures wrapper/boundary
// cost, not layout or reflow.
fn build_tree(document: &Document, depth: u32) -> Element {
    let el = create(document, "div");
    if depth > 0 {
        for _ in 0..FANOUT {
            append_child(&el, &build_tree(document, depth - 1));
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

impl Guest for Component {
    fn run(node_count: u32, iterations: u32) {
        let document = web::get_window().document();
        let depth = choose_depth(node_count.max(1));
        let iters = iterations.max(1) as u64;

        let build_start = web::now();
        let root = build_tree(&document, depth);
        let build_ms = web::now() - build_start;

        let mut total_counted: u64 = 0;
        let traverse_start = web::now();
        for _ in 0..iters {
            total_counted += traverse(Some(web::element_as_node(&root))) as u64;
        }
        let traverse_ms = web::now() - traverse_start;

        let node_total = total_counted / iters;
        let ns_per_node = if node_total > 0 {
            (traverse_ms.max(0.001) * 1_000_000.0) / (iters as f64 * node_total as f64)
        } else {
            0.0
        };

        let heading = create(&document, "h2");
        append_text(&document, &heading, "Rust component (wasm)");

        let table = create(&document, "table");
        append_row(&document, &table, "nodes", &node_total.to_string());
        append_row(&document, &table, "iterations", &iters.to_string());
        append_row(&document, &table, "build", &format!("{build_ms:.2} ms"));
        append_row(&document, &table, "traverse (total)", &format!("{traverse_ms:.2} ms"));
        append_row(&document, &table, "traverse (per node)", &format!("{ns_per_node:.1} ns"));

        if let Some(body) = document.body() {
            body.append_child(&web::element_as_node(&heading));
            body.append_child(&web::element_as_node(&table));
        }
    }
}

bindings::export!(Component with_types_in bindings);
