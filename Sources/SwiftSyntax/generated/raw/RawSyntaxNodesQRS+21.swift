@_spi(RawSyntax)
public struct RawSuperExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .superExpr
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
      _ unexpectedBeforeSuperKeyword: RawUnexpectedNodesSyntax? = nil, 
      superKeyword: RawTokenSyntax, 
      _ unexpectedAfterSuperKeyword: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .superExpr, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeSuperKeyword?.raw
      layout[1] = superKeyword.raw
      layout[2] = unexpectedAfterSuperKeyword?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeSuperKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var superKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterSuperKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
