// Host implementation of the demos' curated web API. Every demo component
// declares its own flat (non-instance) WIT imports rather than importing a
// named interface, so there's no single `webidl:baseline/web` instance to
// map -- `web/transpile.sh` maps each flat import name individually via
// `jco transpile --map <name>=web-host.js#<NamedExport>`, all pointing at
// this one file. One class per WIT resource, one method per resource
// function, camelCased.
//
// jco can auto-bind a `webidl:` namespaced import straight to `globalThis`
// (see https://bytecodealliance.github.io/jco/transpiling.html), which
// would mean no hand-written glue at all. We tried it and hit two jco
// 1.25.2 bugs: its WebIDL proxy crashes on any `option<T>` argument that
// lowers to JS `undefined`, and its cast heuristic (`resource.asTarget()`
// returning the same object) doesn't match how our WIT expresses casts
// (free functions, not resource methods) -- see
// ~/src/webidl-index/canonwit/JCO_COMPAT.md for the full writeup. This
// file is the fallback.

class Node {
  constructor(raw) {
    this.raw = raw;
  }
  firstChild() {
    return this.raw.firstChild ? new Node(this.raw.firstChild) : undefined;
  }
  nextSibling() {
    return this.raw.nextSibling ? new Node(this.raw.nextSibling) : undefined;
  }
  textContent() {
    return this.raw.textContent ?? "";
  }
  setTextContent(value) {
    this.raw.textContent = value;
  }
}

class Text extends Node {}

class CanvasRenderingContext2d {
  constructor(raw) {
    this.raw = raw;
  }
  fillRect(x, y, width, height) {
    this.raw.fillRect(x, y, width, height);
  }
  getImageData(x, y, width, height) {
    return new Uint8Array(this.raw.getImageData(x, y, width, height).data);
  }
  putImageData(data, x, y, width, height) {
    const imageData = new ImageData(new Uint8ClampedArray(data), width, height);
    this.raw.putImageData(imageData, x, y);
  }
  setFillStyle(value) {
    this.raw.fillStyle = value;
  }
}

class DomTokenList {
  constructor(raw) {
    this.raw = raw;
  }
  add(tokens) {
    this.raw.add(...tokens);
  }
}

class Element extends Node {
  appendChild(node) {
    return new Node(this.raw.appendChild(node.raw));
  }
  classList() {
    return new DomTokenList(this.raw.classList);
  }
  getContext2d() {
    return new CanvasRenderingContext2d(this.raw.getContext("2d"));
  }
  insertBefore(node, reference) {
    return new Node(this.raw.insertBefore(node.raw, reference.raw));
  }
  remove() {
    this.raw.remove();
  }
  setAttribute(qualifiedName, value) {
    const raw = value.tag === "string" ? value.val : String(value.val);
    this.raw.setAttribute(qualifiedName, raw);
  }
  setAttributes(pairs) {
    for (const [name, value] of pairs) {
      this.raw.setAttribute(name, value);
    }
  }
}

class HtmlElement extends Element {}

class Document {
  constructor(raw) {
    this.raw = raw;
  }
  body() {
    return this.raw.body ? new HtmlElement(this.raw.body) : undefined;
  }
  createElement(localName) {
    return new Element(this.raw.createElement(localName));
  }
  createTextNode(data) {
    return new Text(this.raw.createTextNode(data));
  }
  getElementById(elementId) {
    const el = this.raw.getElementById(elementId);
    return el ? new Element(el) : undefined;
  }
  getElementsByClassName(className) {
    return Array.from(this.raw.getElementsByClassName(className)).map((el) => new Element(el));
  }
}

class Window {
  constructor(raw) {
    this.raw = raw;
  }
  document() {
    return new Document(this.raw.document);
  }
}

// Never constructed: `trusted-type-or-string` values we produce are
// always the `string` case, but the classes still need to exist so the
// generated import list resolves.
class TrustedHtml {}
class TrustedScript {}
class TrustedScriptUrl {}

export {
  CanvasRenderingContext2d,
  Document,
  DomTokenList,
  Element,
  HtmlElement,
  Node,
  Text,
  TrustedHtml,
  TrustedScript,
  TrustedScriptUrl,
  Window,
};

export function getWindow() {
  return new Window(globalThis);
}

export function elementAsNode(v) {
  return new Node(v.raw);
}

export function textAsNode(v) {
  return new Node(v.raw);
}

export function now() {
  return performance.now();
}
