import "todomvc-common/base.css";
import "todomvc-app-css/index.css";
import { load } from "../../host/loader.js";

const { run } = await load({
  jco: () => import("./jco/todomvc.js"),
  wasm: new URL("./native/todomvc.wasm", import.meta.url),
});

run();
