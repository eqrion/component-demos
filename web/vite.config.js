import { resolve } from "node:path";
import { defineConfig } from "vite";

const root = import.meta.dirname;

// Vite only bundles `index.html` by default; list every demo page so
// `vite build` (and `preview`) produce all of them, not just the landing
// page.
export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        index: resolve(root, "index.html"),
        hello: resolve(root, "hello.html"),
        todomvc: resolve(root, "todomvc.html"),
        "dom-traversal": resolve(root, "dom-traversal.html"),
        "string-marshalling": resolve(root, "string-marshalling.html"),
        "attribute-churn": resolve(root, "attribute-churn.html"),
        "dom-query": resolve(root, "dom-query.html"),
        "table-rows": resolve(root, "table-rows.html"),
        "canvas-draw": resolve(root, "canvas-draw.html"),
        "canvas-pixels": resolve(root, "canvas-pixels.html"),
        "vdom-diff": resolve(root, "vdom-diff.html"),
      },
    },
  },
});
