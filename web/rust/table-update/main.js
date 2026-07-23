import { init, load } from "../../host/common.js";

init();
const { run } = await load({
  jco: () => import("./jco/table_update.js"),
  wasm: new URL("./native/table_update.wasm", import.meta.url),
});

const params = new URLSearchParams(window.location.search);
const rowCount = Number(params.get("rows") ?? 2000);
window.numRows.textContent = `${rowCount}`;
await new Promise(res => setTimeout(res, 0));

function isPrime(n) {
  for (let i = 2; i <= Math.floor(n / 2); i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}

function buildReport(rows) {
  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of ["phase", "total ms", "µs/row", "µs/row touched (est.)"]) {
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
  return table;
}

function runRawJs(rowCount) {
  const heading = document.createElement("h2");
  heading.textContent = "Raw JS";
  document.body.appendChild(heading);

  const toggle = document.createElement("details");
  toggle.setAttribute("style", "margin-bottom: 1rem");
  const toggleTitle = document.createElement("summary");
  toggleTitle.textContent = "Result";
  toggle.appendChild(toggleTitle);
  document.body.appendChild(toggle);

  const tableEl = document.createElement("table");
  const tbody = document.createElement("tbody");
  tableEl.appendChild(tbody);
  toggle.appendChild(tableEl);

  const createStart = performance.now();
  const rows = [];
  for (let i = 1; i <= rowCount; i++) {
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
  for (let idx = 0; idx < rows.length; idx++) {
    const i = idx + 1;
    if (isPrime(i)) {
      const [tr, td] = rows[idx];
      td.textContent = `row ${i} (prime)`;
      tr.setAttribute("data-prime", "data-prime");
      updated++;
    }
  }
  const updateMs = performance.now() - updateStart;

  const clearStart = performance.now();
  let cleared = 0;
  for (const [tr] of rows) {
    if (tr.getAttribute("data-prime") === null) {
      tr.remove();
      cleared++;
    }
  }
  const clearMs = performance.now() - clearStart;

  document.body.appendChild(buildReport([
    ["create", createMs.toFixed(3), ((createMs * 1_000) / rowCount).toFixed(3), "-"],
    ["update (primes)", updateMs.toFixed(3), ((updateMs * 1_000) / rowCount).toFixed(3), ((updateMs * 1_000) / updated).toFixed(3)],
    ["clear (non-primes)", clearMs.toFixed(3), ((clearMs * 1_000) / rowCount).toFixed(3), ((clearMs * 1_000) / cleared).toFixed(3)],
  ]));
}

runRawJs(rowCount);
run(rowCount);
