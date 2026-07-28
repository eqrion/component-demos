import * as webHost from "./web-host.js";

function isNative() {
  const backend = new URLSearchParams(location.search).get("backend");
  return backend === "native";
}

export async function load({ jco, wasm }) {
  if (!isNative()) {
    console.log("using jco");
    return jco();
  }
  console.log("using native");
  const bytes = await (await fetch(wasm)).arrayBuffer();
  const component = new WebAssembly.Component(bytes);
  const instance = new WebAssembly.ComponentInstance(component, { ...webHost });
  return instance.exports;
}

function initUI() {
  const nav = document.querySelector("#nav");

  const backLink = document.createElement("a");
  backLink.href = "/index.html";
  backLink.textContent = "← Back to index";

  // Add jco/native toggle
  let toggle;
  {
    const label1 = document.createElement("span");
    label1.textContent = "jco";
    const label2 = document.createElement("span");
    label2.textContent = "Native";

    const input = document.createElement("input");
    input.type = "checkbox";
    input.id = "backend";
    input.hidden = true;
    input.checked = isNative();

    const visual = document.createElement("label");
    visual.htmlFor = input.id;

    const container = document.createElement("div");
    container.classList.add("toggle");
    container.appendChild(label1);
    container.appendChild(input);
    container.appendChild(visual);
    container.appendChild(label2);

    input.addEventListener("change", () => {
      const url = new URL(location.href);
      url.searchParams.set("backend", input.checked ? "native" : "jco");
      window.navigation.navigate(url);
    });
    label1.addEventListener("click", () => {
      input.checked = false;
      input.dispatchEvent(new Event("change"));
    });
    label2.addEventListener("click", () => {
      input.checked = true;
      input.dispatchEvent(new Event("change"));
    });

    toggle = container;
  }

  nav.appendChild(backLink);
  nav.appendChild(toggle);

  // Hydrate top form
  const urlParams = new URLSearchParams(window.location.search);
  const paramInputs = document.querySelectorAll("input[data-param]");
  const finalParams = {};
  for (const input of paramInputs) {
    input.type = "number";
    input.style.width = "4rem";
    const paramValue = urlParams.get(input.dataset.param);
    if (paramValue === null) {
      input.value = input.dataset.default;
    } else {
      input.value = paramValue;
    }
    finalParams[input.dataset.param] = Number(input.value);
  }
  const form = document.querySelector("form");
  if (form) {
    form.addEventListener("submit", e => {
      e.preventDefault();
      const newParams = new URLSearchParams(location.search);
      for (const input of paramInputs) {
        newParams.set(input.dataset.param, input.value);
      }
      location.search = newParams;
    });
    document.querySelector("#reset").addEventListener("click", e => {
      e.preventDefault();
      for (const input of paramInputs) {
        input.value = input.dataset.default;
      }
    });
  }

  if (isNative() && !WebAssembly.Component) {
    const err = document.createElement("div");
    err.classList.add("error");
    err.innerHTML = `
      <p>Your browser does not have native WebAssembly component support.</p>
      <p>In Firefox, enable components by visiting <code>about:config</code> and enabling <code>javascript.options.wasm_components</code>.</p>
    `;
    document.body.appendChild(err);

    throw new Error("No component support");
  }

  return finalParams;
}

function benchmarkReport(allMeasurements) {
  console.log(allMeasurements);
  const langs = Object.keys(allMeasurements[0]);
  const metrics = Object.keys(allMeasurements[0][langs[0]]);

  const res = new DocumentFragment();

  // Build summary table
  const summary = document.createElement("table");
  {
    const header = document.createElement("tr");
    header.appendChild(document.createElement("th"));
    for (const lang of langs) {
      const th = document.createElement("th");
      th.textContent = lang;
      header.appendChild(th);
    }
    summary.appendChild(header);

    for (const metric of metrics) {
      const row1 = document.createElement("tr");
      const row2 = document.createElement("tr");

      const th = document.createElement("th");
      th.textContent = metric;
      th.rowSpan = 2;
      row1.appendChild(th);

      for (const lang of langs) {
        const samples = allMeasurements.map(m => m[lang][metric]);

        let mean, stddev, median, min, max;
        {
          let sum = 0;
          for (const sample of samples) {
            sum += sample;
          }
          mean = sum / samples.length;
        }
        {
          const squaredDevs = samples.map(x => (x - mean) ** 2);
          let devSum = 0;
          for (const squaredDev of squaredDevs) {
            devSum += squaredDev;
          }
          const variance = devSum / samples.length;
          stddev = Math.sqrt(variance);
        }
        {
          median = samples[Math.floor(samples.length / 2)];
        }
        {
          min = samples[0];
          max = samples[0];
          for (const sample of samples) {
            min = Math.min(min, sample);
            max = Math.max(max, sample);
          }
        }

        const cell1 = document.createElement("td");
        const cell2 = document.createElement("td");
        cell1.textContent = `${formatDuration(mean)} ± ${formatDuration(stddev)}`;
        cell2.textContent = `${formatDuration(min)} … ${formatDuration(max)}`;
        row1.appendChild(cell1);
        row2.appendChild(cell2);
      }

      summary.appendChild(row1);
      summary.appendChild(row2);
    }
  }

  // Build raw data table
  const raw = document.createElement("details");
  const rawTitle = document.createElement("summary");
  rawTitle.textContent = "Raw data";
  raw.appendChild(rawTitle);
  const rawTable = document.createElement("table");
  raw.appendChild(rawTable);
  {
    const header = document.createElement("tr");
    for (const lang of langs) {
      for (const metric of metrics) {
        const th = document.createElement("th");
        th.textContent = `${lang}: ${metric}`;
        header.appendChild(th);
      }
    }
    rawTable.appendChild(header);

    for (const m of allMeasurements) {
      const row = document.createElement("tr");
      for (const lang of langs) {
        for (const metric of metrics) {
          const td = document.createElement("td");
          td.textContent = `${m[lang][metric]}`;
          row.appendChild(td);
        }
      }
      rawTable.appendChild(row);
    }
  }

  res.appendChild(summary);
  res.appendChild(raw);

  return res;
}

export async function init(
  runAll,
  benchmarkIters = 0,
  clear = null,
  getMeasurements = null,
) {
  const params = initUI();

  async function benchmark() {
    const allMeasurements = [];
    for (let i = 0; i < benchmarkIters; i++) {
      clear();
      await runAll(params);
      allMeasurements.push(getMeasurements());
    }
    clear();
    document.body.appendChild(benchmarkReport(allMeasurements));
  }

  const benchmarkButton = document.querySelector("#benchmark") ?? document.createElement("button");
  benchmarkButton.disabled = true;
  await runAll(params);
  benchmarkButton.disabled = false;

  benchmarkButton.addEventListener("click", async e => {
    e.preventDefault();
    benchmarkButton.disabled = true;
    await benchmark();
    benchmarkButton.disabled = false;
  });
}

// Get a duration from a string as seconds
export function parseDuration(duration) {
  const m = duration.match(/(\d+(\.\d*)?|\.\d+)\s*(s|ms|µs|ns)/);
  const num = Number(m[1]);
  const unit = m[3];

  let divBy = 1;
  if (unit === "ms") {
    divBy = 1_000;
  } else if (unit === "µs") {
    divBy = 1_000_000;
  } else if (unit === "ns") {
    divBy = 1_000_000_000;
  }

  return num / divBy;
}

export function formatDuration(duration) {
  if (duration < 0.000_001) {
    return `${(duration * 1_000_000_000).toFixed(3)} ns`;
  } else if (duration < 0.001) {
    return `${(duration * 1_000_000).toFixed(3)} µs`;
  } else if (duration < 1) {
    return `${(duration * 1_000).toFixed(3)} ms`;
  } else {
    return `${(duration).toFixed(3)} s`;
  }
}

export function getTableRowValuesByName(table, name) {
  const row = Array.from(table.querySelectorAll("tr")).find(row => {
    const firstCell = row.children[0];
    return firstCell?.tagName === "TH" && firstCell?.textContent === name;
  });
  if (!row) {
    throw new Error(`no row found with name ${name}`);
  }
  const res = [];
  for (let col = 1; col < row.children.length; col++) {
    res.push(row.children[col].textContent);
  }
  return res;
}
