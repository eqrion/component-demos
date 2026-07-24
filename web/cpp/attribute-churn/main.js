import { init, load } from "../../host/common.js";
import createEmscripten from "./emscripten/attribute_churn.mjs";

init();
const params = new URLSearchParams(window.location.search);
const elementCount = Number(params.get("elements") ?? 2000);
const iters = Number(params.get("iters") ?? 20);
window.numElements.textContent = `${elementCount}`;
window.iters.textContent = `${iters}`;
await new Promise(res => requestAnimationFrame(res)); // redraw page

const ATTRS = ["data-x", "data-y", "class", "title"];

// --- Raw JS baseline (copied from the Rust example's main.js) ---------------

function renderReport(title, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);

  const table = document.createElement("table");
  for (const [label, value] of rows) {
    const row = document.createElement("tr");
    const th = document.createElement("th");
    th.textContent = label;
    row.appendChild(th);
    const td = document.createElement("td");
    td.textContent = value;
    row.appendChild(td);
    table.appendChild(row);
  }
  document.body.appendChild(table);
}

function runRawJs(elementCount, iters) {
  performance.mark("js-start");
  const elements = Array.from({ length: elementCount }, () => document.createElement("div"));
  const totalWrites = elementCount * iters * ATTRS.length;

  performance.mark("run-start");
  for (let i = 0; i < iters; i++) {
    for (const el of elements) {
      for (const [j, name] of ATTRS.entries()) {
        el.setAttribute(name, `${i}-${j}`);
      }
    }
  }
  performance.mark("run-end");
  const ms = performance.measure("run", "run-start", "run-end").duration;
  const usPerWrite = (ms * 1_000) / totalWrites;

  renderReport("Raw JS", [
    ["num calls", `${totalWrites}`],
    ["total time", `${ms.toFixed(3)} ms`],
    ["per setAttribute()", `${usPerWrite.toFixed(3)} µs`],
  ]);

  performance.mark("js-end");
  performance.measure("js", "js-start", "js-end");
}

// --- Run all three variants, each renders its own report ---------------------

runRawJs(elementCount, iters);

const emscripten = await createEmscripten();
emscripten.run(elementCount, iters);

const { run } = await load({
  jco: () => import("./jco/attribute_churn.js"),
  wasm: new URL("./native/attribute_churn.wasm", import.meta.url),
});
run(elementCount, iters);
