import { load } from "../../host/loader.js";

const { run } = await load({
  jco: () => import("./jco/canvas_draw.js"),
  wasm: new URL("./native/canvas_draw.wasm", import.meta.url),
});

const params = new URLSearchParams(window.location.search);
const rects = Number(params.get("rects") ?? 50000);

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
  const canvas = document.createElement("canvas");
  canvas.width = CANVAS_SIZE;
  canvas.height = CANVAS_SIZE;
  const ctx = canvas.getContext("2d");
  ctx.fillStyle = "indianred";

  const bound = CANVAS_SIZE - RECT_SIZE;
  const start = performance.now();
  for (let i = 0; i < rects; i++) {
    const x = (i * 7) % bound;
    const y = (i * 13) % bound;
    ctx.fillRect(x, y, RECT_SIZE, RECT_SIZE);
  }
  const ms = performance.now() - start;
  const nsPerCall = (ms * 1_000_000) / rects;

  renderReport("Raw JS", canvas, [
    ["rects", rects.toString()],
    ["total", `${ms.toFixed(2)} ms`],
    ["per call", `${nsPerCall.toFixed(1)} ns`],
  ]);
}

runRawJs(rects);
run(rects);
