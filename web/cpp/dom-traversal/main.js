import { init, load } from "../../host/common.js";
import createEmscripten from "./emscripten/dom_traversal.mjs";

init();
const params = new URLSearchParams(window.location.search);
const depth = Number(params.get("depth") ?? 8);
const numChildren = Number(params.get("num_children") ?? 4);
window.depth.textContent = `${depth}`;
window.numChildren.textContent = `${numChildren}`;
await new Promise(res => requestAnimationFrame(res)); // redraw page

// --- Raw JS baseline (copied from the Rust example's main.js) ---------------

function buildTree(document, depth, numChildren) {
  const el = document.createElement("div");
  if (depth > 0) {
    for (let i = 0; i < numChildren; i++) {
      el.appendChild(buildTree(document, depth - 1, numChildren));
    }
  }
  return el;
}

function traverse(node) {
  if (!node) {
    return 0;
  }
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

function runRawJs(depth, numChildren) {
  const buildStart = performance.now();
  const root = buildTree(document, depth, numChildren);
  const buildMs = performance.now() - buildStart;

  const traverseStart = performance.now();
  const nodeTotal = traverse(root);
  const traverseMs = performance.now() - traverseStart;

  const usPerNode = (traverseMs * 1_000) / nodeTotal;

  renderReport("Raw JS", [
    ["nodes", `${nodeTotal}`],
    ["build", `${buildMs.toFixed(2)} ms`],
    ["traverse (total)", `${traverseMs.toFixed(2)} ms`],
    ["traverse (per node)", `${usPerNode.toFixed(3)} µs`],
  ]);
}

// --- Run all three variants, each renders its own report ---------------------

runRawJs(depth, numChildren);

const emscripten = await createEmscripten();
emscripten.run(depth, numChildren);

const { run } = await load({
  jco: () => import("./jco/dom_traversal.js"),
  wasm: new URL("./native/dom_traversal.wasm", import.meta.url),
});
run(depth, numChildren);
