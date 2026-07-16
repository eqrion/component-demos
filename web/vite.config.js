import { globSync } from "node:fs";
import { resolve, dirname } from "node:path";
import { defineConfig } from "vite";

const root = import.meta.dirname;

// Vite only bundles `index.html` by default. Every example lives at
// <language>/<example>/index.html, so discover them all and register each as a
// rollup input (keyed by its path, e.g. "rust-hello-world") alongside the
// landing page. Adding an example needs no edits here.
const input = { index: resolve(root, "index.html") };
for (const page of globSync("*/*/index.html", {
  cwd: root,
  exclude: ["dist", "node_modules"],
})) {
  input[dirname(page).replace(/\//g, "-")] = resolve(root, page);
}

export default defineConfig({
  build: {
    rollupOptions: { input },
  },
});
