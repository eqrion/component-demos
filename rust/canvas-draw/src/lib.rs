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
    world: "canvas-draw",
    path: "wit",
});

struct Component;

const CANVAS_SIZE: f64 = 400.0;
const RECT_SIZE: f64 = 3.0;

// Simple xorshift prng
fn rand(state: &mut u32) -> f64 {
    let mut x = *state;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    *state = x;

    x as f64 / (u32::MAX as f64 + 1.0)
}

fn append_row(document: &Document, table: &Element, label: &str, value: &str) {
    let row = document.create_element("tr");
    let th = document.create_element("th");
    th.set_text_content(label);
    row.append_child(&th);
    let td = document.create_element("td");
    td.set_text_content(value);
    row.append_child(&td);
    table.append_child(&row);
}

impl Guest for Component {
    // Canvas 2D instead of the DOM tree: a tight fillRect loop with plain
    // numeric args and no strings or extra resource handles per call, to
    // see whether the boundary overhead the other demos see is mostly a
    // DOM-specific (resource-handle/string) cost or shows up for any
    // frequent host call.
    fn run(rects: u32) {
        let document = get_window().get_document();
        let body = document.get_body().unwrap();

        let canvas = document.create_element("canvas");
        canvas.set_attribute("width", &CANVAS_SIZE.to_string());
        canvas.set_attribute("height", &CANVAS_SIZE.to_string());
        let ctx = canvas.get_context2d();
        ctx.set_fill_style("steelblue");

        let start = now();
        let mut state = now() as u32;
        for _ in 0..rects {
            let x = rand(&mut state) * (CANVAS_SIZE - RECT_SIZE);
            let y = rand(&mut state) * (CANVAS_SIZE - RECT_SIZE);
            ctx.fill_rect(x, y, RECT_SIZE, RECT_SIZE);
        }
        let ms = now() - start;
        let us_per_call = ms * 1_000.0 / rects as f64;

        let heading = document.create_element("h2");
        heading.set_text_content("Wasm component (Rust)");

        let table = document.create_element("table");
        append_row(&document, &table, "rects", &rects.to_string());
        append_row(&document, &table, "total", &format!("{ms:.3} ms"));
        append_row(
            &document,
            &table,
            "per fill_rect()",
            &format!("{us_per_call:.3} µs"),
        );

        body.append_child(&heading);
        body.append_child(&canvas);
        body.append_child(&table);
    }
}

export!(Component);
