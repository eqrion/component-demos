import { add, sub } from "./jco/calculator.js";

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

document.body.append("a: ", a, " b: ", b, out);
update();
