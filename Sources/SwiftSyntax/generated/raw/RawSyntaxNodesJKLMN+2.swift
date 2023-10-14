@_spi(RawSyntax)
public struct RawKeyPathExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .keyPathExpr
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeBackslash: RawUnexpectedNodesSyntax? = nil, 
      backslash: RawTokenSyntax, 
      _ unexpectedBetweenBackslashAndRoot: RawUnexpectedNodesSyntax? = nil, 
      root: RawTypeSyntax?, 
      _ unexpectedBetweenRootAndComponents: RawUnexpectedNodesSyntax? = nil, 
      components: RawKeyPathComponentListSyntax, 
      _ unexpectedAfterComponents: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBackslash?.raw
      layout[1] = backslash.raw
      layout[2] = unexpectedBetweenBackslashAndRoot?.raw
      layout[3] = root?.raw
      layout[4] = unexpectedBetweenRootAndComponents?.raw
      layout[5] = components.raw
      layout[6] = unexpectedAfterComponents?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBackslash: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var backslash: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBackslashAndRoot: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var root: RawTypeSyntax? {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))
  }
  
  public var unexpectedBetweenRootAndComponents: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var components: RawKeyPathComponentListSyntax {
    layoutView.children[5].map(RawKeyPathComponentListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterComponents: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
