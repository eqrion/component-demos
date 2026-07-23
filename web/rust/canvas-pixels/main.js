import { init, load } from "../../host/common.js";

init();
const { run } = await load({
  jco: () => import("./jco/canvas_pixels.js"),
  wasm: new URL("./native/canvas_pixels.wasm", import.meta.url),
});

const params = new URLSearchParams(window.location.search);
const size = Number(params.get("size") ?? 256);
const minMs = 10;

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

function checker(ctx, size, checkerSize, color1, color2) {
  ctx.fillStyle = color1;
  ctx.fillRect(0, 0, size, size);
  ctx.fillStyle = color2;
  for (let x = 0; x < Math.floor(size / checkerSize); x++) {
    for (let y = 0; y < Math.floor(size / checkerSize); y++) {
      if ((x + y) % 2 === 0) {
        ctx.fillRect(x * checkerSize, y * checkerSize, checkerSize, checkerSize);
      }
    }
  }
}

function buildTable(headerCells, rows) {
  const table = document.createElement("table");
  const header = document.createElement("tr");
  for (const label of headerCells) {
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
  return table;
}

function runRawJs(size, minMs) {
  const heading = document.createElement("h2");
  heading.textContent = "Raw JS";
  document.body.appendChild(heading);

  const wrapper = document.createElement("div");
  wrapper.setAttribute("style", "display: flex; gap: 1rem; margin-bottom: 1rem");
  document.body.appendChild(wrapper);

  const canvas1 = document.createElement("canvas");
  canvas1.width = size;
  canvas1.height = size;
  const ctx1 = canvas1.getContext("2d");
  ctx1.fillStyle = "steelblue";
  ctx1.fillRect(0, 0, size, size);
  checker(ctx1, size, 32, "steelblue", "sandybrown");
  wrapper.appendChild(canvas1);

  const canvas2 = document.createElement("canvas");
  canvas2.width = size;
  canvas2.height = size;
  const ctx2 = canvas2.getContext("2d");
  checker(ctx2, size, 16, "mediumturquoise", "indianred");
  wrapper.appendChild(canvas2);

  const MARGIN = 40;
  let pixels;

  const [getReps, getMs] = measure(minMs, (reps) => {
    for (let i = 0; i < reps; i++) {
      pixels = ctx1.getImageData(MARGIN, MARGIN, size - MARGIN * 2, size - MARGIN * 2);
    }
  });
  const byteLen = pixels.data.length;
  const [putReps, putMs] = measure(minMs, (reps) => {
    for (let i = 0; i < reps; i++) {
      ctx2.putImageData(pixels, MARGIN, MARGIN);
    }
  });

  const getUs = (getMs * 1_000) / getReps;
  const putUs = (putMs * 1_000) / putReps;
  const getMbS = (byteLen * getReps / 1_000_000) / (getMs / 1_000);
  const putMbS = (byteLen * putReps / 1_000_000) / (putMs / 1_000);

  document.body.appendChild(buildTable(
    ["direction", "bytes/call", "µs/call", "MB/s"],
    [
      ["getImageData()", `${byteLen}`, getUs.toFixed(1), getMbS.toFixed(1)],
      ["putImageData()", `${byteLen}`, putUs.toFixed(1), putMbS.toFixed(1)],
    ],
  ));
}

runRawJs(size, minMs);
run(size, minMs);
