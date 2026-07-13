#[allow(warnings)]
mod bindings;

use bindings::webidl::baseline::web;
use bindings::webidl::baseline::web::{Document, Element};
use bindings::Guest;

struct Component;

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

fn append_row(document: &Document, table: &Element, label: &str, ms: &str, ns_per_row: &str) {
    let row = create(document, "tr");
    for value in [label, ms, ns_per_row] {
        let td = create(document, "td");
        append_text(document, &td, value);
        append_child(&row, &td);
    }
    append_child(table, &row);
}

impl Guest for Component {
    // A composite, js-framework-benchmark-style workload: create a table of
    // rows, patch a fraction of them, then remove them all, timing each
    // phase separately. Combines what dom-traversal/attribute-churn/
    // dom-query measure in isolation into one sequence closer to a real
    // app's per-frame DOM work. No event listeners (the component model
    // doesn't support callbacks into a component yet), so the phases run
    // as a fixed script rather than in response to real interaction.
    fn run(row_count: u32) {
        let document = web::get_window().document();
        let count = row_count.max(1);

        let table_el = create(&document, "table");
        let tbody = create(&document, "tbody");
        append_child(&table_el, &tbody);
        if let Some(body) = document.body() {
            body.append_child(&web::element_as_node(&table_el));
        }

        let create_start = web::now();
        let mut rows = Vec::with_capacity(count as usize);
        for i in 0..count {
            let tr = create(&document, "tr");
            let td = create(&document, "td");
            append_text(&document, &td, &format!("row {i}"));
            append_child(&tr, &td);
            append_child(&tbody, &tr);
            rows.push((tr, td));
        }
        let create_ms = web::now() - create_start;

        let update_start = web::now();
        let mut updated: u32 = 0;
        for (i, (_, td)) in rows.iter().enumerate() {
            if i % 10 == 0 {
                web::element_as_node(td).set_text_content(&format!("row {i} !!!"));
                updated += 1;
            }
        }
        let update_ms = web::now() - update_start;

        let clear_start = web::now();
        for (tr, _) in &rows {
            tr.remove();
        }
        let clear_ms = web::now() - clear_start;

        let heading = create(&document, "h2");
        append_text(&document, &heading, "Rust component (wasm)");

        let report = create(&document, "table");
        let header = create(&document, "tr");
        for label in ["phase", "total ms", "ns/row"] {
            let th = create(&document, "th");
            append_text(&document, &th, label);
            append_child(&header, &th);
        }
        append_child(&report, &header);

        append_row(
            &document,
            &report,
            "create",
            &format!("{create_ms:.2}"),
            &format!("{:.1}", create_ms * 1_000_000.0 / count as f64),
        );
        append_row(
            &document,
            &report,
            "update (1/10 rows)",
            &format!("{update_ms:.2}"),
            &format!("{:.1}", update_ms * 1_000_000.0 / updated.max(1) as f64),
        );
        append_row(
            &document,
            &report,
            "clear",
            &format!("{clear_ms:.2}"),
            &format!("{:.1}", clear_ms * 1_000_000.0 / count as f64),
        );

        if let Some(body) = document.body() {
            body.append_child(&web::element_as_node(&heading));
            body.append_child(&web::element_as_node(&report));
        }
    }
}

bindings::export!(Component with_types_in bindings);
