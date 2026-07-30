import { init, load, parseDuration, getTableColumnValuesByName } from "../../host/common.js";

const SIZES = [8, 128, 1024, 16384, 262144];
const MAX_REPS = 1 << 24;

// Autoranging timer: doubles the rep count until at least `minMs` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
function measure(minMs, run) {
  let reps = 1;
  for (;;) {
    performance.mark("measure-start");
    run(reps);
    performance.mark("measure-end");
    const elapsed = performance.measure("measure", "measure-start", "measure-end").duration;
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
  for (const label of ["size", "set µs/call", "set MB/s", "get µs/call", "get MB/s"]) {
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
  performance.mark("js-start");
  const el = document.createElement("div");
  const rows = [];

  for (const size of SIZES) {
    const value = "x".repeat(size);
    el.textContent = value;
    console.assert(el.textContent.length === size);

    let totalLength = 0;
    const [setReps, setMs] = measure(minMs, (reps) => {
      for (let i = 0; i < reps; i++) el.textContent = value;
    });
    const [getReps, getMs] = measure(minMs, (reps) => {
      for (let i = 0; i < reps; i++) {
        let a = el.textContent;
        totalLength += a.length;
      };
    });

    const setUsPerCall = (setMs * 1_000) / setReps;
    const getUsPerCall = (getMs * 1_000) / getReps;
    const setMbPerS = (size * setReps) / (setMs * 1_000);
    const getMbPerS = (size * getReps) / (getMs * 1_000);

    rows.push([
      `${size} B`,
      setUsPerCall.toFixed(3),
      setMbPerS.toFixed(1),
      getUsPerCall.toFixed(3),
      getMbPerS.toFixed(1),
    ]);
  }

  renderReport("JavaScript", rows);

  performance.mark("js-end");
  performance.measure("js", "js-start", "js-end");
}

async function runAll(params) {
  const delay = 50;

  // js
  runRawJs(params.ms);
  await new Promise(res => setTimeout(res, delay));

  // c++ (emscripten, embind)
  const { default: createEmscripten } = await import("../../cpp/string-marshalling/emscripten/string_marshalling.mjs");
  const emscripten = await createEmscripten();
  emscripten.run(params.ms);
  await new Promise(res => setTimeout(res, delay));

  // c++ (emscripten, EM_JS)
  const { default: createEmJs } = await import("../../cpp/string-marshalling/em-js/string_marshalling.mjs");
  const emJs = await createEmJs();
  emJs._run(params.ms);
  await new Promise(res => setTimeout(res, delay));

  // rust (wasm-bindgen)
  const { default: initWasmBindgen, run: runWasmBindgen } = await import("../../rust/string-marshalling-wasm-bindgen/string_marshalling_wasm_bindgen.js");
  await initWasmBindgen();
  runWasmBindgen(params.ms);
  await new Promise(res => setTimeout(res, delay));

  // rust (component)
  const { run: runRust } = await load({
    jco: () => import("../../rust/string-marshalling/jco/string_marshalling.js"),
    wasm: new URL("../../rust/string-marshalling/native/string_marshalling.wasm", import.meta.url),
  });
  runRust(params.ms);
  await new Promise(res => setTimeout(res, delay));

  // c++ (component)
  const { run: runCpp } = await load({
    jco: () => import("../../cpp/string-marshalling/jco/string_marshalling.js"),
    wasm: new URL("../../cpp/string-marshalling/native/string_marshalling.wasm", import.meta.url),
  });
  runCpp(params.ms);
  await new Promise(res => setTimeout(res, delay));

  // c (component)
  const { run: runC } = await load({
    jco: () => import("../../c/string-marshalling/jco/string_marshalling.js"),
    wasm: new URL("../../c/string-marshalling/native/string_marshalling.wasm", import.meta.url),
  });
  runC(params.ms);
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
    const sizes = getTableColumnValuesByName(table, "size");
    const setUs = getTableColumnValuesByName(table, "set µs/call");
    const getUs = getTableColumnValuesByName(table, "get µs/call");
    const m = {};
    sizes.forEach((s, i) => {
      m[`set ${s}`] = parseDuration(`${setUs[i]} µs`);
      m[`get ${s}`] = parseDuration(`${getUs[i]} µs`);
    });
    measurements[heading.textContent] = m;
  }
  return measurements;
}

init(runAll, clear, getMeasurements);
