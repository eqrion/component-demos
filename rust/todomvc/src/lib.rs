#![no_std]
extern crate alloc;
extern crate core;

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
    world: "todomvc",
    path: "wit",
});

struct Component;

struct Todo {
    title: &'static str,
    completed: bool,
}

const TODOS: &[Todo] = &[
    Todo {
        title: "Taste JavaScript",
        completed: true,
    },
    Todo {
        title: "Buy a unicorn",
        completed: false,
    },
];

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn set_class(element: &Element, class: &str) {
    element.set_attribute("class", class);
}

fn set_attr(element: &Element, name: &str, value: &str) {
    element.set_attribute(name, value);
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(&element_as_node(child));
}

fn set_text(element: &Element, text: &str) {
    element.set_text_content(text);
}

fn append_text_node(document: &Document, parent: &Element, text: &str) {
    let node = document.create_text_node(text);
    parent.append_child(&text_as_node(&node));
}

fn build_todo_item(document: &Document, todo: &Todo) -> Element {
    let li = create(document, "li");
    if todo.completed {
        set_class(&li, "completed");
    }

    let view = create(document, "div");
    set_class(&view, "view");
    append_child(&li, &view);

    let toggle = create(document, "input");
    set_class(&toggle, "toggle");
    set_attr(&toggle, "type", "checkbox");
    if todo.completed {
        set_attr(&toggle, "checked", "checked");
    }
    append_child(&view, &toggle);

    let label = create(document, "label");
    set_text(&label, todo.title);
    append_child(&view, &label);

    let destroy = create(document, "button");
    set_class(&destroy, "destroy");
    append_child(&view, &destroy);

    li
}

fn build_filter(document: &Document, label: &str, href: &str, selected: bool) -> Element {
    let li = create(document, "li");
    let link = create(document, "a");
    set_attr(&link, "href", href);
    if selected {
        set_class(&link, "selected");
    }
    set_text(&link, label);
    append_child(&li, &link);
    li
}

impl Guest for Component {
    fn run() {
        let document = get_window().get_document();
        let body = document.get_body().unwrap();

        let root = create(&document, "section");
        set_class(&root, "todoapp");

        let header = create(&document, "header");
        set_class(&header, "header");
        append_child(&root, &header);

        let h1 = create(&document, "h1");
        set_text(&h1, "todos");
        append_child(&header, &h1);

        let new_todo = create(&document, "input");
        set_class(&new_todo, "new-todo");
        set_attr(&new_todo, "placeholder", "What needs to be done?");
        set_attr(&new_todo, "autofocus", "autofocus");
        append_child(&header, &new_todo);

        let main = create(&document, "section");
        set_class(&main, "main");
        append_child(&root, &main);

        let toggle_all = create(&document, "input");
        set_class(&toggle_all, "toggle-all");
        set_attr(&toggle_all, "id", "toggle-all");
        set_attr(&toggle_all, "type", "checkbox");
        append_child(&main, &toggle_all);

        let toggle_all_label = create(&document, "label");
        set_attr(&toggle_all_label, "for", "toggle-all");
        set_text(&toggle_all_label, "Mark all as complete");
        append_child(&main, &toggle_all_label);

        let todo_list = create(&document, "ul");
        set_class(&todo_list, "todo-list");
        append_child(&main, &todo_list);

        let remaining = TODOS.iter().filter(|t| !t.completed).count();
        for todo in TODOS {
            append_child(&todo_list, &build_todo_item(&document, todo));
        }

        let footer = create(&document, "footer");
        set_class(&footer, "footer");
        append_child(&root, &footer);

        let count = create(&document, "span");
        set_class(&count, "todo-count");
        let strong = create(&document, "strong");
        set_text(&strong, &remaining.to_string());
        append_child(&count, &strong);
        append_text_node(
            &document,
            &count,
            if remaining == 1 {
                " item left"
            } else {
                " items left"
            },
        );
        append_child(&footer, &count);

        let filters = create(&document, "ul");
        set_class(&filters, "filters");
        append_child(&filters, &build_filter(&document, "All", "#/", true));
        append_child(
            &filters,
            &build_filter(&document, "Active", "#/active", false),
        );
        append_child(
            &filters,
            &build_filter(&document, "Completed", "#/completed", false),
        );
        append_child(&footer, &filters);

        let clear_completed = create(&document, "button");
        set_class(&clear_completed, "clear-completed");
        set_text(&clear_completed, "Clear completed");
        append_child(&footer, &clear_completed);

        body.append_child(&element_as_node(&root));
    }
}

export!(Component);
