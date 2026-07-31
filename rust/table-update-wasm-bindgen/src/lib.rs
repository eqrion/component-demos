use wasm_bindgen::prelude::*;
use web_sys::{Document, Element};

fn append_row(
    document: &Document,
    table: &Element,
    label: &str,
    ms: &str,
    us_per_row: &str,
    us_per_row_touched: &str,
) {
    let row = document.create_element("tr").unwrap();
    for value in [label, ms, us_per_row, us_per_row_touched] {
        let td = document.create_element("td").unwrap();
        td.set_text_content(Some(value));
        row.append_child(&td).unwrap();
    }
    table.append_child(&row).unwrap();
}

#[wasm_bindgen]
pub fn run(row_count: u32) {
    let window = web_sys::window().unwrap();
    let document = window.document().unwrap();
    let body = document.body().unwrap();
    let perf = window.performance().unwrap();

    perf.mark("wasm-bindgen-start").unwrap();

    let heading = document.create_element("h2").unwrap();
    heading.set_text_content(Some("wasm-bindgen (Rust)"));
    body.append_child(&heading).unwrap();

    let toggle = document.create_element("details").unwrap();
    toggle.set_attribute("style", "margin-bottom: 1rem").unwrap();
    let toggle_title = document.create_element("summary").unwrap();
    toggle_title.set_text_content(Some("Result"));
    toggle.append_child(&toggle_title).unwrap();
    body.append_child(&toggle).unwrap();

    let table_el = document.create_element("table").unwrap();
    let tbody = document.create_element("tbody").unwrap();
    table_el.append_child(&tbody).unwrap();
    toggle.append_child(&table_el).unwrap();

    perf.mark("create-start").unwrap();
    let mut rows = Vec::with_capacity(row_count as usize);
    for i in 1..=row_count {
        let tr = document.create_element("tr").unwrap();
        let td = document.create_element("td").unwrap();
        td.set_text_content(Some(&format!("row {i}")));
        tr.append_child(&td).unwrap();
        tbody.append_child(&tr).unwrap();
        rows.push((tr, td));
    }
    perf.mark("create-end").unwrap();
    let create_ms = perf
        .measure_with_str_and_end_mark("create", "create-start", "create-end")
        .unwrap()
        .duration();

    perf.mark("update-start").unwrap();
    let mut updated: u32 = 0;
    for (i, (tr, td)) in rows.iter().enumerate() {
        let i = i as u32 + 1;
        if i % 8 == 0 {
            td.set_text_content(Some(&format!("row {i} (selected)")));
            tr.set_attribute("data-selected", "data-selected").unwrap();
            updated += 1;
        }
    }
    perf.mark("update-end").unwrap();
    let update_ms = perf
        .measure_with_str_and_end_mark("update", "update-start", "update-end")
        .unwrap()
        .duration();

    perf.mark("clear-start").unwrap();
    let mut cleared: u32 = 0;
    for (tr, _) in &rows {
        if tr.get_attribute("data-selected").is_none() {
            tr.remove();
            cleared += 1;
        }
    }
    perf.mark("clear-end").unwrap();
    let clear_ms = perf
        .measure_with_str_and_end_mark("clear", "clear-start", "clear-end")
        .unwrap()
        .duration();

    toggle.remove();

    let report = document.create_element("table").unwrap();
    let header = document.create_element("tr").unwrap();
    for label in ["phase", "total ms", "µs/row", "µs/row touched (est.)"] {
        let th = document.create_element("th").unwrap();
        th.set_text_content(Some(label));
        header.append_child(&th).unwrap();
    }
    report.append_child(&header).unwrap();

    append_row(
        &document,
        &report,
        "create",
        &format!("{create_ms:.3}"),
        &format!("{:.3}", create_ms * 1_000.0 / row_count as f64),
        "-",
    );
    append_row(
        &document,
        &report,
        "update (selected)",
        &format!("{update_ms:.3}"),
        &format!("{:.3}", update_ms * 1_000.0 / row_count as f64),
        &format!("{:.3}", update_ms * 1_000.0 / updated as f64),
    );
    append_row(
        &document,
        &report,
        "clear (unselected)",
        &format!("{clear_ms:.3}"),
        &format!("{:.3}", clear_ms * 1_000.0 / row_count as f64),
        &format!("{:.3}", clear_ms * 1_000.0 / cleared as f64),
    );

    body.append_child(&report).unwrap();

    perf.mark("wasm-bindgen-end").unwrap();
    perf.measure_with_str_and_end_mark("wasm-bindgen", "wasm-bindgen-start", "wasm-bindgen-end")
        .unwrap();
}
