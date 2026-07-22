export let CanvasRenderingContext2D = globalThis.CanvasRenderingContext2D;
export let Document = globalThis.Document;
export let DomTokenList = globalThis.DOMTokenList;
export let Element = globalThis.Element;
export let HtmlElement = globalThis.HTMLElement;
export let Node = globalThis.Node;
export let Text = globalThis.Text;
export let Window = globalThis.Window;

// Object.defineProperty(Window.prototype, "document", Object.getOwnPropertyDescriptor(window, "document"));
Window.prototype.document = () => window.document;
Element.prototype.getContext2d = function() { return this.getContext("2d"); }

export let getWindow = () => globalThis;
export let textAsNode = (v) => v;
export let elementAsNode = (v) => v;
export let now = () => performance.now();
