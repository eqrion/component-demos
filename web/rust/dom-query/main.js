import { init, load } from "../../host/common.js";

init();
const { run } = await load({
  jco: () => import("./jco/dom_query.js"),
  wasm: new URL("./native/dom_query.wasm", import.meta.url),
});

const params = new URLSearchParams(window.location.search);
const numElements = Number(params.get("num_elements") ?? 10000);
const iterations = Number(params.get("iters") ?? 20);
window.numElements.textContent = `${numElements}`;
window.iters.textContent = `${iterations}`;
await new Promise(res => setTimeout(res, 0)); // redraw page

function renderReport(title, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);

  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of ["approach", "iterations", "total ms", "µs/element"]) {
    const th = document.createElement("th");
    th.textContent = label;
    header.appendChild(th);
  }
  table.appendChild(header);

  for (const cells of rows) {
    const row = document.createElement("tr");
    for (const cell of cells) {
      const td = document.createElement("td");
      td.textContent = cell;
      row.appendChild(td);
    }
    table.appendChild(row);
  }
  document.body.appendChild(table);
}

function runRawJs(count, iterations) {
  const container = document.createElement("div");
  container.setAttribute("style", "display:none");
  const ids = Array.from({ length: count }, (_, i) => `raw-item-${i}`);
  for (const id of ids) {
    const item = document.createElement("div");
    item.id = id;
    item.className = "raw-item";
    container.appendChild(item);
  }
  document.body.appendChild(container);

  const numIndividualLookups = count * iterations;

  const individualStart = performance.now();
  for (let i = 0; i < iterations; i++) {
    for (const id of ids) {
      document.getElementById(id);
    }
  }
  const individualMs = performance.now() - individualStart;

  const bulkStart = performance.now();
  for (let i = 0; i < iterations; i++) {
    document.getElementsByClassName("raw-item");
  }
  const bulkMs = performance.now() - bulkStart;

  const usPerIndividual = (individualMs * 1_000) / numIndividualLookups;

  renderReport("Raw JS", [
    ["individual (getElementById)", `${iterations}`, individualMs.toFixed(3), usPerIndividual.toFixed(3)],
    ["bulk (getElementsByClassName)", `${iterations}`, bulkMs.toFixed(3), "n/a"],
  ]);
}

runRawJs(numElements, iterations);
run(numElements, iterations);
