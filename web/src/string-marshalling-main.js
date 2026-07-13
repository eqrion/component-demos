import { run } from "../gen/string-marshalling/string_marshalling.js";

const params = new URLSearchParams(window.location.search);
const minMs = Number(params.get("ms") ?? 10);

const SIZES = [8, 128, 1024, 16384, 262144];
const MAX_REPS = 1 << 24;

// Autoranging timer: doubles the rep count until at least `minMs` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
function measure(minMs, run) {
  let reps = 1;
  for (;;) {
    const start = performance.now();
    run(reps);
    const elapsed = performance.now() - start;
    if (elapsed >= minMs || reps >= MAX_REPS) {
      return [reps, elapsed];
    }
    reps *= 2;
  }
}

function renderReport(title, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);

  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of ["size", "set ns/call", "set MB/s", "get ns/call", "get MB/s"]) {
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

function runRawJs(minMs) {
  const el = document.createElement("div");
  const rows = [];

  for (const size of SIZES) {
    const value = "x".repeat(size);
    el.textContent = value;
    console.assert(el.textContent.length === size);

    const [setReps, setMs] = measure(minMs, (reps) => {
      for (let i = 0; i < reps; i++) el.textContent = value;
    });
    const [getReps, getMs] = measure(minMs, (reps) => {
      for (let i = 0; i < reps; i++) void el.textContent;
    });

    const setNsPerCall = (setMs * 1_000_000) / setReps;
    const getNsPerCall = (getMs * 1_000_000) / getReps;
    const setMbPerS = (size * setReps) / (setMs * 1_000);
    const getMbPerS = (size * getReps) / (getMs * 1_000);

    rows.push([
      `${size} B`,
      setNsPerCall.toFixed(1),
      setMbPerS.toFixed(1),
      getNsPerCall.toFixed(1),
      getMbPerS.toFixed(1),
    ]);
  }

  renderReport("Raw JS", rows);
}

runRawJs(minMs);
run(minMs);
