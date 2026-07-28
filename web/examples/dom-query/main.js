import { init, load, parseDuration, getTableColumnValuesByName } from "../../host/common.js";

function renderReport(title, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);

  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of ["approach", "iterations", "total ms", "µs/element"]) {
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
  performance.mark("js-start");
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

  const numIndividualLookups = count * iterations;

  performance.mark("individual-start");
  for (let i = 0; i < iterations; i++) {
    for (const id of ids) {
      document.getElementById(id);
    }
  }
  performance.mark("individual-end");
  const individualMs = performance.measure("individual", "individual-start", "individual-end").duration;

  performance.mark("bulk-start");
  for (let i = 0; i < iterations; i++) {
    document.getElementsByClassName("raw-item");
  }
  performance.mark("bulk-end");
  const bulkMs = performance.measure("bulk", "bulk-start", "bulk-end").duration;

  const usPerIndividual = (individualMs * 1_000) / numIndividualLookups;

  renderReport("Raw JS", [
    ["individual (getElementById)", `${iterations}`, individualMs.toFixed(3), usPerIndividual.toFixed(3)],
    ["bulk (getElementsByClassName)", `${iterations}`, bulkMs.toFixed(3), "n/a"],
  ]);

  performance.mark("js-end");
  performance.measure("js", "js-start", "js-end");
}

async function runAll(params) {
  const delay = 50;

  // js
  runRawJs(params.numElements, params.iters);
  await new Promise(res => setTimeout(res, delay));

  // c++ (emscripten)
  const { default: createEmscripten } = await import("../../cpp/dom-query/emscripten/dom_query.mjs");
  const emscripten = await createEmscripten();
  emscripten.run(params.numElements, params.iters);
  await new Promise(res => setTimeout(res, delay));

  // rust
  const { run: runRust } = await load({
    jco: () => import("../../rust/dom-query/jco/dom_query.js"),
    wasm: new URL("../../rust/dom-query/native/dom_query.wasm", import.meta.url),
  });
  runRust(params.numElements, params.iters);
  await new Promise(res => setTimeout(res, delay));

  // c++ (component)
  const { run: runCpp } = await load({
    jco: () => import("../../cpp/dom-query/jco/dom_query.js"),
    wasm: new URL("../../cpp/dom-query/native/dom_query.wasm", import.meta.url),
  });
  runCpp(params.numElements, params.iters);
  await new Promise(res => setTimeout(res, delay));

  // c (component)
  const { run: runC } = await load({
    jco: () => import("../../c/dom-query/jco/dom_query.js"),
    wasm: new URL("../../c/dom-query/native/dom_query.wasm", import.meta.url),
  });
  runC(params.numElements, params.iters);
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
    const table = heading.nextElementSibling;
    const approaches = getTableColumnValuesByName(table, "approach");
    const totalMs = getTableColumnValuesByName(table, "total ms");
    const usPer = getTableColumnValuesByName(table, "µs/element");
    const indiv = approaches.indexOf("individual (getElementById)");
    const bulk = approaches.indexOf("bulk (getElementsByClassName)");
    measurements[heading.textContent] = {
      "individual: total ms": parseDuration(`${totalMs[indiv]} ms`),
      "bulk: total ms": parseDuration(`${totalMs[bulk]} ms`),
      "individual: µs/element": parseDuration(`${usPer[indiv]} µs`),
    };
  }
  return measurements;
}

init(runAll, 10, clear, getMeasurements);
