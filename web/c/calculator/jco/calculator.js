function toInt32(val) {
  return val >> 0;
}

const _debugLog = (...args) => {
  if (!globalThis?.process?.env?.JCO_DEBUG) { return; }
  console.debug(...args);
}

const base64Compile = str => WebAssembly.compile(Uint8Array.from(atob(str), b => b.charCodeAt(0)));

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
    const module0 = base64Compile('AGFzbQEAAAABCgJgAABgAn9/AX8DBAMAAQEFAwEAAQZIC38BQYCABAt/AEGAgAQLfwBBgIAEC38AQQALfwBBgIAEC38AQYCABAt/AEGAgAQLfwBBgIAEC38AQQALfwBBAQt/AEGAgAQLB9cBDwZtZW1vcnkCABFfX3dhc21fY2FsbF9jdG9ycwAAD19fc3RhY2tfcG9pbnRlcgMAA2FkZAABA3N1YgACDF9fZHNvX2hhbmRsZQMBCl9fZGF0YV9lbmQDAgtfX3N0YWNrX2xvdwMDDF9fc3RhY2tfaGlnaAMEDV9fZ2xvYmFsX2Jhc2UDBQtfX2hlYXBfYmFzZQMGCl9faGVhcF9lbmQDBw1fX21lbW9yeV9iYXNlAwgMX190YWJsZV9iYXNlAwkVX193YXNtX2ZpcnN0X3BhZ2VfZW5kAwoKFAMCAAsHACABIABqCwcAIAAgAWsLAEsEbmFtZQAQD2NhbGN1bGF0b3Iud2FzbQEeAwARX193YXNtX2NhbGxfY3RvcnMBA2FkZAIDc3ViBxIBAA9fX3N0YWNrX3BvaW50ZXIAlQEJcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkCBWNsYW5nXzIyLjEuMC13YXNpLXNkayAoaHR0cHM6Ly9naXRodWIuY29tL2xsdm0vbGx2bS1wcm9qZWN0IDQ0MzRkYWJiNjk5MTY4NTZiODI0ZjY4YTY0YjAyOWM2NzE3NWU1MzIpDXdpdC1jb21wb25lbnQHMC4yNDYuMgCUAQ90YXJnZXRfZmVhdHVyZXMIKwtidWxrLW1lbW9yeSsPYnVsay1tZW1vcnktb3B0KxZjYWxsLWluZGlyZWN0LW92ZXJsb25nKwptdWx0aXZhbHVlKw9tdXRhYmxlLWdsb2JhbHMrE25vbnRyYXBwaW5nLWZwdG9pbnQrD3JlZmVyZW5jZS10eXBlcysIc2lnbi1leHQ');
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