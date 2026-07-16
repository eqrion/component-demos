import { run } from "./jco/canvas_pixels.js";

const params = new URLSearchParams(window.location.search);
const size = Number(params.get("size") ?? 256);
const minMs = Number(params.get("ms") ?? 10);

const MAX_REPS = 1 << 20;

// Same autoranging timer as string-marshalling: double reps until at
// least `minMs` has elapsed, so both directions get a trustworthy
// measurement regardless of canvas size.
function measure(minMs, run) {
  let reps = 1;
  for (;;) {
    const start = performance.now();
    run(reps);
    const elapsed = performance.now() - start;
    if (elapsed >= minMs || reps >= MAX_REPS) {
      return [reps, elapsed];
    }
    reps *= 2;
  }
}

function renderReport(title, canvas, rows) {
  const heading = document.createElement("h2");
  heading.textContent = title;
  document.body.appendChild(heading);
  document.body.appendChild(canvas);

  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of ["direction", "bytes/call", "ns/call", "MB/s"]) {
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

function runRawJs(size, minMs) {
  const canvas = document.createElement("canvas");
  canvas.width = size;
  canvas.height = size;
  const ctx = canvas.getContext("2d");
  ctx.fillStyle = "indianred";
  ctx.fillRect(0, 0, size, size);

  const byteLen = size * size * 4;
  const pixels = new Uint8ClampedArray(byteLen).fill(128);

  const [getReps, getMs] = measure(minMs, (reps) => {
    for (let i = 0; i < reps; i++) ctx.getImageData(0, 0, size, size);
  });
  const [putReps, putMs] = measure(minMs, (reps) => {
    for (let i = 0; i < reps; i++) ctx.putImageData(new ImageData(pixels, size, size), 0, 0);
  });

  const getNs = (getMs * 1_000_000) / getReps;
  const putNs = (putMs * 1_000_000) / putReps;
  const getMbS = (byteLen * getReps) / (getMs * 1_000);
  const putMbS = (byteLen * putReps) / (putMs * 1_000);

  renderReport("Raw JS", canvas, [
    ["get (read pixels)", byteLen.toString(), getNs.toFixed(1), getMbS.toFixed(1)],
    ["put (write pixels)", byteLen.toString(), putNs.toFixed(1), putMbS.toFixed(1)],
  ]);
}

runRawJs(size, minMs);
run(size, minMs);
