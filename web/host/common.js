import * as webNative from "./web-native.js";
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
  const instance = new WebAssembly.ComponentInstance(component, { ...webNative });
  return instance.exports;
}

export function init() {
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
  nav.appendChild(toggle)

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
}
