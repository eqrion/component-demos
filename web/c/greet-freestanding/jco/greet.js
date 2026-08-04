let dv = new DataView(new ArrayBuffer());
const dataView = mem => dv.buffer === mem.buffer ? dv : dv = new DataView(mem.buffer);

const utf8Decoder = new TextDecoder();

const utf8Encoder = new TextEncoder();
let utf8EncodedLen = 0;
function utf8Encode(s, realloc, memory) {
  if (typeof s !== 'string') throw new TypeError('expected a string');
  if (s.length === 0) {
    utf8EncodedLen = 0;
    return 1;
  }
  let buf = utf8Encoder.encode(s);
  let ptr = realloc(0, 0, 1, buf.length);
  new Uint8Array(memory.buffer).set(buf, ptr);
  utf8EncodedLen = buf.length;
  return ptr;
}

const _debugLog = (...args) => {
  if (!globalThis?.process?.env?.JCO_DEBUG) { return; }
  console.debug(...args);
}

const base64Compile = str => WebAssembly.compile(Uint8Array.from(atob(str), b => b.charCodeAt(0)));

const instantiateCore = WebAssembly.instantiate;


let exports0;
let memory0;
let realloc0;
let exports0Greet;

function greet(arg0) {
  var ptr0 = utf8Encode(arg0, realloc0, memory0);
  var len0 = utf8EncodedLen;
  const ret = exports0Greet(ptr0, len0);
  var ptr1 = dataView(memory0).getInt32(ret + 0, true);
  var len1 = dataView(memory0).getInt32(ret + 4, true);
  var result1 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr1, len1));
  return result1;
}

const $init = (() => {
  let gen = (function* init () {
    const module0 = base64Compile('AGFzbQEAAAABDwJgAn9/AX9gBH9/f38BfwMDAgABBAUBcAEBAQUDAQACBggBfwFBgIAECwchAwZtZW1vcnkCAAVncmVldAAADGNhYmlfcmVhbGxvYwABCsEBAoABAQJ/QQBBACgAg4CEgAA2AJOAhIAAQQBBACgAgICEgAA2ApCAhIAAAkAgAUUNAEEAIQIDQCACIgJBl4CEgABqIAAgAmotAAA6AAAgAkEBaiIDIQIgASADRw0ACwtBAEGQgISAADYCkKCEgABBACABQQdqNgKUoISAAEGQoISAAAs9AAJAIAJBACgCmKCEgABqQX9qQQAgAmtxIgIgA2oiA0GBgAFJDQAAC0EAIAM2ApighIAAIAJBoKCEgABqCwsQAQBBgIAECwhIZWxsbywgAABKBG5hbWUACwpncmVldC53YXNtARYCAAVncmVldAEMY2FiaV9yZWFsbG9jBxIBAA9fX3N0YWNrX3BvaW50ZXIJCgEABy5yb2RhdGEAlQEJcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkCBWNsYW5nXzIyLjEuMC13YXNpLXNkayAoaHR0cHM6Ly9naXRodWIuY29tL2xsdm0vbGx2bS1wcm9qZWN0IDQ0MzRkYWJiNjk5MTY4NTZiODI0ZjY4YTY0YjAyOWM2NzE3NWU1MzIpDXdpdC1jb21wb25lbnQHMC4yNDYuMgCUAQ90YXJnZXRfZmVhdHVyZXMIKwtidWxrLW1lbW9yeSsPYnVsay1tZW1vcnktb3B0KxZjYWxsLWluZGlyZWN0LW92ZXJsb25nKwptdWx0aXZhbHVlKw9tdXRhYmxlLWdsb2JhbHMrE25vbnRyYXBwaW5nLWZwdG9pbnQrD3JlZmVyZW5jZS10eXBlcysIc2lnbi1leHQ');
    ({ exports: exports0 } = yield instantiateCore(yield module0));
    memory0 = exports0.memory;
    realloc0 = exports0.cabi_realloc;
    exports0Greet = exports0.greet;
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

export { greet,  }