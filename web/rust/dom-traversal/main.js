import { run } from "./jco/dom_traversal.js";

const params = new URLSearchParams(window.location.search);
const nodeCount = Number(params.get("nodes") ?? 50000);
const iterations = Number(params.get("iters") ?? 10);

const FANOUT = 8;

function countForDepth(fanout, depth) {
  let total = 0;
  let term = 1;
  for (let i = 0; i <= depth; i++) {
    total += term;
    term *= fanout;
  }
  return total;
}

function chooseDepth(nodeCount) {
  let depth = 0;
  while (countForDepth(FANOUT, depth + 1) <= nodeCount) {
    depth++;
  }
  return depth;
}

function buildTree(document, depth) {
  const el = document.createElement("div");
  if (depth > 0) {
    for (let i = 0; i < FANOUT; i++) {
      el.appendChild(buildTree(document, depth - 1));
    }
  }
  return el;
}

function traverse(node) {
  if (!node) return 0;
  return 1 + traverse(node.firstChild) + traverse(node.nextSibling);
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

function runRawJs(nodeCount, iterations) {
  const depth = chooseDepth(Math.max(nodeCount, 1));
  const iters = Math.max(iterations, 1);

  const buildStart = performance.now();
  const root = buildTree(document, depth);
  const buildMs = performance.now() - buildStart;

  let total = 0;
  const traverseStart = performance.now();
  for (let i = 0; i < iters; i++) {
    total += traverse(root);
  }
  const traverseMs = performance.now() - traverseStart;

  const nodeTotal = total / iters;
  const nsPerNode = nodeTotal > 0 ? (Math.max(traverseMs, 0.001) * 1_000_000) / (iters * nodeTotal) : 0;

  renderReport("Raw JS", [
    ["nodes", nodeTotal.toString()],
    ["iterations", iters.toString()],
    ["build", `${buildMs.toFixed(2)} ms`],
    ["traverse (total)", `${traverseMs.toFixed(2)} ms`],
    ["traverse (per node)", `${nsPerNode.toFixed(1)} ns`],
  ]);
}

runRawJs(nodeCount, iterations);
run(nodeCount, iterations);
