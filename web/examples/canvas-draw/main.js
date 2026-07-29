import { init, load, parseDuration, getTableRowValuesByName } from "../../host/common.js";

const CANVAS_SIZE = 400;
const RECT_SIZE = 3;

function renderReport(title, canvas, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);
  document.body.appendChild(canvas);

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

function runRawJs(rects) {
  performance.mark("js-start");
  const canvas = document.createElement("canvas");
  canvas.width = CANVAS_SIZE;
  canvas.height = CANVAS_SIZE;
  const ctx = canvas.getContext("2d");
  ctx.fillStyle = "indianred";

  performance.mark("draw-start");
  for (let i = 0; i < rects; i++) {
    const x = Math.random() * (CANVAS_SIZE - RECT_SIZE);
    const y = Math.random() * (CANVAS_SIZE - RECT_SIZE);
    ctx.fillRect(x, y, RECT_SIZE, RECT_SIZE);
  }
  performance.mark("draw-end");
  const ms = performance.measure("draw", "draw-start", "draw-end").duration;
  const usPerCall = (ms * 1_000) / rects;

  renderReport("Raw JS", canvas, [
    ["rects", rects.toString()],
    ["total", `${ms.toFixed(3)} ms`],
    ["per fill_rect()", `${usPerCall.toFixed(3)} µs`],
  ]);

  performance.mark("js-end");
  performance.measure("js", "js-start", "js-end");
}

async function runAll(params) {
  const delay = 50;

  // js
  runRawJs(params.rects);
  await new Promise(res => setTimeout(res, delay));

  // c++ (emscripten)
  const { default: createEmscripten } = await import("../../cpp/canvas-draw/emscripten/canvas_draw.mjs");
  const emscripten = await createEmscripten();
  emscripten.run(params.rects);
  await new Promise(res => setTimeout(res, delay));

  // rust
  const { run: runRust } = await load({
    jco: () => import("../../rust/canvas-draw/jco/canvas_draw.js"),
    wasm: new URL("../../rust/canvas-draw/native/canvas_draw.wasm", import.meta.url),
  });
  runRust(params.rects);
  await new Promise(res => setTimeout(res, delay));

  // c++ (component)
  const { run: runCpp } = await load({
    jco: () => import("../../cpp/canvas-draw/jco/canvas_draw.js"),
    wasm: new URL("../../cpp/canvas-draw/native/canvas_draw.wasm", import.meta.url),
  });
  runCpp(params.rects);
  await new Promise(res => setTimeout(res, delay));

  // c (component)
  const { run: runC } = await load({
    jco: () => import("../../c/canvas-draw/jco/canvas_draw.js"),
    wasm: new URL("../../c/canvas-draw/native/canvas_draw.wasm", import.meta.url),
  });
  runC(params.rects);
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

// The metrics table isn't the immediate sibling of the heading here (a <canvas>
// sits between them), so walk forward to the first table.
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
    measurements[heading.textContent] = {
      "total": parseDuration(getTableRowValuesByName(table, "total")[0]),
      "per fill_rect()": parseDuration(getTableRowValuesByName(table, "per fill_rect()")[0]),
    };
  }
  return measurements;
}

init(runAll, clear, getMeasurements);
