/** @module Interface webidl:baseline/web **/
export function elementAsNode(v: Element): Node;
export function getWindow(): Window;
export function textAsNode(v: Text): Node;

export class Document {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
  body(): HtmlElement | undefined;
  createElement(localName: string): Element;
  createTextNode(data: string): Text;
}

export class DomTokenList {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
  add(tokens: Array<string>): void;
}

export class Element {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
  appendChild(node: Node): Node;
  classList(): DomTokenList;
}

export class HtmlElement {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
  appendChild(node: Node): Node;
}

export class Node {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
}

export class Text {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
}

export class Window {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
  document(): Document;
}
