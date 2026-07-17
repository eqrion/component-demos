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
    world: "dom-traversal",
    path: "wit",
});

struct Component;

const FANOUT: u32 = 8;

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(&element_as_node(child));
}

fn append_row(document: &Document, table: &Element, label: &str, value: &str) {
    let row = create(document, "tr");
    let th = create(document, "th");
    th.set_text_content(label);
    append_child(&row, &th);
    let td = create(document, "td");
    td.set_text_content(value);
    append_child(&row, &td);
    append_child(table, &row);
}

fn count_for_depth(fanout: u64, depth: u32) -> u64 {
    let mut total = 0u64;
    let mut term = 1u64;
    for _ in 0..=depth {
        total += term;
        term *= fanout;
    }
    total
}

// Largest depth whose complete fanout-ary tree has at most `node_count` nodes.
fn choose_depth(node_count: u32) -> u32 {
    let mut depth = 0u32;
    while count_for_depth(FANOUT as u64, depth + 1) <= node_count as u64 {
        depth += 1;
    }
    depth
}

// Built detached from `document` so the benchmark measures wrapper/boundary
// cost, not layout or reflow.
fn build_tree(document: &Document, depth: u32) -> Element {
    let el = create(document, "div");
    if depth > 0 {
        for _ in 0..FANOUT {
            append_child(&el, &build_tree(document, depth - 1));
        }
    }
    el
}

fn traverse(node: Option<Node>) -> u32 {
    match node {
        None => 0,
        Some(n) => {
            let first = n.first_child();
            let sibling = n.next_sibling();
            1 + traverse(first) + traverse(sibling)
        }
    }
}

impl Guest for Component {
    fn run(node_count: u32, iterations: u32) {
        let document = get_window().document();
        let depth = choose_depth(node_count.max(1));
        let iters = iterations.max(1) as u64;

        let build_start = now();
        let root = build_tree(&document, depth);
        let build_ms = now() - build_start;

        let mut total_counted: u64 = 0;
        let traverse_start = now();
        for _ in 0..iters {
            total_counted += traverse(Some(element_as_node(&root))) as u64;
        }
        let traverse_ms = now() - traverse_start;

        let node_total = total_counted / iters;
        let ns_per_node = if node_total > 0 {
            (traverse_ms.max(0.001) * 1_000_000.0) / (iters as f64 * node_total as f64)
        } else {
            0.0
        };

        let heading = create(&document, "h2");
        heading.set_text_content("Rust component (wasm)");

        let table = create(&document, "table");
        append_row(&document, &table, "nodes", &node_total.to_string());
        append_row(&document, &table, "iterations", &iters.to_string());
        append_row(&document, &table, "build", &format!("{build_ms:.2} ms"));
        append_row(&document, &table, "traverse (total)", &format!("{traverse_ms:.2} ms"));
        append_row(&document, &table, "traverse (per node)", &format!("{ns_per_node:.1} ns"));

        if let Some(body) = document.body() {
            body.append_child(&element_as_node(&heading));
            body.append_child(&element_as_node(&table));
        }
    }
}

export!(Component);
