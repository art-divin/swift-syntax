@_spi(RawSyntax)
public struct RawMemberAccessExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .memberAccessExpr
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
      _ unexpectedBeforeBase: RawUnexpectedNodesSyntax? = nil, 
      base: RawExprSyntax?, 
      _ unexpectedBetweenBaseAndPeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax, 
      _ unexpectedBetweenPeriodAndDeclName: RawUnexpectedNodesSyntax? = nil, 
      declName: RawDeclReferenceExprSyntax, 
      _ unexpectedAfterDeclName: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .memberAccessExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBase?.raw
      layout[1] = base?.raw
      layout[2] = unexpectedBetweenBaseAndPeriod?.raw
      layout[3] = period.raw
      layout[4] = unexpectedBetweenPeriodAndDeclName?.raw
      layout[5] = declName.raw
      layout[6] = unexpectedAfterDeclName?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBase: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var base: RawExprSyntax? {
    layoutView.children[1].map(RawExprSyntax.init(raw:))
  }
  
  public var unexpectedBetweenBaseAndPeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPeriodAndDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var declName: RawDeclReferenceExprSyntax {
    layoutView.children[5].map(RawDeclReferenceExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
