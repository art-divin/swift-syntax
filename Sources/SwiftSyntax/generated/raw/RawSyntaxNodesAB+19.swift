@_spi(RawSyntax)
public struct RawAvailabilityConditionSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .availabilityCondition
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
      _ unexpectedBeforeAvailabilityKeyword: RawUnexpectedNodesSyntax? = nil, 
      availabilityKeyword: RawTokenSyntax, 
      _ unexpectedBetweenAvailabilityKeywordAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndAvailabilityArguments: RawUnexpectedNodesSyntax? = nil, 
      availabilityArguments: RawAvailabilityArgumentListSyntax, 
      _ unexpectedBetweenAvailabilityArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .availabilityCondition, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAvailabilityKeyword?.raw
      layout[1] = availabilityKeyword.raw
      layout[2] = unexpectedBetweenAvailabilityKeywordAndLeftParen?.raw
      layout[3] = leftParen.raw
      layout[4] = unexpectedBetweenLeftParenAndAvailabilityArguments?.raw
      layout[5] = availabilityArguments.raw
      layout[6] = unexpectedBetweenAvailabilityArgumentsAndRightParen?.raw
      layout[7] = rightParen.raw
      layout[8] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAvailabilityKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var availabilityKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAvailabilityKeywordAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndAvailabilityArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var availabilityArguments: RawAvailabilityArgumentListSyntax {
    layoutView.children[5].map(RawAvailabilityArgumentListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAvailabilityArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
