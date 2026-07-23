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
    world: "table-update",
    path: "wit",
});

struct Component;

fn is_prime(n: usize) -> bool {
    for i in 2..=n / 2 {
        if n % i == 0 {
            return false;
        }
    }
    true
}

fn append_row(
    document: &Document,
    table: &Element,
    label: &str,
    ms: &str,
    us_per_row: &str,
    us_per_row_touched: &str,
) {
    let row = document.create_element("tr");
    for value in [label, ms, us_per_row, us_per_row_touched] {
        let td = document.create_element("td");
        td.set_text_content(value);
        row.append_child(&td);
    }
    table.append_child(&row);
}

impl Guest for Component {
    fn run(row_count: u32) {
        let document = get_window().get_document();
        let body = document.get_body().unwrap();

        let heading = document.create_element("h2");
        heading.set_text_content("Wasm component (Rust)");
        body.append_child(&heading);

        let toggle = document.create_element("details");
        toggle.set_attribute("style", "margin-bottom: 1rem");
        let toggle_title = document.create_element("summary");
        toggle_title.set_text_content("Result");
        toggle.append_child(&toggle_title);
        body.append_child(&toggle);

        let table_el = document.create_element("table");
        let tbody = document.create_element("tbody");
        table_el.append_child(&tbody);
        toggle.append_child(&table_el);

        let create_start = now();
        let mut rows = Vec::with_capacity(row_count as usize);
        for i in 1..=row_count {
            let tr = document.create_element("tr");
            let td = document.create_element("td");
            td.set_text_content(&format!("row {i}"));
            tr.append_child(&td);
            tbody.append_child(&tr);
            rows.push((tr, td));
        }
        let create_ms = now() - create_start;

        let update_start = now();
        let mut updated: u32 = 0;
        for (i, (tr, td)) in rows.iter().enumerate() {
            let i = i + 1;
            if is_prime(i) {
                td.set_text_content(&format!("row {i} (prime)"));
                tr.set_attribute("data-prime", "data-prime");
                updated += 1;
            }
        }
        let update_ms = now() - update_start;

        let clear_start = now();
        let mut cleared: u32 = 0;
        for (tr, _) in &rows {
            if tr.get_attribute("data-prime").is_none() {
                tr.remove();
                cleared += 1;
            }
        }
        let clear_ms = now() - clear_start;

        let report = document.create_element("table");
        let header = document.create_element("tr");
        for label in ["phase", "total ms", "µs/row", "µs/row touched (est.)"] {
            let th = document.create_element("th");
            th.set_text_content(label);
            header.append_child(&th);
        }
        report.append_child(&header);

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
            "update (primes)",
            &format!("{update_ms:.3}"),
            &format!("{:.3}", update_ms * 1_000.0 / row_count as f64),
            &format!("{:.3}", update_ms * 1_000.0 / updated as f64),
        );
        append_row(
            &document,
            &report,
            "clear (non-primes)",
            &format!("{clear_ms:.3}"),
            &format!("{:.3}", clear_ms * 1_000.0 / row_count as f64),
            &format!("{:.3}", clear_ms * 1_000.0 / cleared as f64),
        );

        body.append_child(&report);
    }
}

export!(Component);
