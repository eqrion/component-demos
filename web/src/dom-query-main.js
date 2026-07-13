import { run } from "../gen/dom-query/dom_query.js";

const params = new URLSearchParams(window.location.search);
const count = Number(params.get("count") ?? 5000);
const iterations = Number(params.get("iters") ?? 20);

function renderReport(title, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);

  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of ["approach", "total ms", "ns/element"]) {
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

  const total = count * iterations;

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

  const individualNs = (individualMs * 1_000_000) / total;
  const bulkNs = (bulkMs * 1_000_000) / total;

  renderReport("Raw JS", [
    ["individual (getElementById x N)", individualMs.toFixed(2), individualNs.toFixed(1)],
    ["bulk (getElementsByClassName)", bulkMs.toFixed(2), bulkNs.toFixed(1)],
  ]);
}

runRawJs(count, iterations);
run(count, iterations);
