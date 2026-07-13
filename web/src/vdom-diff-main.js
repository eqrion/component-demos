import { run } from "../gen/vdom-diff/vdom_diff.js";

const params = new URLSearchParams(window.location.search);
const rowCount = Number(params.get("rows") ?? 1000);

// Deterministic old -> new transformation exercising all four patch kinds:
// drop 1/4 of rows (removes), relocate the front 10% of the survivors to
// the back (moves), prepend a batch of brand new keys (inserts), and vary
// label text by key (updates). Relocating one small chunk — rather than
// reversing the whole list — keeps the other ~90% of survivors in
// relative order, so a real diff only has to move the relocated chunk
// while a full-rebuild approach would touch every row regardless.
function buildNewKeys(count) {
  const survivors = [];
  for (let k = 0; k < count; k++) if (k % 4 !== 0) survivors.push(k);
  const split = Math.floor(survivors.length / 10);
  const head = survivors.slice(0, split);
  const tail = survivors.slice(split);
  const fresh = [];
  for (let k = count; k < count + Math.floor(count / 10); k++) fresh.push(k);
  return fresh.concat(tail, head);
}

function labelFor(key) {
  return key % 5 === 0 ? `row ${key} !!!` : `row ${key}`;
}

// Longest increasing subsequence, by index: mask[i] is true when values[i]
// is already in relatively correct order and doesn't need to move. Same
// O(n log n) patience-sort technique real vdom diffs (Vue 3, Inferno) use
// to minimize DOM moves during keyed-list reconciliation.
function lisMask(values) {
  const n = values.length;
  const tails = [];
  const prev = new Array(n).fill(-1);
  for (let i = 0; i < n; i++) {
    const v = values[i];
    let lo = 0;
    let hi = tails.length;
    while (lo < hi) {
      const mid = (lo + hi) >> 1;
      if (values[tails[mid]] < v) lo = mid + 1;
      else hi = mid;
    }
    if (lo > 0) prev[i] = tails[lo - 1];
    if (lo === tails.length) tails.push(i);
    else tails[lo] = i;
  }
  const mask = new Array(n).fill(false);
  if (tails.length > 0) {
    let k = tails[tails.length - 1];
    while (k >= 0) {
      mask[k] = true;
      k = prev[k];
    }
  }
  return mask;
}

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

function runRawJs(count) {
  const container = document.createElement("ul");
  document.body.appendChild(container);

  const rows = [];
  for (let key = 0; key < count; key++) {
    const element = document.createElement("li");
    const label = `row ${key}`;
    element.textContent = label;
    container.appendChild(element);
    rows.push({ key, label, element });
  }

  const newKeys = buildNewKeys(count);

  const start = performance.now();

  const oldIndexOf = new Map();
  rows.forEach((r, i) => oldIndexOf.set(r.key, i));

  const positions = newKeys.map((k) => (oldIndexOf.has(k) ? oldIndexOf.get(k) : -1));
  const reusedIndices = [];
  const reusedPositions = [];
  positions.forEach((p, i) => {
    if (p >= 0) {
      reusedIndices.push(i);
      reusedPositions.push(p);
    }
  });
  const lis = lisMask(reusedPositions);
  const noMove = new Array(newKeys.length).fill(false);
  reusedIndices.forEach((i, j) => {
    noMove[i] = lis[j];
  });

  const oldRows = rows.slice();
  const usedOld = new Array(rows.length).fill(false);
  const newRows = new Array(newKeys.length).fill(null);
  let inserts = 0;
  let removes = 0;
  let moves = 0;
  let updates = 0;

  newKeys.forEach((key, i) => {
    const label = labelFor(key);
    if (oldIndexOf.has(key)) {
      const oldI = oldIndexOf.get(key);
      usedOld[oldI] = true;
      const row = oldRows[oldI];
      if (row.label !== label) {
        row.element.textContent = label;
        row.label = label;
        updates++;
      }
      newRows[i] = row;
    } else {
      const element = document.createElement("li");
      element.textContent = label;
      inserts++;
      newRows[i] = { key, label, element };
    }
  });

  oldRows.forEach((row, i) => {
    if (!usedOld[i]) {
      row.element.remove();
      removes++;
    }
  });

  let anchor = null;
  for (let i = newRows.length - 1; i >= 0; i--) {
    const row = newRows[i];
    if (!noMove[i]) {
      if (anchor) container.insertBefore(row.element, anchor);
      else container.appendChild(row.element);
      if (positions[i] >= 0) moves++;
    }
    anchor = row.element;
  }

  const ms = performance.now() - start;
  const totalOps = inserts + removes + moves + updates;
  const nsPerOp = totalOps > 0 ? (Math.max(ms, 0.001) * 1_000_000) / totalOps : 0;

  renderReport("Raw JS", [
    ["old rows", rows.length.toString()],
    ["new rows", newKeys.length.toString()],
    ["inserts", inserts.toString()],
    ["removes", removes.toString()],
    ["moves", moves.toString()],
    ["updates", updates.toString()],
    ["total", `${ms.toFixed(2)} ms`],
    ["ns/op", nsPerOp.toFixed(1)],
  ]);
}

runRawJs(rowCount);
run(rowCount);
