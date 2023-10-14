@_spi(RawSyntax)
public struct RawStringLiteralExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .stringLiteralExpr
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
      _ unexpectedBeforeOpeningPounds: RawUnexpectedNodesSyntax? = nil, 
      openingPounds: RawTokenSyntax?, 
      _ unexpectedBetweenOpeningPoundsAndOpeningQuote: RawUnexpectedNodesSyntax? = nil, 
      openingQuote: RawTokenSyntax, 
      _ unexpectedBetweenOpeningQuoteAndSegments: RawUnexpectedNodesSyntax? = nil, 
      segments: RawStringLiteralSegmentListSyntax, 
      _ unexpectedBetweenSegmentsAndClosingQuote: RawUnexpectedNodesSyntax? = nil, 
      closingQuote: RawTokenSyntax, 
      _ unexpectedBetweenClosingQuoteAndClosingPounds: RawUnexpectedNodesSyntax? = nil, 
      closingPounds: RawTokenSyntax?, 
      _ unexpectedAfterClosingPounds: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .stringLiteralExpr, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeOpeningPounds?.raw
      layout[1] = openingPounds?.raw
      layout[2] = unexpectedBetweenOpeningPoundsAndOpeningQuote?.raw
      layout[3] = openingQuote.raw
      layout[4] = unexpectedBetweenOpeningQuoteAndSegments?.raw
      layout[5] = segments.raw
      layout[6] = unexpectedBetweenSegmentsAndClosingQuote?.raw
      layout[7] = closingQuote.raw
      layout[8] = unexpectedBetweenClosingQuoteAndClosingPounds?.raw
      layout[9] = closingPounds?.raw
      layout[10] = unexpectedAfterClosingPounds?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeOpeningPounds: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var openingPounds: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenOpeningPoundsAndOpeningQuote: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var openingQuote: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOpeningQuoteAndSegments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var segments: RawStringLiteralSegmentListSyntax {
    layoutView.children[5].map(RawStringLiteralSegmentListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSegmentsAndClosingQuote: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var closingQuote: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenClosingQuoteAndClosingPounds: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var closingPounds: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterClosingPounds: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
