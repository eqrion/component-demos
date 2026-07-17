import * as webNative from "./web-native.js";

export async function load({ jco, wasm }) {
  const backend = new URLSearchParams(location.search).get("backend") ?? "jco";
  if (backend !== "native") {
    return jco();
  }
  const bytes = await (await fetch(wasm)).arrayBuffer();
  const component = new WebAssembly.Component(bytes);
  const instance = new WebAssembly.ComponentInstance(component, { ...webNative });
  return instance.exports;
}
