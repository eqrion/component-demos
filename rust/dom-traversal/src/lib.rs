#![no_std]
extern crate alloc;
extern crate core;

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
    world: "dom-traversal",
    path: "wit",
});

struct Component;

fn build_tree(document: &Document, depth: i32, num_children: i32) -> Element {
    let el = document.create_element("div");
    if depth > 0 {
        for _ in 0..num_children {
            el.append_child(&build_tree(document, depth - 1, num_children));
        }
    }
    el
}

fn traverse(node: Option<&Element>) -> u32 {
    match node {
        None => 0,
        Some(n) => {
            let first = n.first_child();
            let sibling = n.next_sibling();
            1 + traverse(first.as_ref()) + traverse(sibling.as_ref())
        }
    }
}

fn append_row(document: &Document, table: &Element, label: &str, value: &str) {
    let row = document.create_element("tr");
    let th = document.create_element("th");
    th.text_content(label);
    row.append_child(&th);
    let td = document.create_element("td");
    td.text_content(value);
    row.append_child(&td);
    table.append_child(&row);
}

impl Guest for Component {
    fn run(depth: i32, num_children: i32) {
        let document = get_window().document();
        let body = document.body().unwrap();

        let build_start = now();
        let root = build_tree(&document, depth, num_children);
        let build_ms = now() - build_start;

        let traverse_start = now();
        let node_total = traverse(Some(&root)) as u64;
        let traverse_ms = now() - traverse_start;

        let us_per_node = (traverse_ms * 1_000.0) / node_total as f64;

        let heading = document.create_element("h2");
        heading.text_content("Wasm component (Rust)");

        let table = document.create_element("table");
        append_row(&document, &table, "nodes", &node_total.to_string());
        append_row(&document, &table, "build", &format!("{build_ms:.2} ms"));
        append_row(
            &document,
            &table,
            "traverse (total)",
            &format!("{traverse_ms:.2} ms"),
        );
        append_row(
            &document,
            &table,
            "traverse (per node)",
            &format!("{us_per_node:.3} µs"),
        );

        body.append_child(&heading);
        body.append_child(&table);
    }
}

export!(Component);
