import { load } from "../../host/loader.js";

const { run } = await load({
  jco: () => import("./jco/attribute_churn.js"),
  wasm: new URL("./native/attribute_churn.wasm", import.meta.url),
});

const params = new URLSearchParams(window.location.search);
const elementCount = Number(params.get("elements") ?? 2000);
const frames = Number(params.get("frames") ?? 20);

const ATTRS = ["data-x", "data-y", "class", "title"];

function renderReport(title, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);

  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of ["approach", "total ms", "ns/write"]) {
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

function runRawJs(elementCount, frames) {
  const elements = Array.from({ length: elementCount }, () => document.createElement("div"));
  const totalWrites = elementCount * frames * ATTRS.length;

  const start = performance.now();
  for (let frame = 0; frame < frames; frame++) {
    for (const el of elements) {
      ATTRS.forEach((name, i) => el.setAttribute(name, `${frame}-${i}`));
    }
  }
  const ms = performance.now() - start;
  const nsPerWrite = (ms * 1_000_000) / totalWrites;

  renderReport("Raw JS", [["individual (1 call/attribute)", ms.toFixed(2), nsPerWrite.toFixed(1)]]);
}

runRawJs(elementCount, frames);
run(elementCount, frames);
