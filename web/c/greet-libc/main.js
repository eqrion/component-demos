import { init, load } from "../../host/common.js";

init();
const { greet } = await load({
  jco: () => import("./jco/greet.js"),
  wasm: new URL("./native/greet.wasm", import.meta.url),
});

const name = document.createElement("input");
name.value = "world";
const out = document.createElement("pre");

function update() {
  out.textContent = greet(name.value);
}
name.addEventListener("input", update);

document.body.append("name: ", name, out);
update();
