export let CanvasRenderingContext2d = globalThis.CanvasRenderingContext2D;
export let Document = globalThis.Document;
export let DomTokenList = globalThis.DOMTokenList;
export let Element = globalThis.Element;
export let HtmlElement = globalThis.HTMLElement;
export let Node = globalThis.Node;
export let Text = globalThis.Text;
export let Window = globalThis.Window;

export let getWindow = () => globalThis;
export let now = () => performance.now();

function getPropertyDescriptor(constructor, name) {
    let proto = constructor.prototype;
    while (proto) {
        var descriptor = Object.getOwnPropertyDescriptor(proto, name);
        if (descriptor) {
            return descriptor;
        }
        proto = proto.__proto__;
    }
}

Window.prototype.getDocument = () => window.document;

let firstChild = getPropertyDescriptor(Node, "firstChild");
Node.prototype.getFirstChild = firstChild.get;
Node.prototype.setFirstChild = firstChild.set;
let nextSibling = getPropertyDescriptor(Node, "nextSibling");
Node.prototype.getNextSibling = nextSibling.get;
Node.prototype.setNextSibling = nextSibling.set;
let textContent = getPropertyDescriptor(Node, "textContent");
Node.prototype.getTextContent = textContent.get;
Node.prototype.setTextContent = textContent.set;
Node.prototype.appendText = Node.prototype.appendChild;

let classList = getPropertyDescriptor(Element, "classList");
Element.prototype.getClassList = classList.get;
Element.prototype.setClassList = classList.set;
Element.prototype.getContext2d = function() { return this.getContext("2d"); }

let body = getPropertyDescriptor(Document, "body");
Document.prototype.getBody = body.get;
Document.prototype.setBody = body.set;
Document.prototype.getElementsByClassNameList = function (className) {
  return Array.from(this.getElementsByClassName(className));
}

CanvasRenderingContext2D.prototype.getImageDataArrayBuffer = function (x, y, width, height) {
  return new Uint8Array(this.getImageData(x, y, width, height).data);
}
CanvasRenderingContext2D.prototype.putImageDataArrayBuffer = function (data, x, y, width, height) {
  const imageData = new ImageData(new Uint8ClampedArray(data), width, height);
  this.putImageData(imageData, x, y);
}
let fillStyle = getPropertyDescriptor(CanvasRenderingContext2D, "fillStyle");
CanvasRenderingContext2D.prototype.getFillStyle = fillStyle.get;
CanvasRenderingContext2D.prototype.setFillStyle = fillStyle.set;
