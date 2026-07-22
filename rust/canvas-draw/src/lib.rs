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

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn set_attr(element: &Element, name: &str, value: &str) {
    element.set_attribute(name, TrustedTypeOrString::String(value.to_string()));
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(child);
}

fn append_row(document: &Document, table: &Element, label: &str, value: &str) {
    let row = create(document, "tr");
    let th = create(document, "th");
    th.text_content(label);
    append_child(&row, &th);
    let td = create(document, "td");
    td.text_content(value);
    append_child(&row, &td);
    append_child(table, &row);
}

impl Guest for Component {
    // Canvas 2D instead of the DOM tree: a tight fillRect loop with plain
    // numeric args and no strings or extra resource handles per call, to
    // see whether the boundary overhead the other demos see is mostly a
    // DOM-specific (resource-handle/string) cost or shows up for any
    // frequent host call.
    fn run(rects: u32) {
        let document = get_window().document();
        let body = document.body().unwrap();

        let canvas = create(&document, "canvas");
        set_attr(&canvas, "width", &CANVAS_SIZE.to_string());
        set_attr(&canvas, "height", &CANVAS_SIZE.to_string());
        let ctx = canvas.get_context2d();
        ctx.fill_style("steelblue");

        let start = now();
        let mut state = now() as u32;
        for _ in 0..rects {
            let x = rand(&mut state) * (CANVAS_SIZE - RECT_SIZE);
            let y = rand(&mut state) * (CANVAS_SIZE - RECT_SIZE);
            ctx.fill_rect(x, y, RECT_SIZE, RECT_SIZE);
        }
        let ms = now() - start;
        let us_per_call = ms * 1_000.0 / rects as f64;

        let heading = create(&document, "h2");
        heading.text_content("Wasm component (Rust)");

        let table = create(&document, "table");
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

export!(Component);
