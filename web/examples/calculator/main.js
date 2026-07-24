import { init, load } from "../../host/common.js";

init();

function calculator(label, add, sub) {
  const heading = document.createElement("h2");
  heading.textContent = label;

  const a = document.createElement("input");
  a.type = "number";
  a.value = "2";
  const b = document.createElement("input");
  b.type = "number";
  b.value = "3";
  const out = document.createElement("pre");

  function update() {
    const x = Number(a.value);
    const y = Number(b.value);
    out.textContent = `add(${x}, ${y}) = ${add(x, y)}\nsub(${x}, ${y}) = ${sub(x, y)}`;
  }
  a.addEventListener("input", update);
  b.addEventListener("input", update);

  document.body.append(heading, "a: ", a, " b: ", b, out);
  update();
}

const rust = await load({
  jco: () => import("../../rust/calculator/jco/calculator.js"),
  wasm: new URL("../../rust/calculator/native/calculator.wasm", import.meta.url),
});
calculator("Rust", rust.add, rust.sub);

const c = await load({
  jco: () => import("../../c/calculator/jco/calculator.js"),
  wasm: new URL("../../c/calculator/native/calculator.wasm", import.meta.url),
});
calculator("C", c.add, c.sub);
