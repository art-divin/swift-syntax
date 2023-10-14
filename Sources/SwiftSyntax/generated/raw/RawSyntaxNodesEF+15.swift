@_spi(RawSyntax)
public struct RawExpressionSegmentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .expressionSegment
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
      _ unexpectedBetweenBackslashAndPounds: RawUnexpectedNodesSyntax? = nil, 
      pounds: RawTokenSyntax?, 
      _ unexpectedBetweenPoundsAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndExpressions: RawUnexpectedNodesSyntax? = nil, 
      expressions: RawLabeledExprListSyntax, 
      _ unexpectedBetweenExpressionsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .expressionSegment, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBackslash?.raw
      layout[1] = backslash.raw
      layout[2] = unexpectedBetweenBackslashAndPounds?.raw
      layout[3] = pounds?.raw
      layout[4] = unexpectedBetweenPoundsAndLeftParen?.raw
      layout[5] = leftParen.raw
      layout[6] = unexpectedBetweenLeftParenAndExpressions?.raw
      layout[7] = expressions.raw
      layout[8] = unexpectedBetweenExpressionsAndRightParen?.raw
      layout[9] = rightParen.raw
      layout[10] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBackslash: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var backslash: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBackslashAndPounds: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pounds: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenPoundsAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndExpressions: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expressions: RawLabeledExprListSyntax {
    layoutView.children[7].map(RawLabeledExprListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenExpressionsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
