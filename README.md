# component-demos

WebAssembly Component Model demos: Rust components that import the Web API
as a [WIT](https://component-model.bytecodealliance.org/design/wit.html)
interface, built with `cargo component`, and run in the browser via
[`jco`](https://github.com/bytecodealliance/jco).

## Pipeline

```
Rust guest (imports web.wit)
  --cargo component build-->  .wasm component
  --jco transpile------------> JS + core wasm  (webidl:baseline/web mapped to web/host/web-host.js)
  --vite---------------------> served to the browser
```

Each demo is a `cargo component` library crate that imports the `web`
interface and exports a single `run()` function. `run()` does all its DOM
work (create elements, set attributes, append children) synchronously at
call time — no event listeners; the component model doesn't support
callbacks into a component yet.

## Layout

- **`web.wit`** — the curated WIT interface the demos actually import: just
  the resources/functions the ten demos call (`window`, `document`,
  `element`, `node`, `text`, `dom-token-list`, `canvas-rendering-context2d`,
  plus the `element-as-node`/`text-as-node` casts and a `now` clock), with
  real signatures from the generator below. This is what's small enough for
  `cargo component`'s `wit-component` encoder to actually handle — see "Why
  a curated subset?" below.
- **`web-full.wit`** — the complete generated interface (700+ resources,
  1698 functions) for reference. Not imported by anything here.
- **`hello-world/`** — creates an `<h1>`, sets a class, appends a text node,
  and inserts it into `document.body`.
- **`todomvc/`** — builds the canonical [TodoMVC](https://todomvc.com/)
  markup from a hardcoded list of todos and inserts it into `document.body`.
  Static only (no add/toggle/delete interactions).
- **`dom-traversal/`** — microbenchmark: builds a detached tree of
  `?nodes=` elements, then repeatedly walks it via `first-child`/
  `next-sibling`, reporting build time and per-node traversal cost. The web
  page runs an equivalent raw-JS traversal first for comparison.
- **`string-marshalling/`** — microbenchmark: sweeps `textContent` get/set
  across a range of string sizes, reporting ns/call and MB/s in each
  direction. The web page runs an equivalent raw-JS sweep first for
  comparison. `?ms=` sets how long each size/direction is measured for; an
  autoranging timer doubles the rep count until that much time has
  elapsed, so cheap and expensive operations both get a trustworthy
  measurement.
- **`attribute-churn/`** — microbenchmark: writes the same set of attributes
  to the same elements two ways — one `set-attribute` host call per
  attribute vs. one `set-attributes` host call per element carrying all of
  them — to isolate how much of the cost is pure per-call overhead versus
  argument marshalling. `?elements=`/`?frames=` control the workload size.
- **`dom-query/`** — microbenchmark: looks up the same set of elements two
  ways — one `get-element-by-id` host call per element vs. one
  `get-elements-by-class-name` host call that returns all of them at once
  — to isolate the cost of returning many resource handles from a single
  call versus one call per handle. `?count=`/`?iters=` control the
  workload size.
- **`table-rows/`** — composite benchmark, js-framework-benchmark-style:
  creates a table of rows, patches every 10th row's text, then removes all
  rows, timing each phase. Combines what the other DOM demos measure in
  isolation into one sequence closer to a real app's per-frame work.
  `?rows=` controls the row count. Scripted rather than interactive — no
  event listeners, per the callback limitation above.
- **`canvas-draw/`** — microbenchmark, non-DOM: a tight `fillRect` loop
  against a `CanvasRenderingContext2D`, using only numeric args and no
  strings or extra resource handles per call. Checks whether the boundary
  overhead the DOM demos see is DOM-specific or shows up for any frequent
  host call. `?rects=` controls the loop count.
- **`canvas-pixels/`** — microbenchmark, non-DOM: moves raw RGBA pixel
  bytes across the boundary via `get-image-data`/`put-image-data` on a
  `?size=`x`?size=` canvas, reporting ns/call and MB/s in each direction —
  the same autoranging-timer approach as `string-marshalling`, but for
  binary buffers instead of UTF-16 strings.
- **`vdom-diff/`** — composite benchmark: a real (if minimal) keyed-list
  reconciliation, the kind a Rust UI framework's diffing layer would do.
  Given a deterministic old/new list transformation (some rows dropped,
  some added, a small chunk of the survivors relocated, some relabeled),
  it computes the minimal patch set — using the same LIS-based
  move-minimization technique as Vue 3/Inferno, not a naive full-rebuild —
  and applies only that patch set to the real DOM. Reports
  inserts/removes/moves/updates plus total time. `?rows=` controls the row
  count.
- **`web/`** — the Vite app that serves all ten demos.
  - `web/host/web-host.js` — hand-written implementation of `web.wit`
    against the real DOM (see "Why hand-written host glue?" below). Wired
    in at transpile time via `jco transpile --map`.
  - `web/gen/` — transpile output (generated, gitignored, not committed).
  - `web/hello.html` / `web/todomvc.html` / `web/dom-traversal.html` /
    `web/string-marshalling.html` / `web/attribute-churn.html` /
    `web/dom-query.html` / `web/table-rows.html` / `web/canvas-draw.html` /
    `web/canvas-pixels.html` / `web/vdom-diff.html` — one page per demo.
- **`justfile`** — the build pipeline (see below).

## Usage

Requires `cargo`, [`cargo component`](https://github.com/bytecodealliance/cargo-component),
and Node.js. From the repo root:

```
just dev       # build both components, transpile, start the Vite dev server
just build     # same, but produce a production build in web/dist
just preview   # preview a production build
```

`just dev`/`just build` always rebuild from source first, so they stay
correct after editing a crate's `src/lib.rs` or `web.wit` itself. Individual
steps (`just build-wasm`, `just transpile`) are also available if you only
need part of the pipeline.

## Why a curated subset?

`web-full.wit` is generated by a separate local tool (`canonwit`, in
`~/src/webidl-index`) that converts indexed browser WebIDL into one big
WIT interface. Importing that whole
interface into a Rust component hits a hard `wit-component` 0.41
binary-encoding limit ("instance type declaration size is out of bounds")
— it's simply too large to encode as a single imported interface with the
current toolchain, independent of any WIT correctness issues. `web.wit`
is a subset extracted from the same generator output, keeping only what
these two demos call plus whatever types those signatures transitively
require, which fits comfortably.

## Why hand-written host glue?

jco can auto-bind an import in the `webidl:` namespace straight to
`globalThis`, which would mean no hand-written glue at all. We tried it and
hit two jco 1.25.2 bugs: its WebIDL proxy crashes on any `option<T>`
argument that lowers to JS `undefined`, and its cast-detection heuristic
expects casts as resource methods (`resource.asTarget()`) rather than the
free functions `canonwit` emits. `web/host/web-host.js` is the fallback:
plain JS classes wrapping real DOM objects, one per WIT resource. It's
small because `web.wit` is small — see `~/src/webidl-index/canonwit/JCO_COMPAT.md`
for the full writeup, including notes toward fixing the cast mismatch in
`canonwit` if a future project wants to revisit zero-config binding.
