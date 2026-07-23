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
    path: "wit",
});

struct Component;

fn append_row(
    document: &Document,
    table: &Element,
    label: &str,
    iterations: &str,
    ms: &str,
    ns_per_element: &str,
) {
    let row = document.create_element("tr");
    for value in [label, iterations, ms, ns_per_element] {
        let td = document.create_element("td");
        td.set_text_content(value);
        row.append_child(&td);
    }
    table.append_child(&row);
}

impl Guest for Component {
    fn run(num_elements: u32, iterations: u32) {
        let document = get_window().get_document();
        let body = document.get_body().unwrap();

        // Generate N elements to query for
        let container = document.create_element("div");
        container.set_attribute("style", "display: none");
        let ids: Vec<String> = (0..num_elements).map(|i| format!("item-{i}")).collect();
        for id in &ids {
            let item = document.create_element("div");
            item.set_attribute("id", id);
            item.set_attribute("class", "rust-item");
            container.append_child(&item);
        }
        body.append_child(&container);

        let num_individual_lookups = num_elements as f64 * iterations as f64;
        let individual_start = now();
        for _ in 0..iterations {
            for id in &ids {
                let _ = document.get_element_by_id(id);
            }
        }
        let individual_ms = now() - individual_start;

        let bulk_start = now();
        for _ in 0..iterations {
            let _ = document.get_elements_by_class_name_list("rust-item");
        }
        let bulk_ms = now() - bulk_start;

        let us_per_individual = individual_ms * 1_000.0 / num_individual_lookups;

        let heading = document.create_element("h2");
        heading.set_text_content("Wasm component (Rust)");

        let table = document.create_element("table");
        let header = document.create_element("tr");
        for label in ["approach", "iterations", "total ms", "µs/element"] {
            let th = document.create_element("th");
            th.set_text_content(label);
            header.append_child(&th);
        }
        table.append_child(&header);

        append_row(
            &document,
            &table,
            "individual (getElementById)",
            &format!("{iterations}"),
            &format!("{individual_ms:.3}"),
            &format!("{us_per_individual:.3}"),
        );
        append_row(
            &document,
            &table,
            "bulk (getElementsByClassName)",
            &format!("{iterations}"),
            &format!("{bulk_ms:.3}"),
            "n/a",
        );

        body.append_child(&heading);
        body.append_child(&table);
    }
}

export!(Component);
