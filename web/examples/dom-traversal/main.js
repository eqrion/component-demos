import { init, load, parseDuration, getTableRowValuesByName } from "../../host/common.js";

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

async function runAll(params) {
  const delay = 50;

  // js
  runRawJs(params.depth, params.numChildren);
  await new Promise(res => setTimeout(res, delay));

  // c++ (emscripten)
  const { default: createEmscripten } = await import("../../cpp/dom-traversal/emscripten/dom_traversal.mjs");
  const emscripten = await createEmscripten();
  emscripten.run(params.depth, params.numChildren);
  await new Promise(res => setTimeout(res, delay));

  // rust
  const { run: runRust } = await load({
    jco: () => import("../../rust/dom-traversal/jco/dom_traversal.js"),
    wasm: new URL("../../rust/dom-traversal/native/dom_traversal.wasm", import.meta.url),
  });
  runRust(params.depth, params.numChildren);
  await new Promise(res => setTimeout(res, delay));

  // c++ (component)
  const { run: runCpp } = await load({
    jco: () => import("../../cpp/dom-traversal/jco/dom_traversal.js"),
    wasm: new URL("../../cpp/dom-traversal/native/dom_traversal.wasm", import.meta.url),
  });
  runCpp(params.depth, params.numChildren);
  await new Promise(res => setTimeout(res, delay));

  // c (component)
  const { run: runC } = await load({
    jco: () => import("../../c/dom-traversal/jco/dom_traversal.js"),
    wasm: new URL("../../c/dom-traversal/native/dom_traversal.wasm", import.meta.url),
  });
  runC(params.depth, params.numChildren);
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

function getMeasurements() {
  const measurements = {};
  for (const heading of document.querySelectorAll("h2")) {
    const table = heading.nextSibling;
    measurements[heading.textContent] = {
      "build": parseDuration(getTableRowValuesByName(table, "build")[0]),
      "traverse (total)": parseDuration(getTableRowValuesByName(table, "traverse (total)")[0]),
      "traverse (per node)": parseDuration(getTableRowValuesByName(table, "traverse (per node)")[0]),
    };
  }
  return measurements;
}

init(runAll, clear, getMeasurements);
