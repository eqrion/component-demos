function toInt32(val) {
  return val >> 0;
}

const _debugLog = (...args) => {
  if (!globalThis?.process?.env?.JCO_DEBUG) { return; }
  console.debug(...args);
}

const fetchCompile = url => fetch(url).then(WebAssembly.compileStreaming);

const instantiateCore = WebAssembly.instantiate;


let exports0;
let exports0Add;

function add(arg0, arg1) {
  const ret = exports0Add(toInt32(arg0), toInt32(arg1));
  return ret;
}
let exports0Sub;

function sub(arg0, arg1) {
  const ret = exports0Sub(toInt32(arg0), toInt32(arg1));
  return ret;
}

const $init = (() => {
  let gen = (function* init () {
    const module0 = fetchCompile(new URL('./calculator.core.wasm', import.meta.url));
    ({ exports: exports0 } = yield instantiateCore(yield module0));
    exports0Add = exports0.add;
    exports0Sub = exports0.sub;
  })();
  let promise, resolve, reject;
  function runNext (value) {
    try {
      let done;
      do {
        ({ value, done } = gen.next(value));
      } while (!(value instanceof Promise) && !done);
      if (done) {
        if (resolve) resolve(value);
        else return value;
      }
      if (!promise) promise = new Promise((_resolve, _reject) => (resolve = _resolve, reject = _reject));
      value.then(runNext, reject);
    }
    catch (e) {
      if (reject) reject(e);
      else throw e;
    }
  }
  const maybeSyncReturn = runNext(null);
  return promise || maybeSyncReturn;
})();

await $init;

export { add, sub,  }