#![no_std]
extern crate alloc;
extern crate core;

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
    world: "hello-world",
    path: "wit",
});

struct Component;

impl Guest for Component {
    fn run() {
        let document = get_window().document();

        let heading = document.create_element("h1");
        heading
            .class_list()
            .add(&["hello".into(), "from-wasm".into()]);
        let text = document.create_text_node("Hello from Wasm!");
        heading.append_child(&text_as_node(&text));

        if let Some(body) = document.body() {
            body.append_child(&element_as_node(&heading));
        }
    }
}

export!(Component);
