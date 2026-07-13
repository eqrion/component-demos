import { run } from "../gen/table-rows/table_rows.js";

const params = new URLSearchParams(window.location.search);
const rowCount = Number(params.get("rows") ?? 1000);

function renderReport(title, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);

  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of ["phase", "total ms", "ns/row"]) {
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

function runRawJs(rowCount) {
  const tableEl = document.createElement("table");
  const tbody = document.createElement("tbody");
  tableEl.appendChild(tbody);
  document.body.appendChild(tableEl);

  const createStart = performance.now();
  const rows = [];
  for (let i = 0; i < rowCount; i++) {
    const tr = document.createElement("tr");
    const td = document.createElement("td");
    td.textContent = `row ${i}`;
    tr.appendChild(td);
    tbody.appendChild(tr);
    rows.push([tr, td]);
  }
  const createMs = performance.now() - createStart;

  const updateStart = performance.now();
  let updated = 0;
  rows.forEach(([, td], i) => {
    if (i % 10 === 0) {
      td.textContent = `row ${i} !!!`;
      updated++;
    }
  });
  const updateMs = performance.now() - updateStart;

  const clearStart = performance.now();
  for (const [tr] of rows) tr.remove();
  const clearMs = performance.now() - clearStart;

  renderReport("Raw JS", [
    ["create", createMs.toFixed(2), ((createMs * 1_000_000) / rowCount).toFixed(1)],
    ["update (1/10 rows)", updateMs.toFixed(2), ((updateMs * 1_000_000) / Math.max(updated, 1)).toFixed(1)],
    ["clear", clearMs.toFixed(2), ((clearMs * 1_000_000) / rowCount).toFixed(1)],
  ]);
}

runRawJs(rowCount);
run(rowCount);
