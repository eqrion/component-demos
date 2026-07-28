import { init, load, parseDuration, getTableColumnValuesByName } from "../../host/common.js";

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
  performance.mark("js-start");

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

  performance.mark("create-start");
  const rows = [];
  for (let i = 1; i <= rowCount; i++) {
    const tr = document.createElement("tr");
    const td = document.createElement("td");
    td.textContent = `row ${i}`;
    tr.appendChild(td);
    tbody.appendChild(tr);
    rows.push([tr, td]);
  }
  performance.mark("create-end");
  const createMs = performance.measure("create", "create-start", "create-end").duration;

  performance.mark("update-start");
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
  performance.mark("update-end");
  const updateMs = performance.measure("update", "update-start", "update-end").duration;

  performance.mark("clear-start");
  let cleared = 0;
  for (const [tr] of rows) {
    if (tr.getAttribute("data-prime") === null) {
      tr.remove();
      cleared++;
    }
  }
  performance.mark("clear-end");
  const clearMs = performance.measure("clear", "clear-start", "clear-end").duration;

  document.body.appendChild(buildReport([
    ["create", createMs.toFixed(3), ((createMs * 1_000) / rowCount).toFixed(3), "-"],
    ["update (primes)", updateMs.toFixed(3), ((updateMs * 1_000) / rowCount).toFixed(3), ((updateMs * 1_000) / updated).toFixed(3)],
    ["clear (non-primes)", clearMs.toFixed(3), ((clearMs * 1_000) / rowCount).toFixed(3), ((clearMs * 1_000) / cleared).toFixed(3)],
  ]));

  performance.mark("js-end");
  performance.measure("js", "js-start", "js-end");
}

async function runAll(params) {
  const delay = 50;

  // js
  runRawJs(params.rows);
  await new Promise(res => setTimeout(res, delay));

  // c++ (emscripten)
  const { default: createEmscripten } = await import("../../cpp/table-update/emscripten/table_update.mjs");
  const emscripten = await createEmscripten();
  emscripten.run(params.rows);
  await new Promise(res => setTimeout(res, delay));

  // rust
  const { run: runRust } = await load({
    jco: () => import("../../rust/table-update/jco/table_update.js"),
    wasm: new URL("../../rust/table-update/native/table_update.wasm", import.meta.url),
  });
  runRust(params.rows);
  await new Promise(res => setTimeout(res, delay));

  // c++ (component)
  const { run: runCpp } = await load({
    jco: () => import("../../cpp/table-update/jco/table_update.js"),
    wasm: new URL("../../cpp/table-update/native/table_update.wasm", import.meta.url),
  });
  runCpp(params.rows);
  await new Promise(res => setTimeout(res, delay));

  // c (component)
  const { run: runC } = await load({
    jco: () => import("../../c/table-update/jco/table_update.js"),
    wasm: new URL("../../c/table-update/native/table_update.wasm", import.meta.url),
  });
  runC(params.rows);
  await new Promise(res => setTimeout(res, delay));
}

function clear() {
  let next = document.querySelector("body script").nextSibling;
  while (next) {
    const toRemove = next;
    next = next.nextSibling;
    toRemove.remove();
  }
}

// A <details> with the live row table sits between the heading and the metrics
// table, so walk forward to the first sibling table.
function metricsTable(heading) {
  let el = heading.nextElementSibling;
  while (el && el.tagName !== "TABLE") {
    el = el.nextElementSibling;
  }
  return el;
}

function getMeasurements() {
  const measurements = {};
  for (const heading of document.querySelectorAll("h2")) {
    const table = metricsTable(heading);
    const phases = getTableColumnValuesByName(table, "phase");
    const totalMs = getTableColumnValuesByName(table, "total ms");
    const usRow = getTableColumnValuesByName(table, "µs/row");
    const m = {};
    for (const phase of ["create", "update (primes)", "clear (non-primes)"]) {
      const i = phases.indexOf(phase);
      m[`${phase}: total ms`] = parseDuration(`${totalMs[i]} ms`);
      m[`${phase}: µs/row`] = parseDuration(`${usRow[i]} µs`);
    }
    measurements[heading.textContent] = m;
  }
  return measurements;
}

init(runAll, 10, clear, getMeasurements);
