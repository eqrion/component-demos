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
    world: "string-marshalling",
    path: "wit",
});

struct Component;

const SIZES: [usize; 5] = [8, 128, 1024, 16384, 262144];
const MAX_REPS: u64 = 1 << 24;

fn append_row(document: &Document, table: &Element, cell_tag: &str, cells: &[String]) {
    let row = document.create_element("tr");
    for cell in cells {
        let td = document.create_element(cell_tag);
        td.set_text_content(cell);
        row.append_child(&td);
    }
    table.append_child(&row);
}

// Autoranging timer: doubles the rep count until at least `min_ms` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
fn measure(min_ms: f64, mut run: impl FnMut(u64)) -> (u64, f64) {
    let mut reps: u64 = 100;
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
        let document = get_window().get_document();
        let body = document.get_body().unwrap();

        let el = document.create_element("div");
        let min_ms = min_ms.max(1) as f64;

        let heading = document.create_element("h2");
        heading.set_text_content("Wasm component (Rust)");

        let table = document.create_element("table");
        append_row(
            &document,
            &table,
            "th",
            &[
                String::from("size"),
                String::from("set µs/call"),
                String::from("set MB/s"),
                String::from("get µs/call"),
                String::from("get MB/s"),
            ],
        );

        for &size in SIZES.iter() {
            let value = "x".repeat(size);
            el.set_text_content(&value);
            debug_assert_eq!(el.get_text_content().len(), size);

            let (set_reps, set_ms) = measure(min_ms, |reps| {
                for _ in 0..reps {
                    el.set_text_content(&value);
                }
            });
            let (get_reps, get_ms) = measure(min_ms, |reps| {
                for _ in 0..reps {
                    let _ = el.get_text_content();
                }
            });

            let set_us_per_call = set_ms * 1_000.0 / set_reps as f64;
            let get_us_per_call = get_ms * 1_000.0 / get_reps as f64;
            let set_mb_per_s = (size as f64 * set_reps as f64) / (set_ms * 1_000.0);
            let get_mb_per_s = (size as f64 * get_reps as f64) / (get_ms * 1_000.0);

            append_row(
                &document,
                &table,
                "td",
                &[
                    format!("{size} B"),
                    format!("{set_us_per_call:.3}"),
                    format!("{set_mb_per_s:.1}"),
                    format!("{get_us_per_call:.3}"),
                    format!("{get_mb_per_s:.1}"),
                ],
            );
        }

        body.append_child(&heading);
        body.append_child(&table);
    }
}

export!(Component);
