import { init, load } from "../../host/common.js";

init();

const params = new URLSearchParams(window.location.search);
const rects = Number(params.get("rects") ?? 20000);

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

// js
runRawJs(rects);
await new Promise(res => setTimeout(res, 100));

// c++ (emscripten)
const { default: createEmscripten } = await import("../../cpp/canvas-draw/emscripten/canvas_draw.mjs");
const emscripten = await createEmscripten();
emscripten.run(rects);
await new Promise(res => setTimeout(res, 100));

// rust
const { run: runRust } = await load({
  jco: () => import("../../rust/canvas-draw/jco/canvas_draw.js"),
  wasm: new URL("../../rust/canvas-draw/native/canvas_draw.wasm", import.meta.url),
});
runRust(rects);
await new Promise(res => setTimeout(res, 100));

// c++ (component)
const { run: runCpp } = await load({
  jco: () => import("../../cpp/canvas-draw/jco/canvas_draw.js"),
  wasm: new URL("../../cpp/canvas-draw/native/canvas_draw.wasm", import.meta.url),
});
runCpp(rects);
await new Promise(res => setTimeout(res, 100));

// c (component)
const { run: runC } = await load({
  jco: () => import("../../c/canvas-draw/jco/canvas_draw.js"),
  wasm: new URL("../../c/canvas-draw/native/canvas_draw.wasm", import.meta.url),
});
runC(rects);
