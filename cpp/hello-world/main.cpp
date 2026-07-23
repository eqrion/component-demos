#include "bindings/hello_world_cpp.h"

#include <array>
#include <functional>
#include <string_view>

namespace dom = demos::hello_world::dom;

void exports::hello_world::Run() {
  dom::Window window = dom::GetWindow();
  dom::Document document = window.GetDocument();

  std::optional<dom::HtmlElement> body = document.GetBody();
  if (!body) {
    return;
  }

  dom::Element heading = document.CreateElement("h1");

  std::array<std::string_view, 2> classes = {"hello", "from-wasm"};
  heading.GetClassList().Add(classes);

  heading.SetTextContent("Hello from Wasm!");

  body->AppendChild(std::cref(heading));
}
