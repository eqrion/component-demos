import { init, load } from "../../host/common.js";

init();
const { run } = await load({
  jco: () => import("./jco/dom_traversal.js"),
  wasm: new URL("./native/dom_traversal.wasm", import.meta.url),
});

const params = new URLSearchParams(window.location.search);
const depth = Number(params.get("depth") ?? 8);
const numChildren = Number(params.get("num_children") ?? 4);
window.depth.textContent = `${depth}`;
window.numChildren.textContent = `${numChildren}`;
await new Promise(res => requestAnimationFrame(res)); // redraw page

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
  performance.mark("js-start");
  performance.mark("build-start");
  const root = buildTree(document, depth, numChildren);
  performance.mark("build-end");
  const buildMeasure = performance.measure("build", "build-start", "build-end");
  const buildMs = buildMeasure.duration;

  performance.mark("traverse-start");
  const nodeTotal = traverse(root);
  performance.mark("traverse-end");
  const traverseMeasure = performance.measure("traverse", "traverse-start", "traverse-end");
  const traverseMs = traverseMeasure.duration;

  const usPerNode = (traverseMs * 1_000) / nodeTotal;

  renderReport("Raw JS", [
    ["nodes", `${nodeTotal}`],
    ["build", `${buildMs.toFixed(3)} ms`],
    ["traverse (total)", `${traverseMs.toFixed(3)} ms`],
    ["traverse (per node)", `${usPerNode.toFixed(3)} µs`],
  ]);

  performance.mark("js-end");
  performance.measure("js", "js-start", "js-end");
}

runRawJs(depth, numChildren);
run(depth, numChildren);
