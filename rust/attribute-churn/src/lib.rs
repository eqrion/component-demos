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
    world: "attribute-churn",
    path: "wit",
});

struct Component;

const ATTRS: [&str; 4] = ["data-x", "data-y", "class", "title"];

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(&element_as_node(child));
}

fn append_row(document: &Document, table: &Element, label: &str, ms: &str, ns_per_write: &str) {
    let row = create(document, "tr");
    for value in [label, ms, ns_per_write] {
        let td = create(document, "td");
        td.set_text_content(value);
        append_child(&row, &td);
    }
    append_child(table, &row);
}

fn build_elements(document: &Document, count: u32) -> Vec<Element> {
    (0..count).map(|_| create(document, "div")).collect()
}

impl Guest for Component {
    fn run(elements: u32, frames: u32) {
        let document = get_window().document();
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

        let heading = create(&document, "h2");
        heading.set_text_content("Rust component (wasm)");

        let table = create(&document, "table");
        let header = create(&document, "tr");
        for label in ["approach", "total ms", "ns/write"] {
            let th = create(&document, "th");
            th.set_text_content(label);
            append_child(&header, &th);
        }
        append_child(&table, &header);

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

        if let Some(body) = document.body() {
            body.append_child(&element_as_node(&heading));
            body.append_child(&element_as_node(&table));
        }
    }
}

export!(Component);
