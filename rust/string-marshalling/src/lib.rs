#![no_std]
extern crate alloc;
extern crate core;

use alloc::format;
use alloc::string::String;

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
    world: "string-marshalling",
    path: "wit",
});

struct Component;

const SIZES: [usize; 5] = [8, 128, 1024, 16384, 262144];
const MAX_REPS: u64 = 1 << 24;

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(&element_as_node(child));
}

fn append_row(document: &Document, table: &Element, cell_tag: &str, cells: &[String]) {
    let row = create(document, "tr");
    for cell in cells {
        let td = create(document, cell_tag);
        td.set_text_content(cell);
        append_child(&row, &td);
    }
    append_child(table, &row);
}

// Autoranging timer: doubles the rep count until at least `min_ms` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
fn measure(min_ms: f64, mut run: impl FnMut(u64)) -> (u64, f64) {
    let mut reps: u64 = 1;
    loop {
        let start = now();
        run(reps);
        let elapsed = now() - start;
        if elapsed >= min_ms || reps >= MAX_REPS {
            return (reps, elapsed);
        }
        reps *= 2;
    }
}

impl Guest for Component {
    fn run(min_ms: u32) {
        let document = get_window().document();
        let el = create(&document, "div");
        let min_ms = min_ms.max(1) as f64;

        let heading = create(&document, "h2");
        heading.set_text_content("Rust component (wasm)");

        let table = create(&document, "table");
        append_row(
            &document,
            &table,
            "th",
            &[
                String::from("size"),
                String::from("set ns/call"),
                String::from("set MB/s"),
                String::from("get ns/call"),
                String::from("get MB/s"),
            ],
        );

        for &size in SIZES.iter() {
            let value = "x".repeat(size);
            el.set_text_content(&value);
            debug_assert_eq!(el.text_content().len(), size);

            let (set_reps, set_ms) = measure(min_ms, |reps| {
                for _ in 0..reps {
                    el.set_text_content(&value);
                }
            });
            let (get_reps, get_ms) = measure(min_ms, |reps| {
                for _ in 0..reps {
                    let _ = el.text_content();
                }
            });

            let set_ns_per_call = set_ms * 1_000_000.0 / set_reps as f64;
            let get_ns_per_call = get_ms * 1_000_000.0 / get_reps as f64;
            let set_mb_per_s = (size as f64 * set_reps as f64) / (set_ms * 1_000.0);
            let get_mb_per_s = (size as f64 * get_reps as f64) / (get_ms * 1_000.0);

            append_row(
                &document,
                &table,
                "td",
                &[
                    format!("{size} B"),
                    format!("{set_ns_per_call:.1}"),
                    format!("{set_mb_per_s:.1}"),
                    format!("{get_ns_per_call:.1}"),
                    format!("{get_mb_per_s:.1}"),
                ],
            );
        }

        if let Some(body) = document.body() {
            body.append_child(&element_as_node(&heading));
            body.append_child(&element_as_node(&table));
        }
    }
}

export!(Component);
