import { init, load } from "../../host/common.js";

init();

// JS
const heading = document.createElement("h1");
heading.classList.add("hello", "from-wasm");
heading.textContent = "Hello from JS!";
document.body.appendChild(heading);

// Rust
const { run: runRust } = await load({
  jco: () => import("../../rust/hello-world/jco/hello_world.js"),
  wasm: new URL("../../rust/hello-world/native/hello_world.wasm", import.meta.url),
});
runRust();

// C++
const { run: runCpp } = await load({
  jco: () => import("../../cpp/hello-world/jco/hello_world.js"),
  wasm: new URL("../../cpp/hello-world/native/hello_world.wasm", import.meta.url),
});
runCpp();

// C
const { run: runC } = await load({
  jco: () => import("../../c/hello-world/jco/hello_world.js"),
  wasm: new URL("../../c/hello-world/native/hello_world.wasm", import.meta.url),
});
runC();
