@_spi(RawSyntax)
public struct RawSimpleStringLiteralExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .simpleStringLiteralExpr
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
      _ unexpectedBeforeOpeningQuote: RawUnexpectedNodesSyntax? = nil, 
      openingQuote: RawTokenSyntax, 
      _ unexpectedBetweenOpeningQuoteAndSegments: RawUnexpectedNodesSyntax? = nil, 
      segments: RawSimpleStringLiteralSegmentListSyntax, 
      _ unexpectedBetweenSegmentsAndClosingQuote: RawUnexpectedNodesSyntax? = nil, 
      closingQuote: RawTokenSyntax, 
      _ unexpectedAfterClosingQuote: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .simpleStringLiteralExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeOpeningQuote?.raw
      layout[1] = openingQuote.raw
      layout[2] = unexpectedBetweenOpeningQuoteAndSegments?.raw
      layout[3] = segments.raw
      layout[4] = unexpectedBetweenSegmentsAndClosingQuote?.raw
      layout[5] = closingQuote.raw
      layout[6] = unexpectedAfterClosingQuote?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeOpeningQuote: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var openingQuote: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOpeningQuoteAndSegments: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var segments: RawSimpleStringLiteralSegmentListSyntax {
    layoutView.children[3].map(RawSimpleStringLiteralSegmentListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSegmentsAndClosingQuote: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var closingQuote: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterClosingQuote: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
