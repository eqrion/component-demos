#![no_std]
extern crate alloc;
extern crate core;

use alloc::format;
use alloc::string::String;
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
    world: "dom-query",
    path: "dom-query.wit",
});

struct Component;

fn append_row(document: &Document, table: &Element, label: &str, ms: &str, ns_per_element: &str) {
    let row = document.create_element("tr");
    for value in [label, ms, ns_per_element] {
        let td = document.create_element("td");
        td.text_content(value);
        row.append_child(&td);
    }
    table.append_child(&row);
}

impl Guest for Component {
    fn run(count: u32, iterations: u32) {
        let document = get_window().document();
        let body = document.body().unwrap();
        let count_n = count.max(1);
        let iterations_n = iterations.max(1);

        // getElementById/getElementsByClassName only search the live
        // document tree, so (unlike the other demos) this benchmark's
        // elements have to actually be attached; hide the container instead
        // of leaving it detached.
        let container = document.create_element("div");
        container.set_attribute("style", "display:none");
        let ids: Vec<String> = (0..count_n).map(|i| format!("item-{i}")).collect();
        for id in &ids {
            let item = document.create_element("div");
            item.set_attribute("id", id);
            item.set_attribute("class", "item");
            container.append_child(&item);
        }
        body.append_child(&container);

        let total = count_n as f64 * iterations_n as f64;

        // Same fixed set of elements looked up two ways: one
        // `get-element-by-id` host call per element, versus one
        // `get-elements-by-class-name` host call per iteration that returns
        // every matching element at once.
        let individual_start = now();
        for _ in 0..iterations_n {
            for id in &ids {
                let _ = document.get_element_by_id(id);
            }
        }
        let individual_ms = now() - individual_start;

        let bulk_start = now();
        for _ in 0..iterations_n {
            let _ = document.get_elements_by_class_name("item");
        }
        let bulk_ms = now() - bulk_start;

        let individual_ns = individual_ms * 1_000_000.0 / total;
        let bulk_ns = bulk_ms * 1_000_000.0 / total;

        let heading = document.create_element("h2");
        heading.text_content("Wasm component (Rust)");

        let table = document.create_element("table");
        let header = document.create_element("tr");
        for label in ["approach", "total ms", "ns/element"] {
            let th = document.create_element("th");
            th.text_content(label);
            header.append_child(&th);
        }
        table.append_child(&header);

        append_row(
            &document,
            &table,
            "individual (get-element-by-id x N)",
            &format!("{individual_ms:.2}"),
            &format!("{individual_ns:.1}"),
        );
        append_row(
            &document,
            &table,
            "bulk (get-elements-by-class-name)",
            &format!("{bulk_ms:.2}"),
            &format!("{bulk_ns:.1}"),
        );

        body.append_child(&heading);
        body.append_child(&table);
    }
}

export!(Component);
