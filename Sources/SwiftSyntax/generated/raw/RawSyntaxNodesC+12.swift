@_spi(RawSyntax)
public struct RawClosureExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .closureExpr
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
      _ unexpectedBeforeLeftBrace: RawUnexpectedNodesSyntax? = nil, 
      leftBrace: RawTokenSyntax, 
      _ unexpectedBetweenLeftBraceAndSignature: RawUnexpectedNodesSyntax? = nil, 
      signature: RawClosureSignatureSyntax?, 
      _ unexpectedBetweenSignatureAndStatements: RawUnexpectedNodesSyntax? = nil, 
      statements: RawCodeBlockItemListSyntax, 
      _ unexpectedBetweenStatementsAndRightBrace: RawUnexpectedNodesSyntax? = nil, 
      rightBrace: RawTokenSyntax, 
      _ unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .closureExpr, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftBrace?.raw
      layout[1] = leftBrace.raw
      layout[2] = unexpectedBetweenLeftBraceAndSignature?.raw
      layout[3] = signature?.raw
      layout[4] = unexpectedBetweenSignatureAndStatements?.raw
      layout[5] = statements.raw
      layout[6] = unexpectedBetweenStatementsAndRightBrace?.raw
      layout[7] = rightBrace.raw
      layout[8] = unexpectedAfterRightBrace?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftBrace: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftBraceAndSignature: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var signature: RawClosureSignatureSyntax? {
    layoutView.children[3].map(RawClosureSignatureSyntax.init(raw:))
  }
  
  public var unexpectedBetweenSignatureAndStatements: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var statements: RawCodeBlockItemListSyntax {
    layoutView.children[5].map(RawCodeBlockItemListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenStatementsAndRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightBrace: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
