/** @module Interface webidl:baseline/web **/
export function elementAsNode(v: Element): Node;
export function getWindow(): Window;
export function now(): number;
export function textAsNode(v: Text): Node;
export type TrustedHtmlOrTrustedScriptOrTrustedScriptUrl = TrustedHtmlOrTrustedScriptOrTrustedScriptUrlTrustedHtml | TrustedHtmlOrTrustedScriptOrTrustedScriptUrlTrustedScript | TrustedHtmlOrTrustedScriptOrTrustedScriptUrlTrustedScriptUrl;
export interface TrustedHtmlOrTrustedScriptOrTrustedScriptUrlTrustedHtml {
  tag: 'trusted-html',
  val: TrustedHtml,
}
export interface TrustedHtmlOrTrustedScriptOrTrustedScriptUrlTrustedScript {
  tag: 'trusted-script',
  val: TrustedScript,
}
export interface TrustedHtmlOrTrustedScriptOrTrustedScriptUrlTrustedScriptUrl {
  tag: 'trusted-script-url',
  val: TrustedScriptUrl,
}
export type TrustedType = TrustedHtmlOrTrustedScriptOrTrustedScriptUrl;
export type TrustedTypeOrString = TrustedTypeOrStringTrustedType | TrustedTypeOrStringString;
export interface TrustedTypeOrStringTrustedType {
  tag: 'trusted-type',
  val: TrustedType,
}
export interface TrustedTypeOrStringString {
  tag: 'string',
  val: string,
}

export class Document {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
  body(): HtmlElement | undefined;
  createElement(localName: string): Element;
  createTextNode(data: string): Text;
  getElementById(elementId: string): Element | undefined;
  getElementsByClassName(className: string): Array<Element>;
}

export class Element {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
  appendChild(node: Node): Node;
  setAttribute(qualifiedName: string, value: TrustedTypeOrString): void;
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

export class TrustedHtml {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
}

export class TrustedScript {
  /**
   * This type does not have a public constructor.
   */
  private constructor();
}

export class TrustedScriptUrl {
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
