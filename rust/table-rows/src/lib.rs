#![no_std]
extern crate alloc;
extern crate core;

use alloc::format;
use alloc::vec::Vec;

#[panic_handler]
fn panic_handler(_info: &core::panic::PanicInfo) -> ! {
    core::arch::wasm32::unreachable()
}

#[global_allocator]
static ALLOCATOR: dlmalloc::GlobalDlmalloc = dlmalloc::GlobalDlmalloc;

#[unsafe(no_mangle)]
unsafe extern "C" fn cabi_realloc(
    old_ptr: *mut u8,
    old_len: usize,
    align: usize,
    new_len: usize,
) -> *mut u8 {
    use alloc::alloc::{Layout, alloc, realloc};

    unsafe {
        let ptr = if old_len == 0 {
            if new_len == 0 {
                return align as *mut u8;
            }
            alloc(Layout::from_size_align_unchecked(new_len, align))
        } else {
            realloc(
                old_ptr,
                Layout::from_size_align_unchecked(old_len, align),
                new_len,
            )
        };
        if ptr.is_null() {
            core::arch::wasm32::unreachable();
        }
        ptr
    }
}

wit_bindgen::generate!({
    world: "table-rows",
    path: "wit",
});

struct Component;

fn append_row(document: &Document, table: &Element, label: &str, ms: &str, ns_per_row: &str) {
    let row = document.create_element("tr");
    for value in [label, ms, ns_per_row] {
        let td = document.create_element("td");
        td.text_content(value);
        row.append_child(&td);
    }
    table.append_child(&row);
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
        let document = get_window().document();
        let body = document.body().unwrap();
        let count = row_count.max(1);

        let table_el = document.create_element("table");
        let tbody = document.create_element("tbody");
        table_el.append_child(&tbody);
        body.append_child(&table_el);

        let create_start = now();
        let mut rows = Vec::with_capacity(count as usize);
        for i in 0..count {
            let tr = document.create_element("tr");
            let td = document.create_element("td");
            td.text_content(&format!("row {i}"));
            tr.append_child(&td);
            tbody.append_child(&tr);
            rows.push((tr, td));
        }
        let create_ms = now() - create_start;

        let update_start = now();
        let mut updated: u32 = 0;
        for (i, (_, td)) in rows.iter().enumerate() {
            if i % 10 == 0 {
                td.text_content(&format!("row {i} !!!"));
                updated += 1;
            }
        }
        let update_ms = now() - update_start;

        let clear_start = now();
        for (tr, _) in &rows {
            tr.remove();
        }
        let clear_ms = now() - clear_start;

        let heading = document.create_element("h2");
        heading.text_content("Wasm component (Rust)");

        let report = document.create_element("table");
        let header = document.create_element("tr");
        for label in ["phase", "total ms", "ns/row"] {
            let th = document.create_element("th");
            th.text_content(label);
            header.append_child(&th);
        }
        report.append_child(&header);

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

        body.append_child(&heading);
        body.append_child(&report);
    }
}

export!(Component);
