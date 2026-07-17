#![no_std]
extern crate alloc;
extern crate core;

use crate::_rt::String;
use crate::_rt::Vec;
use alloc::format;
use alloc::string::ToString;

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
    use alloc::alloc::{alloc, realloc, Layout};

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

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(&element_as_node(child));
}

fn append_text(document: &Document, parent: &Element, text: &str) {
    let node = document.create_text_node(text);
    parent.append_child(&text_as_node(&node));
}

fn set_attr(element: &Element, name: &str, value: &str) {
    element.set_attribute(name, TrustedTypeOrString::String(value.to_string()));
}

fn append_row(document: &Document, table: &Element, label: &str, ms: &str, ns_per_element: &str) {
    let row = create(document, "tr");
    for value in [label, ms, ns_per_element] {
        let td = create(document, "td");
        append_text(document, &td, value);
        append_child(&row, &td);
    }
    append_child(table, &row);
}

impl Guest for Component {
    fn run(count: u32, iterations: u32) {
        let document = get_window().document();
        let count_n = count.max(1);
        let iterations_n = iterations.max(1);

        // getElementById/getElementsByClassName only search the live
        // document tree, so (unlike the other demos) this benchmark's
        // elements have to actually be attached; hide the container instead
        // of leaving it detached.
        let container = create(&document, "div");
        set_attr(&container, "style", "display:none");
        let ids: Vec<String> = (0..count_n).map(|i| format!("item-{i}")).collect();
        for id in &ids {
            let item = create(&document, "div");
            set_attr(&item, "id", id);
            set_attr(&item, "class", "item");
            append_child(&container, &item);
        }
        if let Some(body) = document.body() {
            body.append_child(&element_as_node(&container));
        }

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

        let heading = create(&document, "h2");
        append_text(&document, &heading, "Rust component (wasm)");

        let table = create(&document, "table");
        let header = create(&document, "tr");
        for label in ["approach", "total ms", "ns/element"] {
            let th = create(&document, "th");
            append_text(&document, &th, label);
            append_child(&header, &th);
        }
        append_child(&table, &header);

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

        if let Some(body) = document.body() {
            body.append_child(&element_as_node(&heading));
            body.append_child(&element_as_node(&table));
        }
    }
}

export!(Component);
