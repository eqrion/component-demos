# Build both demo components to core wasm + adapt into components.
build-wasm:
    cd hello-world && cargo component build
    cd todomvc && cargo component build
    cd dom-traversal && cargo component build
    cd string-marshalling && cargo component build
    cd attribute-churn && cargo component build
    cd dom-query && cargo component build
    cd table-rows && cargo component build
    cd canvas-draw && cargo component build
    cd canvas-pixels && cargo component build
    cd vdom-diff && cargo component build

# Transpile the built components into web/gen/, wiring the `webidl:baseline/web`
# import to the hand-written host glue in web/host/web-host.js (see that file
# and ~/src/webidl-index/canonwit/JCO_COMPAT.md for why we don't use jco's
# zero-config WebIDL binding here).
transpile: build-wasm
    cd web && npx jco transpile ../hello-world/target/wasm32-wasip1/debug/hello_world.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/hello-world
    cd web && npx jco transpile ../todomvc/target/wasm32-wasip1/debug/todomvc.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/todomvc
    cd web && npx jco transpile ../dom-traversal/target/wasm32-wasip1/debug/dom_traversal.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/dom-traversal
    cd web && npx jco transpile ../string-marshalling/target/wasm32-wasip1/debug/string_marshalling.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/string-marshalling
    cd web && npx jco transpile ../attribute-churn/target/wasm32-wasip1/debug/attribute_churn.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/attribute-churn
    cd web && npx jco transpile ../dom-query/target/wasm32-wasip1/debug/dom_query.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/dom-query
    cd web && npx jco transpile ../table-rows/target/wasm32-wasip1/debug/table_rows.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/table-rows
    cd web && npx jco transpile ../canvas-draw/target/wasm32-wasip1/debug/canvas_draw.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/canvas-draw
    cd web && npx jco transpile ../canvas-pixels/target/wasm32-wasip1/debug/canvas_pixels.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/canvas-pixels
    cd web && npx jco transpile ../vdom-diff/target/wasm32-wasip1/debug/vdom_diff.wasm \
        --map webidl:baseline/web=../../host/web-host.js -o gen/vdom-diff

# Rebuild everything and start the Vite dev server.
dev: transpile
    cd web && npx vite

# Rebuild everything and produce a production build in web/dist.
build: transpile
    cd web && npx vite build

# Preview a production build.
preview:
    cd web && npx vite preview
