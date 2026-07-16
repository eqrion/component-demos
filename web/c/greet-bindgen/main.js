import { greet } from "./jco/greet.js";

const name = document.createElement("input");
name.value = "world";
const out = document.createElement("pre");

function update() {
  out.textContent = greet(name.value);
}
name.addEventListener("input", update);

document.body.append("name: ", name, out);
update();
