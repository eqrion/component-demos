import { load } from "../../host/loader.js";

const { run } = await load({
  jco: () => import("./jco/hello_world.js"),
  wasm: new URL("./native/hello_world.wasm", import.meta.url),
});

run();
