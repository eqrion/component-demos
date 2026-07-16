#[allow(warnings)]
mod bindings;

use bindings::webidl::baseline::web;
use bindings::webidl::baseline::web::{Document, Element, TrustedTypeOrString};
use bindings::Guest;

struct Component;

struct Todo {
    title: &'static str,
    completed: bool,
}

const TODOS: &[Todo] = &[
    Todo { title: "Taste JavaScript", completed: true },
    Todo { title: "Buy a unicorn", completed: false },
];

fn create(document: &Document, tag: &str) -> Element {
    document.create_element(tag)
}

fn set_class(element: &Element, class: &str) {
    element.set_attribute("class", TrustedTypeOrString::String(class.to_string()));
}

fn set_attr(element: &Element, name: &str, value: &str) {
    element.set_attribute(name, TrustedTypeOrString::String(value.to_string()));
}

fn append_child(parent: &Element, child: &Element) {
    parent.append_child(&web::element_as_node(child));
}

fn append_text(document: &Document, parent: &Element, text: &str) {
    let node = document.create_text_node(text);
    parent.append_child(&web::text_as_node(&node));
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
    append_text(document, &label, todo.title);
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
    append_text(document, &link, label);
    append_child(&li, &link);
    li
}

impl Guest for Component {
    fn run() {
        let document = web::get_window().document();

        let root = create(&document, "section");
        set_class(&root, "todoapp");

        let header = create(&document, "header");
        set_class(&header, "header");
        append_child(&root, &header);

        let h1 = create(&document, "h1");
        append_text(&document, &h1, "todos");
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
        append_text(&document, &toggle_all_label, "Mark all as complete");
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
        append_text(&document, &strong, &remaining.to_string());
        append_child(&count, &strong);
        append_text(&document, &count, if remaining == 1 { " item left" } else { " items left" });
        append_child(&footer, &count);

        let filters = create(&document, "ul");
        set_class(&filters, "filters");
        append_child(&filters, &build_filter(&document, "All", "#/", true));
        append_child(&filters, &build_filter(&document, "Active", "#/active", false));
        append_child(&filters, &build_filter(&document, "Completed", "#/completed", false));
        append_child(&footer, &filters);

        let clear_completed = create(&document, "button");
        set_class(&clear_completed, "clear-completed");
        append_text(&document, &clear_completed, "Clear completed");
        append_child(&footer, &clear_completed);

        if let Some(body) = document.body() {
            body.append_child(&web::element_as_node(&root));
        }
    }
}

bindings::export!(Component with_types_in bindings);
