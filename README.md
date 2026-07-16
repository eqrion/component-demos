# component-demos

WebAssembly Component Model demos: components built from a variety of languages
and toolchains that run in the browser via
[`jco`](https://github.com/bytecodealliance/jco) transpilation. The repo is
arranged so that many languages and build methodologies — and eventually
**native** component execution in the browser — coexist without the top-level
build making any assumptions about how a given demo is built.

Demos come in two flavors:

- **Web API demos** (Rust, `cargo component`) import the Web API as a
  [WIT](https://component-model.bytecodealliance.org/design/wit.html) interface
  and export a single `run()` that does its DOM work synchronously at call time
  (no event listeners — the component model doesn't support callbacks into a
  component yet).
- **Compute demos** (`calculator`: `add`/`sub`; `greet`: `greet(name)`) are tiny
  components with no DOM imports, built several different ways (Rust via
  wit-bindgen, Rust via raw `rustc`, C freestanding, C with wasi-libc, C via
  wit-bindgen). They exist to exercise transpiling output from heterogeneous
  build paths.

## Pipeline

```
guest source (Rust / C / ...)
  --<the demo's own build.sh>-->  .wasm component
  --jco transpile-------------->  JS + core wasm  (webidl:baseline/web mapped to web/host/web-host.js)  [jco path]
  --(copied verbatim)---------->  raw .wasm                                                             [native path, TBD]
  --vite---------------------->   served to the browser
```

How the `.wasm` component gets built is entirely up to each demo's `build.sh`
(cargo component, plain `cargo build`, `clang`, a raw `rustc` invocation, …);
everything downstream of the component is uniform.

The same built component can be consumed two ways, and the repo keeps room for
both per example:

- **jco** — the component is transpiled to JS + core wasm, with its
  `webidl:baseline/web` import wired to the hand-written host glue in
  `web/host/web-host.js`. This is effectively a **polyfill** for native
  component support, and is the path that works today. Output lands in
  `web/<language>/<example>/jco/`.
- **native** — the raw `.wasm` component, loaded directly by a browser that
  understands components. The mechanism is not defined yet; for now each build
  just stages the raw component in `web/<language>/<example>/native/` so the
  page can reach for it once there's something to load it with.

## Layout

Top-level folders are **per language**; second-level folders are **per
example**. Each example owns its build, so the top-level `build.sh` makes no
assumptions about how anything is built.

```
build.sh                     # discovers */*/build.sh, runs each, then serves vite
install_wasi_sdk.sh          # fetches the wasi-sdk sysroot into _sysroot/ (for the C demos)
web.wit                      # curated WIT interface the Web API demos import
web-full.wit                 # full generated interface, for reference (unused)
rust/                        # a language bucket (no Cargo workspace — each crate is standalone)
  hello-world/ todomvc/ ...  # Web API demos (cargo component)
  calculator/                # compute demo, wit-bindgen + plain cargo build (native wasip2)
  calculator-raw/            # compute demo, raw #[no_mangle] + rustc --component-type
  <example>/
    build.sh                 # build the component -> jco transpile -> stage native
c/                           # another language bucket
  calculator/                # freestanding clang, --export-all
  greet-freestanding/        # bump allocator, no libc
  greet-libc/                # wasi-sdk sysroot (malloc/free), reactor
  greet-bindgen/             # wit-bindgen-generated C bindings + sysroot
  <example>/
    build.sh  <name>.c  <name>.wit
web/
  build.sh -> (n/a)          # web has no build.sh; it's the host, not an example
  transpile.sh               # shared, mechanical jco step (the "polyfill")
  vite.config.js             # auto-discovers web/*/*/index.html
  index.html                 # landing page
  host/web-host.js           # hand-written web.wit impl against the real DOM
  <language>/<example>/
    index.html main.js       # the page + entry point for this example
    jco/                     # jco output (generated, gitignored)
    native/                  # raw .wasm copy for the native path (generated, gitignored)
```

- **`build.sh`** (root) — discovers every `*/*/build.sh` and runs it, then
  (optionally) starts vite. It knows nothing language- or example-specific, so
  adding an example or a whole new language folder needs no edits here.
- **`<language>/<example>/build.sh`** — builds one example end to end: the
  language-specific compile, then the mechanical jco transpile (via
  `web/transpile.sh`), then staging the raw component for the native path.
- **`web/transpile.sh`** — the one place the jco knowledge lives. The transpile
  is mechanical: a pure function of the built component and the shared host
  glue, identical for every example (`--map webidl:baseline/web=…/web-host.js`).
  Every example's `build.sh` calls it rather than duplicating the invocation.
- **`install_wasi_sdk.sh`** — downloads the latest wasi-sdk sysroot into
  `_sysroot/` (gitignored) and installs the wasm32 compiler-rt builtins clang
  needs. Required for the C demos that use libc (`c/greet-libc`,
  `c/greet-bindgen`); the freestanding C demos need neither.
- **`web.wit`** — the curated WIT interface the Web API demos import: just the
  resources/functions the ten demos call (`window`, `document`, `element`,
  `node`, `text`, `dom-token-list`, `canvas-rendering-context2d`, plus the
  `element-as-node`/`text-as-node` casts and a `now` clock). This is what's
  small enough for `cargo component`'s `wit-component` encoder to handle — see
  "Why a curated subset?" below.
- **`web-full.wit`** — the complete generated interface (700+ resources, 1698
  functions) for reference. Not imported by anything here.
- **`web/host/web-host.js`** — hand-written implementation of `web.wit` against
  the real DOM (see "Why hand-written host glue?" below). Wired in at transpile
  time via `jco transpile --map`.

### Web API demos (under `rust/`)

- **`hello-world/`** — creates an `<h1>`, sets a class, appends a text node, and
  inserts it into `document.body`.
- **`todomvc/`** — builds the canonical [TodoMVC](https://todomvc.com/) markup
  from a hardcoded list of todos and inserts it into `document.body`. Static
  only (no add/toggle/delete interactions).
- **`dom-traversal/`** — microbenchmark: builds a detached tree of `?nodes=`
  elements, then repeatedly walks it via `first-child`/`next-sibling`, reporting
  build time and per-node traversal cost. The web page runs an equivalent
  raw-JS traversal first for comparison.
- **`string-marshalling/`** — microbenchmark: sweeps `textContent` get/set
  across a range of string sizes, reporting ns/call and MB/s in each direction.
  The web page runs an equivalent raw-JS sweep first for comparison. `?ms=` sets
  how long each size/direction is measured for; an autoranging timer doubles the
  rep count until that much time has elapsed, so cheap and expensive operations
  both get a trustworthy measurement.
- **`attribute-churn/`** — microbenchmark: writes the same set of attributes to
  the same elements two ways — one `set-attribute` host call per attribute vs.
  one `set-attributes` host call per element carrying all of them — to isolate
  how much of the cost is pure per-call overhead versus argument marshalling.
  `?elements=`/`?frames=` control the workload size.
- **`dom-query/`** — microbenchmark: looks up the same set of elements two ways
  — one `get-element-by-id` host call per element vs. one
  `get-elements-by-class-name` host call that returns all of them at once — to
  isolate the cost of returning many resource handles from a single call versus
  one call per handle. `?count=`/`?iters=` control the workload size.
- **`table-rows/`** — composite benchmark, js-framework-benchmark-style: creates
  a table of rows, patches every 10th row's text, then removes all rows, timing
  each phase. Combines what the other DOM demos measure in isolation into one
  sequence closer to a real app's per-frame work. `?rows=` controls the row
  count. Scripted rather than interactive — no event listeners, per the callback
  limitation above.
- **`canvas-draw/`** — microbenchmark, non-DOM: a tight `fillRect` loop against a
  `CanvasRenderingContext2D`, using only numeric args and no strings or extra
  resource handles per call. Checks whether the boundary overhead the DOM demos
  see is DOM-specific or shows up for any frequent host call. `?rects=` controls
  the loop count.
- **`canvas-pixels/`** — microbenchmark, non-DOM: moves raw RGBA pixel bytes
  across the boundary via `get-image-data`/`put-image-data` on a `?size=`x`?size=`
  canvas, reporting ns/call and MB/s in each direction — the same
  autoranging-timer approach as `string-marshalling`, but for binary buffers
  instead of UTF-16 strings.
- **`vdom-diff/`** — composite benchmark: a real (if minimal) keyed-list
  reconciliation, the kind a Rust UI framework's diffing layer would do. Given a
  deterministic old/new list transformation (some rows dropped, some added, a
  small chunk of the survivors relocated, some relabeled), it computes the
  minimal patch set — using the same LIS-based move-minimization technique as
  Vue 3/Inferno, not a naive full-rebuild — and applies only that patch set to
  the real DOM. Reports inserts/removes/moves/updates plus total time. `?rows=`
  controls the row count.

### Compute demos (under `rust/` and `c/`)

The same two trivial components, each built a different way — the point is to
show heterogeneous build paths all feeding the same jco/native pipeline. Their
web pages are tiny interactive forms (numbers for `calculator`, a name for
`greet`) that call the transpiled export directly.

- **`rust/calculator/`** — Rust, wit-bindgen `generate!` macro + plain
  `cargo build` targeting `wasm32-wasip2`.
- **`rust/calculator-raw/`** — Rust, raw `#[no_mangle]` exports with a
  `--component-type` linker arg — no bindings generator.
- **`c/calculator/`** — C, `clang -nostdlib --export-all`, no libc.
- **`c/greet-freestanding/`** — C, hand-rolled bump allocator, no libc/sysroot.
- **`c/greet-libc/`** — C, wasi-sdk sysroot (`malloc`/`free`), reactor model.
- **`c/greet-bindgen/`** — C, wit-bindgen-generated bindings + wasi-sdk sysroot.

## Usage

Requires `cargo` + [`cargo component`](https://github.com/bytecodealliance/cargo-component)
(Rust demos), a real upstream `clang`/LLVM with wasm32 support (C demos — Apple
clang won't work; use e.g. Homebrew `llvm`), `wit-bindgen` and `wasm-tools`, and
Node.js. For the libc-based C demos, first run `./install_wasi_sdk.sh` once to
populate `_sysroot/`. From the repo root:

```
./build.sh            # build every demo (compile + jco transpile + stage native)
./build.sh --dev      # ... then start the Vite dev server
./build.sh --build    # ... then produce a production build in web/dist
./build.sh --preview  # ... then produce a production build and preview it
```

`build.sh` discovers every `*/*/build.sh` and runs it, then serves vite; it
makes no assumptions about how any demo builds. It always rebuilds from source
first. To rebuild a single demo without the others, run its own script
directly, e.g. `rust/hello-world/build.sh` (this assumes `web/node_modules` is
already installed, since it uses the shared jco there).

## Why a curated subset?

`web-full.wit` is generated by a separate local tool (`canonwit`, in
`~/src/webidl-index`) that converts indexed browser WebIDL into one big WIT
interface. Importing that whole interface into a Rust component hits a hard
`wit-component` 0.41 binary-encoding limit ("instance type declaration size is
out of bounds") — it's simply too large to encode as a single imported
interface with the current toolchain, independent of any WIT correctness
issues. `web.wit` is a subset extracted from the same generator output, keeping
only what these demos call plus whatever types those signatures transitively
require, which fits comfortably.

## Why hand-written host glue?

jco can auto-bind an import in the `webidl:` namespace straight to `globalThis`,
which would mean no hand-written glue at all. We tried it and hit two jco 1.25.2
bugs: its WebIDL proxy crashes on any `option<T>` argument that lowers to JS
`undefined`, and its cast-detection heuristic expects casts as resource methods
(`resource.asTarget()`) rather than the free functions `canonwit` emits.
`web/host/web-host.js` is the fallback: plain JS classes wrapping real DOM
objects, one per WIT resource. It's small because `web.wit` is small — see
`~/src/webidl-index/canonwit/JCO_COMPAT.md` for the full writeup, including
notes toward fixing the cast mismatch in `canonwit` if a future project wants to
revisit zero-config binding.
