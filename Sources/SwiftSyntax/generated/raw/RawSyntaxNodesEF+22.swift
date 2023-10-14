@_spi(RawSyntax)
public struct RawFunctionCallExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .functionCallExpr
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
      _ unexpectedBeforeCalledExpression: RawUnexpectedNodesSyntax? = nil, 
      calledExpression: RawExprSyntax, 
      _ unexpectedBetweenCalledExpressionAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax?, 
      _ unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawLabeledExprListSyntax, 
      _ unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax?, 
      _ unexpectedBetweenRightParenAndTrailingClosure: RawUnexpectedNodesSyntax? = nil, 
      trailingClosure: RawClosureExprSyntax?, 
      _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax, 
      _ unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .functionCallExpr, uninitializedCount: 13, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeCalledExpression?.raw
      layout[1] = calledExpression.raw
      layout[2] = unexpectedBetweenCalledExpressionAndLeftParen?.raw
      layout[3] = leftParen?.raw
      layout[4] = unexpectedBetweenLeftParenAndArguments?.raw
      layout[5] = arguments.raw
      layout[6] = unexpectedBetweenArgumentsAndRightParen?.raw
      layout[7] = rightParen?.raw
      layout[8] = unexpectedBetweenRightParenAndTrailingClosure?.raw
      layout[9] = trailingClosure?.raw
      layout[10] = unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures?.raw
      layout[11] = additionalTrailingClosures.raw
      layout[12] = unexpectedAfterAdditionalTrailingClosures?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeCalledExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var calledExpression: RawExprSyntax {
    layoutView.children[1].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCalledExpressionAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawLabeledExprListSyntax {
    layoutView.children[5].map(RawLabeledExprListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenRightParenAndTrailingClosure: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingClosure: RawClosureExprSyntax? {
    layoutView.children[9].map(RawClosureExprSyntax.init(raw:))
  }
  
  public var unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax {
    layoutView.children[11].map(RawMultipleTrailingClosureElementListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
