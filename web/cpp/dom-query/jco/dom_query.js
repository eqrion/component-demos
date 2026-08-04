import { Document, Element, HtmlElement, Performance, PerformanceMark, PerformanceMeasure, Window, getPerformance, getWindow } from '../../../host/web-host.js';

let dv = new DataView(new ArrayBuffer());
const dataView = mem => dv.buffer === mem.buffer ? dv : dv = new DataView(mem.buffer);

function toUint32(val) {
  return val >>> 0;
}

const utf8Decoder = new TextDecoder();

const T_FLAG = 1 << 30;

function rscTableCreateOwn (table, rep) {
  const free = table[0] & ~T_FLAG;
  if (free === 0) {
    table.push(0);
    table.push(rep | T_FLAG);
    return (table.length >> 1) - 1;
  }
  table[0] = table[free << 1];
  table[free << 1] = 0;
  table[(free << 1) + 1] = rep | T_FLAG;
  return free;
}

function rscTableRemove (table, handle) {
  const scope = table[handle << 1];
  const val = table[(handle << 1) + 1];
  const own = (val & T_FLAG) !== 0;
  const rep = val & ~T_FLAG;
  if (val === 0 || (scope & T_FLAG) !== 0) throw new TypeError('Invalid handle');
  table[handle << 1] = table[0] | T_FLAG;
  table[0] = handle | T_FLAG;
  return { rep, scope, own };
}

let curResourceBorrows = [];

const _debugLog = (...args) => {
  if (!globalThis?.process?.env?.JCO_DEBUG) { return; }
  console.debug(...args);
}

const base64Compile = str => WebAssembly.compile(Uint8Array.from(atob(str), b => b.charCodeAt(0)));

const fetchCompile = url => fetch(url).then(WebAssembly.compileStreaming);

const symbolCabiDispose = Symbol.for('cabiDispose');

const symbolRscHandle = Symbol('handle');

const symbolRscRep = Symbol.for('cabiRep');

const symbolDispose = Symbol.dispose || Symbol.for('dispose');

const handleTables = [];

const instantiateCore = WebAssembly.instantiate;


let exports0;
const handleTable1 = [T_FLAG, 0];
const captureTable1= new Map();
let captureCnt1 = 0;
handleTables[1] = handleTable1;

function trampoline1(arg0, arg1) {
  var handle1 = arg0;
  var rep2 = handleTable1[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable1.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Element.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var handle4 = arg1;
  var rep5 = handleTable1[(handle4 << 1) + 1] & ~T_FLAG;
  var rsc3 = captureTable1.get(rep5);
  if (!rsc3) {
    rsc3 = Object.create(Element.prototype);
    Object.defineProperty(rsc3, symbolRscHandle, { writable: true, value: handle4});
    Object.defineProperty(rsc3, symbolRscRep, { writable: true, value: rep5});
  }
  curResourceBorrows.push(rsc3);
  const ret = rsc0.appendChild(rsc3);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  if (!(ret instanceof Element)) {
    throw new TypeError('Resource error: Not a valid "Element" resource.');
  }
  var handle6 = ret[symbolRscHandle];
  if (!handle6) {
    const rep = ret[symbolRscRep] || ++captureCnt1;
    captureTable1.set(rep, ret);
    handle6 = rscTableCreateOwn(handleTable1, rep);
  }
  return handle6;
}

const handleTable2 = [T_FLAG, 0];
const captureTable2= new Map();
let captureCnt2 = 0;
handleTables[2] = handleTable2;

function trampoline3(arg0, arg1) {
  var handle1 = arg0;
  var rep2 = handleTable2[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable2.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(HtmlElement.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var handle4 = arg1;
  var rep5 = handleTable1[(handle4 << 1) + 1] & ~T_FLAG;
  var rsc3 = captureTable1.get(rep5);
  if (!rsc3) {
    rsc3 = Object.create(Element.prototype);
    Object.defineProperty(rsc3, symbolRscHandle, { writable: true, value: handle4});
    Object.defineProperty(rsc3, symbolRscRep, { writable: true, value: rep5});
  }
  curResourceBorrows.push(rsc3);
  const ret = rsc0.appendChild(rsc3);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  if (!(ret instanceof Element)) {
    throw new TypeError('Resource error: Not a valid "Element" resource.');
  }
  var handle6 = ret[symbolRscHandle];
  if (!handle6) {
    const rep = ret[symbolRscRep] || ++captureCnt1;
    captureTable1.set(rep, ret);
    handle6 = rscTableCreateOwn(handleTable1, rep);
  }
  return handle6;
}

const handleTable3 = [T_FLAG, 0];
const captureTable3= new Map();
let captureCnt3 = 0;
handleTables[3] = handleTable3;
const handleTable0 = [T_FLAG, 0];
const captureTable0= new Map();
let captureCnt0 = 0;
handleTables[0] = handleTable0;

function trampoline6(arg0) {
  var handle1 = arg0;
  var rep2 = handleTable3[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable3.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Window.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  const ret = rsc0.getDocument();
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  if (!(ret instanceof Document)) {
    throw new TypeError('Resource error: Not a valid "Document" resource.');
  }
  var handle3 = ret[symbolRscHandle];
  if (!handle3) {
    const rep = ret[symbolRscRep] || ++captureCnt0;
    captureTable0.set(rep, ret);
    handle3 = rscTableCreateOwn(handleTable0, rep);
  }
  return handle3;
}

const handleTable5 = [T_FLAG, 0];
const captureTable5= new Map();
let captureCnt5 = 0;
handleTables[5] = handleTable5;

function trampoline9(arg0) {
  var handle1 = arg0;
  var rep2 = handleTable5[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable5.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(PerformanceMeasure.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  const ret = rsc0.getDuration();
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  return +ret;
}


function trampoline11() {
  const ret = getWindow();
  if (!(ret instanceof Window)) {
    throw new TypeError('Resource error: Not a valid "Window" resource.');
  }
  var handle0 = ret[symbolRscHandle];
  if (!handle0) {
    const rep = ret[symbolRscRep] || ++captureCnt3;
    captureTable3.set(rep, ret);
    handle0 = rscTableCreateOwn(handleTable3, rep);
  }
  return handle0;
}

const handleTable6 = [T_FLAG, 0];
const captureTable6= new Map();
let captureCnt6 = 0;
handleTables[6] = handleTable6;

function trampoline12() {
  const ret = getPerformance();
  if (!(ret instanceof Performance)) {
    throw new TypeError('Resource error: Not a valid "Performance" resource.');
  }
  var handle0 = ret[symbolRscHandle];
  if (!handle0) {
    const rep = ret[symbolRscRep] || ++captureCnt6;
    captureTable6.set(rep, ret);
    handle0 = rscTableCreateOwn(handleTable6, rep);
  }
  return handle0;
}

let exports1;
let memory0;
let realloc0;

function trampoline13(arg0, arg1, arg2, arg3, arg4) {
  var handle1 = arg0;
  var rep2 = handleTable1[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable1.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Element.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var ptr3 = arg1;
  var len3 = arg2;
  var result3 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr3, len3));
  var ptr4 = arg3;
  var len4 = arg4;
  var result4 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr4, len4));
  rsc0.setAttribute(result3, result4);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
}


function trampoline14(arg0, arg1, arg2) {
  var handle1 = arg0;
  var rep2 = handleTable1[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable1.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Element.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var ptr3 = arg1;
  var len3 = arg2;
  var result3 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr3, len3));
  rsc0.setTextContent(result3);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
}


function trampoline15(arg0, arg1) {
  var handle1 = arg0;
  var rep2 = handleTable0[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable0.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Document.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  const ret = rsc0.getBody();
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  var variant4 = ret;
  if (variant4 === null || variant4=== undefined) {
    dataView(memory0).setInt8(arg1 + 0, 0, true);
  } else {
    const e = variant4;
    dataView(memory0).setInt8(arg1 + 0, 1, true);
    if (!(e instanceof HtmlElement)) {
      throw new TypeError('Resource error: Not a valid "HtmlElement" resource.');
    }
    var handle3 = e[symbolRscHandle];
    if (!handle3) {
      const rep = e[symbolRscRep] || ++captureCnt2;
      captureTable2.set(rep, e);
      handle3 = rscTableCreateOwn(handleTable2, rep);
    }
    dataView(memory0).setInt32(arg1 + 4, handle3, true);
  }
}


function trampoline16(arg0, arg1, arg2) {
  var handle1 = arg0;
  var rep2 = handleTable0[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable0.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Document.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var ptr3 = arg1;
  var len3 = arg2;
  var result3 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr3, len3));
  const ret = rsc0.createElement(result3);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  if (!(ret instanceof Element)) {
    throw new TypeError('Resource error: Not a valid "Element" resource.');
  }
  var handle4 = ret[symbolRscHandle];
  if (!handle4) {
    const rep = ret[symbolRscRep] || ++captureCnt1;
    captureTable1.set(rep, ret);
    handle4 = rscTableCreateOwn(handleTable1, rep);
  }
  return handle4;
}


function trampoline17(arg0, arg1, arg2, arg3) {
  var handle1 = arg0;
  var rep2 = handleTable0[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable0.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Document.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var ptr3 = arg1;
  var len3 = arg2;
  var result3 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr3, len3));
  const ret = rsc0.getElementById(result3);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  var variant5 = ret;
  if (variant5 === null || variant5=== undefined) {
    dataView(memory0).setInt8(arg3 + 0, 0, true);
  } else {
    const e = variant5;
    dataView(memory0).setInt8(arg3 + 0, 1, true);
    if (!(e instanceof Element)) {
      throw new TypeError('Resource error: Not a valid "Element" resource.');
    }
    var handle4 = e[symbolRscHandle];
    if (!handle4) {
      const rep = e[symbolRscRep] || ++captureCnt1;
      captureTable1.set(rep, e);
      handle4 = rscTableCreateOwn(handleTable1, rep);
    }
    dataView(memory0).setInt32(arg3 + 4, handle4, true);
  }
}


function trampoline18(arg0, arg1, arg2, arg3) {
  var handle1 = arg0;
  var rep2 = handleTable0[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable0.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Document.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var ptr3 = arg1;
  var len3 = arg2;
  var result3 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr3, len3));
  const ret = rsc0.getElementsByClassNameList(result3);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  var vec5 = ret;
  var len5 = vec5.length;
  var result5 = realloc0(0, 0, 4, len5 * 4);
  for (let i = 0; i < vec5.length; i++) {
    const e = vec5[i];
    const base = result5 + i * 4;if (!(e instanceof Element)) {
      throw new TypeError('Resource error: Not a valid "Element" resource.');
    }
    var handle4 = e[symbolRscHandle];
    if (!handle4) {
      const rep = e[symbolRscRep] || ++captureCnt1;
      captureTable1.set(rep, e);
      handle4 = rscTableCreateOwn(handleTable1, rep);
    }
    dataView(memory0).setInt32(base + 0, handle4, true);
  }
  dataView(memory0).setInt32(arg3 + 4, len5, true);
  dataView(memory0).setInt32(arg3 + 0, result5, true);
}

const handleTable4 = [T_FLAG, 0];
const captureTable4= new Map();
let captureCnt4 = 0;
handleTables[4] = handleTable4;

function trampoline19(arg0, arg1, arg2) {
  var handle1 = arg0;
  var rep2 = handleTable6[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable6.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Performance.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var ptr3 = arg1;
  var len3 = arg2;
  var result3 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr3, len3));
  const ret = rsc0.mark(result3);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  if (!(ret instanceof PerformanceMark)) {
    throw new TypeError('Resource error: Not a valid "PerformanceMark" resource.');
  }
  var handle4 = ret[symbolRscHandle];
  if (!handle4) {
    const rep = ret[symbolRscRep] || ++captureCnt4;
    captureTable4.set(rep, ret);
    handle4 = rscTableCreateOwn(handleTable4, rep);
  }
  return handle4;
}


function trampoline20(arg0, arg1, arg2, arg3, arg4, arg5, arg6) {
  var handle1 = arg0;
  var rep2 = handleTable6[(handle1 << 1) + 1] & ~T_FLAG;
  var rsc0 = captureTable6.get(rep2);
  if (!rsc0) {
    rsc0 = Object.create(Performance.prototype);
    Object.defineProperty(rsc0, symbolRscHandle, { writable: true, value: handle1});
    Object.defineProperty(rsc0, symbolRscRep, { writable: true, value: rep2});
  }
  curResourceBorrows.push(rsc0);
  var ptr3 = arg1;
  var len3 = arg2;
  var result3 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr3, len3));
  var ptr4 = arg3;
  var len4 = arg4;
  var result4 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr4, len4));
  var ptr5 = arg5;
  var len5 = arg6;
  var result5 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr5, len5));
  const ret = rsc0.measure(result3, result4, result5);
  for (const rsc of curResourceBorrows) {
    rsc[symbolRscHandle] = undefined;
  }
  curResourceBorrows = [];
  if (!(ret instanceof PerformanceMeasure)) {
    throw new TypeError('Resource error: Not a valid "PerformanceMeasure" resource.');
  }
  var handle6 = ret[symbolRscHandle];
  if (!handle6) {
    const rep = ret[symbolRscRep] || ++captureCnt5;
    captureTable5.set(rep, ret);
    handle6 = rscTableCreateOwn(handleTable5, rep);
  }
  return handle6;
}

let exports2;
let exports3;
function trampoline0(handle) {
  const handleEntry = rscTableRemove(handleTable1, handle);
  if (handleEntry.own) {
    
    const rsc = captureTable1.get(handleEntry.rep);
    if (rsc) {
      if (rsc[symbolDispose]) rsc[symbolDispose]();
      captureTable1.delete(handleEntry.rep);
    } else if (Element[symbolCabiDispose]) {
      Element[symbolCabiDispose](handleEntry.rep);
    }
  }
}
function trampoline2(handle) {
  const handleEntry = rscTableRemove(handleTable2, handle);
  if (handleEntry.own) {
    
    const rsc = captureTable2.get(handleEntry.rep);
    if (rsc) {
      if (rsc[symbolDispose]) rsc[symbolDispose]();
      captureTable2.delete(handleEntry.rep);
    } else if (HtmlElement[symbolCabiDispose]) {
      HtmlElement[symbolCabiDispose](handleEntry.rep);
    }
  }
}
function trampoline4(handle) {
  const handleEntry = rscTableRemove(handleTable0, handle);
  if (handleEntry.own) {
    
    const rsc = captureTable0.get(handleEntry.rep);
    if (rsc) {
      if (rsc[symbolDispose]) rsc[symbolDispose]();
      captureTable0.delete(handleEntry.rep);
    } else if (Document[symbolCabiDispose]) {
      Document[symbolCabiDispose](handleEntry.rep);
    }
  }
}
function trampoline5(handle) {
  const handleEntry = rscTableRemove(handleTable3, handle);
  if (handleEntry.own) {
    
    const rsc = captureTable3.get(handleEntry.rep);
    if (rsc) {
      if (rsc[symbolDispose]) rsc[symbolDispose]();
      captureTable3.delete(handleEntry.rep);
    } else if (Window[symbolCabiDispose]) {
      Window[symbolCabiDispose](handleEntry.rep);
    }
  }
}
function trampoline7(handle) {
  const handleEntry = rscTableRemove(handleTable4, handle);
  if (handleEntry.own) {
    
    const rsc = captureTable4.get(handleEntry.rep);
    if (rsc) {
      if (rsc[symbolDispose]) rsc[symbolDispose]();
      captureTable4.delete(handleEntry.rep);
    } else if (PerformanceMark[symbolCabiDispose]) {
      PerformanceMark[symbolCabiDispose](handleEntry.rep);
    }
  }
}
function trampoline8(handle) {
  const handleEntry = rscTableRemove(handleTable5, handle);
  if (handleEntry.own) {
    
    const rsc = captureTable5.get(handleEntry.rep);
    if (rsc) {
      if (rsc[symbolDispose]) rsc[symbolDispose]();
      captureTable5.delete(handleEntry.rep);
    } else if (PerformanceMeasure[symbolCabiDispose]) {
      PerformanceMeasure[symbolCabiDispose](handleEntry.rep);
    }
  }
}
function trampoline10(handle) {
  const handleEntry = rscTableRemove(handleTable6, handle);
  if (handleEntry.own) {
    
    const rsc = captureTable6.get(handleEntry.rep);
    if (rsc) {
      if (rsc[symbolDispose]) rsc[symbolDispose]();
      captureTable6.delete(handleEntry.rep);
    } else if (Performance[symbolCabiDispose]) {
      Performance[symbolCabiDispose](handleEntry.rep);
    }
  }
}
let exports1Run;

function run(arg0, arg1) {
  exports1Run(toUint32(arg0), toUint32(arg1));
}

const $init = (() => {
  let gen = (function* init () {
    const module0 = fetchCompile(new URL('./dom_query.core.wasm', import.meta.url));
    const module1 = base64Compile('AGFzbQEAAAABLQZgBX9/f39/AGADf39/AGACf38AYAN/f38Bf2AEf39/fwBgB39/f39/f38BfwMJCAABAgMEBAMFBAUBcAEICAcsCQEwAAABMQABATIAAgEzAAMBNAAEATUABQE2AAYBNwAHCCRpbXBvcnRzAQAKfwgRACAAIAEgAiADIARBABEAAAsNACAAIAEgAkEBEQEACwsAIAAgAUECEQIACw0AIAAgASACQQMRAwALDwAgACABIAIgA0EEEQQACw8AIAAgASACIANBBREEAAsNACAAIAEgAkEGEQMACxUAIAAgASACIAMgBCAFIAZBBxEFAAsALwlwcm9kdWNlcnMBDHByb2Nlc3NlZC1ieQENd2l0LWNvbXBvbmVudAcwLjI0Ni4y');
    const module2 = base64Compile('AGFzbQEAAAABLQZgBX9/f39/AGADf39/AGACf38AYAN/f38Bf2AEf39/fwBgB39/f39/f38BfwI4CQABMAAAAAExAAEAATIAAgABMwADAAE0AAQAATUABAABNgADAAE3AAUACCRpbXBvcnRzAXABCAgJDgEAQQALCAABAgMEBQYHAC8JcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkBDXdpdC1jb21wb25lbnQHMC4yNDYuMg');
    const module3 = base64Compile('AGFzbQEAAAABBAFgAAACBQEAAAAACAEA');
    ({ exports: exports0 } = yield instantiateCore(yield module1));
    ({ exports: exports1 } = yield instantiateCore(yield module0, {
      $root: {
        '[method]document.create-element': exports0['3'],
        '[method]document.get-body': exports0['2'],
        '[method]document.get-element-by-id': exports0['4'],
        '[method]document.get-elements-by-class-name-list': exports0['5'],
        '[method]element.append-child': trampoline1,
        '[method]element.set-attribute': exports0['0'],
        '[method]element.set-text-content': exports0['1'],
        '[method]html-element.append-child': trampoline3,
        '[method]performance-measure.get-duration': trampoline9,
        '[method]performance.mark': exports0['6'],
        '[method]performance.measure': exports0['7'],
        '[method]window.get-document': trampoline6,
        '[resource-drop]document': trampoline4,
        '[resource-drop]element': trampoline0,
        '[resource-drop]html-element': trampoline2,
        '[resource-drop]performance': trampoline10,
        '[resource-drop]performance-mark': trampoline7,
        '[resource-drop]performance-measure': trampoline8,
        '[resource-drop]window': trampoline5,
        'get-performance': trampoline12,
        'get-window': trampoline11,
      },
    }));
    memory0 = exports1.memory;
    realloc0 = exports1.cabi_realloc;
    ({ exports: exports2 } = yield instantiateCore(yield module2, {
      '': {
        $imports: exports0.$imports,
        '0': trampoline13,
        '1': trampoline14,
        '2': trampoline15,
        '3': trampoline16,
        '4': trampoline17,
        '5': trampoline18,
        '6': trampoline19,
        '7': trampoline20,
      },
    }));
    ({ exports: exports3 } = yield instantiateCore(yield module3, {
      '': {
        '': exports1._initialize,
      },
    }));
    exports1Run = exports1.run;
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

export { run,  }