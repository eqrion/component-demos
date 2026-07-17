#![no_std]
extern crate alloc;
extern crate core;

use alloc::collections::BTreeMap;
use alloc::format;
use alloc::string::{String, ToString};
use alloc::vec;
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
    world: "vdom-diff",
    path: "wit",
});

// `String`/`&str` equality lowers to a `memcmp` call, which isn't provided
// without libc on this target.
#[unsafe(no_mangle)]
unsafe extern "C" fn memcmp(a: *const u8, b: *const u8, len: usize) -> i32 {
    let (a, b) = unsafe {
        (
            core::slice::from_raw_parts(a, len),
            core::slice::from_raw_parts(b, len),
        )
    };
    for i in 0..len {
        if a[i] != b[i] {
            return a[i] as i32 - b[i] as i32;
        }
    }
    0
}

struct Component;

struct Row {
    key: u32,
    label: String,
    element: Element,
}

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(&element_as_node(child));
}

fn insert_before(parent: &Element, child: &Element, reference: &Element) {
    parent.insert_before(&element_as_node(child), &element_as_node(reference));
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

fn label_for(key: u32) -> String {
    if key % 5 == 0 {
        format!("row {key} !!!")
    } else {
        format!("row {key}")
    }
}

// Deterministic old -> new transformation exercising all four patch kinds:
// drop 1/4 of rows (removes), relocate the front 10% of the survivors to
// the back (moves), prepend a batch of brand new keys (inserts), and vary
// label text by key (updates). Relocating one small chunk — rather than
// reversing the whole list — keeps the other ~90% of survivors in
// relative order, so a real diff only has to move the relocated chunk
// while a full-rebuild approach would touch every row regardless.
fn build_new_keys(count: u32) -> Vec<u32> {
    let survivors: Vec<u32> = (0..count).filter(|k| k % 4 != 0).collect();
    let split = survivors.len() / 10;
    let (head, tail) = survivors.split_at(split);
    let fresh = count..(count + count / 10);
    fresh.chain(tail.iter().copied()).chain(head.iter().copied()).collect()
}

// Longest increasing subsequence, by index: `mask[i]` is true when
// `values[i]` participates in the LIS, i.e. is already in relatively
// correct order and doesn't need to move. Standard O(n log n) patience
// sort with backpointers, the same technique real vdom diffs (Vue 3,
// Inferno) use to minimize DOM moves during keyed-list reconciliation.
fn lis_mask(values: &[i64]) -> Vec<bool> {
    let n = values.len();
    let mut tails: Vec<usize> = Vec::new();
    let mut prev: Vec<i64> = vec![-1; n];
    for i in 0..n {
        let v = values[i];
        let mut lo = 0usize;
        let mut hi = tails.len();
        while lo < hi {
            let mid = (lo + hi) / 2;
            if values[tails[mid]] < v {
                lo = mid + 1;
            } else {
                hi = mid;
            }
        }
        if lo > 0 {
            prev[i] = tails[lo - 1] as i64;
        }
        if lo == tails.len() {
            tails.push(i);
        } else {
            tails[lo] = i;
        }
    }
    let mut mask = vec![false; n];
    if let Some(&last) = tails.last() {
        let mut k = last as i64;
        while k >= 0 {
            mask[k as usize] = true;
            k = prev[k as usize];
        }
    }
    mask
}

impl Guest for Component {
    fn run(row_count: u32) {
        let document = get_window().document();
        let count = row_count.max(1);

        let container = create(&document, "ul");
        if let Some(body) = document.body() {
            body.append_child(&element_as_node(&container));
        }

        let rows: Vec<Row> = (0..count)
            .map(|key| {
                let element = create(&document, "li");
                let label = format!("row {key}");
                element.set_text_content(&label);
                append_child(&container, &element);
                Row { key, label, element }
            })
            .collect();

        let new_keys = build_new_keys(count);

        let diff_start = now();

        let mut old_index_of: BTreeMap<u32, usize> = BTreeMap::new();
        for (i, r) in rows.iter().enumerate() {
            old_index_of.insert(r.key, i);
        }

        let positions: Vec<i64> = new_keys
            .iter()
            .map(|k| old_index_of.get(k).map(|&i| i as i64).unwrap_or(-1))
            .collect();
        let reused_indices: Vec<usize> = (0..new_keys.len()).filter(|&i| positions[i] >= 0).collect();
        let reused_positions: Vec<i64> = reused_indices.iter().map(|&i| positions[i]).collect();
        let lis = lis_mask(&reused_positions);
        let mut no_move = vec![false; new_keys.len()];
        for (j, &i) in reused_indices.iter().enumerate() {
            no_move[i] = lis[j];
        }

        let mut old_rows: Vec<Option<Row>> = rows.into_iter().map(Some).collect();
        let mut new_rows: Vec<Option<Row>> = (0..new_keys.len()).map(|_| None).collect();
        let (mut inserts, mut removes, mut moves, mut updates) = (0u32, 0u32, 0u32, 0u32);

        // Pass 1: resolve each new slot to a row (reuse or create) and patch
        // text. No DOM repositioning yet.
        for (i, &key) in new_keys.iter().enumerate() {
            let label = label_for(key);
            let row = match old_index_of.get(&key) {
                Some(&old_i) => {
                    let mut row = old_rows[old_i].take().unwrap();
                    if row.label != label {
                        row.element.set_text_content(&label);
                        row.label = label;
                        updates += 1;
                    }
                    row
                }
                None => {
                    let element = create(&document, "li");
                    element.set_text_content(&label);
                    inserts += 1;
                    Row { key, label, element }
                }
            };
            new_rows[i] = Some(row);
        }

        for maybe in old_rows {
            if let Some(row) = maybe {
                row.element.remove();
                removes += 1;
            }
        }

        // Pass 2: fix positions right-to-left with an anchor, skipping rows
        // in the LIS (already in relatively correct order). Newly created
        // rows always need a placement call here, but that's already
        // counted as an insert above, not a separate move.
        let mut anchor: Option<Element> = None;
        for i in (0..new_rows.len()).rev() {
            let row = new_rows[i].take().unwrap();
            let Row { element, .. } = row;
            if !no_move[i] {
                match &anchor {
                    Some(next) => insert_before(&container, &element, next),
                    None => append_child(&container, &element),
                }
                if positions[i] >= 0 {
                    moves += 1;
                }
            }
            anchor = Some(element);
        }

        let diff_ms = now() - diff_start;
        let total_ops = inserts + removes + moves + updates;
        let ns_per_op = if total_ops > 0 {
            diff_ms.max(0.001) * 1_000_000.0 / total_ops as f64
        } else {
            0.0
        };

        let heading = create(&document, "h2");
        heading.set_text_content("Rust component (wasm)");

        let table = create(&document, "table");
        append_row(&document, &table, "old rows", &count.to_string());
        append_row(&document, &table, "new rows", &new_keys.len().to_string());
        append_row(&document, &table, "inserts", &inserts.to_string());
        append_row(&document, &table, "removes", &removes.to_string());
        append_row(&document, &table, "moves", &moves.to_string());
        append_row(&document, &table, "updates", &updates.to_string());
        append_row(&document, &table, "total", &format!("{diff_ms:.2} ms"));
        append_row(&document, &table, "ns/op", &format!("{ns_per_op:.1}"));

        if let Some(body) = document.body() {
            body.append_child(&element_as_node(&heading));
            body.append_child(&element_as_node(&table));
        }
    }
}

export!(Component);
