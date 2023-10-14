@_spi(RawSyntax)
public struct RawDeclReferenceExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declReferenceExpr
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
      _ unexpectedBeforeBaseName: RawUnexpectedNodesSyntax? = nil, 
      baseName: RawTokenSyntax, 
      _ unexpectedBetweenBaseNameAndArgumentNames: RawUnexpectedNodesSyntax? = nil, 
      argumentNames: RawDeclNameArgumentsSyntax?, 
      _ unexpectedAfterArgumentNames: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .declReferenceExpr, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBaseName?.raw
      layout[1] = baseName.raw
      layout[2] = unexpectedBetweenBaseNameAndArgumentNames?.raw
      layout[3] = argumentNames?.raw
      layout[4] = unexpectedAfterArgumentNames?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBaseName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var baseName: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBaseNameAndArgumentNames: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var argumentNames: RawDeclNameArgumentsSyntax? {
    layoutView.children[3].map(RawDeclNameArgumentsSyntax.init(raw:))
  }
  
  public var unexpectedAfterArgumentNames: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
