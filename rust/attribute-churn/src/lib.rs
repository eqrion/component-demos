#![no_std]
extern crate alloc;
extern crate core;

use alloc::format;
use alloc::string::ToString;
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
    world: "attribute-churn",
    path: "wit",
});

struct Component;

const ATTRS: [&str; 4] = ["data-x", "data-y", "class", "title"];

fn build_elements(document: &Document, count: u32) -> Vec<Element> {
    (0..count).map(|_| document.create_element("div")).collect()
}

fn append_row(document: &Document, table: &Element, label: &str, value: &str) {
    let row = document.create_element("tr");
    let th = document.create_element("th");
    th.set_text_content(label);
    row.append_child(&th);
    let td = document.create_element("td");
    td.set_text_content(value);
    row.append_child(&td);
    table.append_child(&row);
}

impl Guest for Component {
    fn run(elements: u32, iters: u32) {
        let document = get_window().get_document();
        let body = document.get_body().unwrap();
        let total_writes = elements as f64 * iters as f64 * ATTRS.len() as f64;

        let elements = build_elements(&document, elements);
        let start = now();
        for i in 0..iters {
            for el in &elements {
                for (j, name) in ATTRS.iter().enumerate() {
                    el.set_attribute(name, &format!("{i}-{j}"));
                }
            }
        }
        let total_ms = now() - start;

        let us_per_element = total_ms * 1_000.0 / total_writes;

        let heading = document.create_element("h2");
        heading.set_text_content("Wasm component (Rust)");

        let table = document.create_element("table");
        append_row(&document, &table, "num calls", &total_writes.to_string());
        append_row(
            &document,
            &table,
            "total time",
            &format!("{total_ms:.3} ms"),
        );
        append_row(
            &document,
            &table,
            "per setAttribute()",
            &format!("{us_per_element:.3} µs"),
        );

        body.append_child(&heading);
        body.append_child(&table);
    }
}

export!(Component);
