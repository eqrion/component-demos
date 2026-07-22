import { init, load } from "../../host/common.js";

init();
const { run } = await load({
  jco: () => import("./jco/attribute_churn.js"),
  wasm: new URL("./native/attribute_churn.wasm", import.meta.url),
});

const params = new URLSearchParams(window.location.search);
const elementCount = Number(params.get("elements") ?? 2000);
const iters = Number(params.get("iters") ?? 20);
window.numElements.textContent = `${elementCount}`;
window.iters.textContent = `${iters}`;
await new Promise(res => setTimeout(res, 0)); // redraw page

const ATTRS = ["data-x", "data-y", "class", "title"];

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
  const elements = Array.from({ length: elementCount }, () => document.createElement("div"));
  const totalWrites = elementCount * iters * ATTRS.length;

  const start = performance.now();
  for (let i = 0; i < iters; i++) {
    for (const el of elements) {
      for (const [j, name] of ATTRS.entries()) {
        el.setAttribute(name, `${i}-${j}`);
      }
    }
  }
  const ms = performance.now() - start;
  const usPerWrite = (ms * 1_000) / totalWrites;

  renderReport("Raw JS", [
    ["num calls", `${totalWrites}`],
    ["total time", `${ms.toFixed(3)} ms`],
    ["per setAttribute()", `${usPerWrite.toFixed(3)} µs`],
  ]);
}

runRawJs(elementCount, iters);
run(elementCount, iters);
