export let CanvasRenderingContext2D = globalThis.CanvasRenderingContext2D;
export let Document = globalThis.Document;
export let DomTokenList = globalThis.DomTokenList;
export let Element = globalThis.Element;
export let HtmlElement = globalThis.HtmlElement;
export let Node = globalThis.Node;
export let Text = globalThis.Text;
export let TrustedHtml = globalThis.TrustedHtml;
export let TrustedScript = globalThis.TrustedScript;
export let TrustedScriptUrl = globalThis.TrustedScriptUrl;
export let Window = globalThis.Window;

export let getWindow = () => globalThis;
export let textAsNode = (v) => v;
export let elementAsNode = (v) => v;
export let now = () => performance.now();
