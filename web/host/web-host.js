// We need to wrap the actual DOM methods so that we can convert getters/
// setters into methods. jco has no (apparent) way to express an import is
// a getter or setter.

export class Node {
  constructor(raw) {
    this.raw = raw;
  }
  firstChild() {
    return wrapNode(this.raw.firstChild);
  }
  nextSibling() {
    return wrapNode(this.raw.nextSibling);
  }
  textContent(value) {
    if (value === undefined) {
      return this.raw.textContent;
    } else {
      this.raw.textContent = value;
    }
  }
  setTextContent(value) {
    this.raw.textContent = value;
  }
}

class Text extends Node {}

// The host exposes `element`/`node`/`text` as distinct wit resource types,
// but a raw DOM node returned from e.g. firstChild/appendChild is only ever
// one of these underneath. Wrap it as whichever wit resource the caller
// declared, so jco's `instanceof` check on the return value succeeds.
function wrapNode(raw) {
  if (!raw) return undefined;
  return raw.nodeType === 3 ? new Text(raw) : new Element(raw);
}

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
  fillStyle(value) {
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
    return wrapNode(this.raw.appendChild(node.raw));
  }
  classList() {
    return new DomTokenList(this.raw.classList);
  }
  getContext2d() {
    return new CanvasRenderingContext2d(this.raw.getContext("2d"));
  }
  insertBefore(node, reference) {
    return wrapNode(this.raw.insertBefore(node.raw, reference.raw));
  }
  remove() {
    this.raw.remove();
  }
  setAttribute(qualifiedName, value) {
    this.raw.setAttribute(qualifiedName, value);
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

export {
  CanvasRenderingContext2d,
  Document,
  DomTokenList,
  Element,
  HtmlElement,
  Text,
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
