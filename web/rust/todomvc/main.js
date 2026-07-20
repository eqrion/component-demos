import "todomvc-common/base.css";
import "todomvc-app-css/index.css";
import { init, load } from "../../host/common.js";

init();
const { run } = await load({
  jco: () => import("./jco/todomvc.js"),
  wasm: new URL("./native/todomvc.wasm", import.meta.url),
});

run();
