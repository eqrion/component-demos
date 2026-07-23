#![no_std]
extern crate alloc;
extern crate core;

use alloc::format;
use alloc::string::{String, ToString};
use alloc::vec;

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
    world: "canvas-pixels",
    path: "wit",
});

struct Component;

const MAX_REPS: u64 = 1 << 20;

fn checker(
    ctx: &CanvasRenderingContext2d,
    size: u32,
    checker_size: u32,
    color1: &str,
    color2: &str,
) {
    ctx.fill_style(color1);
    ctx.fill_rect(0.0, 0.0, size as f64, size as f64);
    ctx.fill_style(color2);
    for x in 0..(size / checker_size) {
        for y in 0..(size / checker_size) {
            if (x + y) % 2 == 0 {
                ctx.fill_rect(
                    (x * checker_size) as f64,
                    (y * checker_size) as f64,
                    checker_size as f64,
                    checker_size as f64,
                );
            }
        }
    }
}

// Same autoranging timer as string-marshalling: double reps until at
// least `min_ms` has elapsed, so both directions get a trustworthy
// measurement regardless of canvas size.
fn measure(min_ms: u32, mut run: impl FnMut(u64)) -> (u64, f64) {
    let mut reps: u64 = 1;
    loop {
        let start = now();
        run(reps);
        let elapsed = now() - start;
        if elapsed >= min_ms as f64 || reps >= MAX_REPS {
            return (reps, elapsed);
        }
        reps *= 2;
    }
}

fn append_row(document: &Document, table: &Element, cell_tag: &str, cells: &[String]) {
    let row = document.create_element("tr");
    for cell in cells {
        let td = document.create_element(cell_tag);
        td.text_content(cell);
        row.append_child(&td);
    }
    table.append_child(&row);
}

impl Guest for Component {
    // Moves raw RGBA pixel bytes across the boundary via getImageData/
    // putImageData, instead of the UTF-16 strings (string-marshalling) or
    // resource handles (dom-query) the other demos move.
    fn run(size: u32, min_ms: u32) {
        let document = get_window().document();
        let body = document.body().unwrap();

        let heading = document.create_element("h2");
        heading.text_content("Wasm component (Rust)");
        body.append_child(&heading);

        let wrapper = document.create_element("div");
        wrapper.set_attribute("style", "display: flex; gap: 1rem; margin-bottom: 1rem");
        body.append_child(&wrapper);

        let canvas1 = document.create_element("canvas");
        canvas1.set_attribute("width", &size.to_string());
        canvas1.set_attribute("height", &size.to_string());
        let ctx1 = canvas1.get_context2d();
        ctx1.fill_style("steelblue");
        ctx1.fill_rect(0.0, 0.0, size as f64, size as f64);
        checker(&ctx1, size, 32, "steelblue", "sandybrown");
        wrapper.append_child(&canvas1);

        let canvas2 = document.create_element("canvas");
        canvas2.set_attribute("width", &size.to_string());
        canvas2.set_attribute("height", &size.to_string());
        let ctx2 = canvas2.get_context2d();
        checker(&ctx2, size, 16, "mediumturquoise", "indianred");
        wrapper.append_child(&canvas2);

        const MARGIN: u32 = 40;
        let mut pixels = vec![];

        let (get_reps, get_ms) = measure(min_ms, |reps| {
            for _ in 0..reps {
                pixels = ctx1.get_image_data(
                    MARGIN as f64,
                    MARGIN as f64,
                    (size - MARGIN * 2) as f64,
                    (size - MARGIN * 2) as f64,
                );
            }
        });
        let byte_len = pixels.len();
        let (put_reps, put_ms) = measure(min_ms, |reps| {
            for _ in 0..reps {
                ctx2.put_image_data(
                    &pixels,
                    MARGIN as f64,
                    MARGIN as f64,
                    (size - MARGIN * 2) as f64,
                    (size - MARGIN * 2) as f64,
                );
            }
        });

        let get_us = get_ms * 1_000.0 / get_reps as f64;
        let put_us = put_ms * 1_000.0 / put_reps as f64;
        let get_mb_s = (byte_len as f64 * get_reps as f64 / 1_000_000.0) / (get_ms / 1_000.0);
        let put_mb_s = (byte_len as f64 * put_reps as f64 / 1_000_000.0) / (put_ms / 1_000.0);

        let table = document.create_element("table");
        append_row(
            &document,
            &table,
            "th",
            &[
                String::from("direction"),
                String::from("bytes/call"),
                String::from("µs/call"),
                String::from("MB/s"),
            ],
        );
        append_row(
            &document,
            &table,
            "td",
            &[
                String::from("getImageData()"),
                byte_len.to_string(),
                format!("{get_us:.1}"),
                format!("{get_mb_s:.1}"),
            ],
        );
        append_row(
            &document,
            &table,
            "td",
            &[
                String::from("putImageData()"),
                byte_len.to_string(),
                format!("{put_us:.1}"),
                format!("{put_mb_s:.1}"),
            ],
        );

        body.append_child(&table);
    }
}

export!(Component);
