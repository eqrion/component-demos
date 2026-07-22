#![no_std]
extern crate alloc;
extern crate core;

use alloc::format;
use alloc::string::{String, ToString};
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

fn append_row(document: &Document, table: &Element, label: &str, ms: &str, ns_per_write: &str) {
    let row = document.create_element("tr");
    for value in [label, ms, ns_per_write] {
        let td = document.create_element("td");
        td.text_content(value);
        row.append_child(&td);
    }
    table.append_child(&row);
}

fn build_elements(document: &Document, count: u32) -> Vec<Element> {
    (0..count).map(|_| document.create_element("div")).collect()
}

impl Guest for Component {
    fn run(elements: u32, frames: u32) {
        let document = get_window().document();
        let body = document.body().unwrap();
        let elements_n = elements.max(1);
        let frames_n = frames.max(1);
        let total_writes = elements_n as f64 * frames_n as f64 * ATTRS.len() as f64;

        // Same fixed workload run two ways: one `set-attribute` host call per
        // attribute, versus one `set-attributes` host call per element that
        // carries all of its attributes at once. Both write identical values;
        // only the number of boundary crossings differs.
        let individual = build_elements(&document, elements_n);
        let individual_start = now();
        for frame in 0..frames_n {
            for el in &individual {
                for (i, name) in ATTRS.iter().enumerate() {
                    el.set_attribute(name, TrustedTypeOrString::String(format!("{frame}-{i}")));
                }
            }
        }
        let individual_ms = now() - individual_start;

        let batched = build_elements(&document, elements_n);
        let batched_start = now();
        for frame in 0..frames_n {
            for el in &batched {
                let pairs: Vec<(String, String)> = ATTRS
                    .iter()
                    .enumerate()
                    .map(|(i, name)| (name.to_string(), format!("{frame}-{i}")))
                    .collect();
                el.set_attributes(&pairs);
            }
        }
        let batched_ms = now() - batched_start;

        let individual_ns = individual_ms * 1_000_000.0 / total_writes;
        let batched_ns = batched_ms * 1_000_000.0 / total_writes;

        let heading = document.create_element("h2");
        heading.text_content("Wasm component (Rust)");

        let table = document.create_element("table");
        let header = document.create_element("tr");
        for label in ["approach", "total ms", "ns/write"] {
            let th = document.create_element("th");
            th.text_content(label);
            header.append_child(&th);
        }
        table.append_child(&header);

        append_row(
            &document,
            &table,
            "individual (1 call/attribute)",
            &format!("{individual_ms:.2}"),
            &format!("{individual_ns:.1}"),
        );
        append_row(
            &document,
            &table,
            "batched (1 call/element)",
            &format!("{batched_ms:.2}"),
            &format!("{batched_ns:.1}"),
        );

        body.append_child(&heading);
        body.append_child(&table);
    }
}

export!(Component);
