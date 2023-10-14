@_spi(RawSyntax)
public struct RawSubscriptCallExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .subscriptCallExpr
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
      _ unexpectedBetweenCalledExpressionAndLeftSquare: RawUnexpectedNodesSyntax? = nil, 
      leftSquare: RawTokenSyntax, 
      _ unexpectedBetweenLeftSquareAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawLabeledExprListSyntax, 
      _ unexpectedBetweenArgumentsAndRightSquare: RawUnexpectedNodesSyntax? = nil, 
      rightSquare: RawTokenSyntax, 
      _ unexpectedBetweenRightSquareAndTrailingClosure: RawUnexpectedNodesSyntax? = nil, 
      trailingClosure: RawClosureExprSyntax?, 
      _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax, 
      _ unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .subscriptCallExpr, uninitializedCount: 13, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeCalledExpression?.raw
      layout[1] = calledExpression.raw
      layout[2] = unexpectedBetweenCalledExpressionAndLeftSquare?.raw
      layout[3] = leftSquare.raw
      layout[4] = unexpectedBetweenLeftSquareAndArguments?.raw
      layout[5] = arguments.raw
      layout[6] = unexpectedBetweenArgumentsAndRightSquare?.raw
      layout[7] = rightSquare.raw
      layout[8] = unexpectedBetweenRightSquareAndTrailingClosure?.raw
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
  
  public var unexpectedBetweenCalledExpressionAndLeftSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftSquare: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftSquareAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawLabeledExprListSyntax {
    layoutView.children[5].map(RawLabeledExprListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightSquare: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenRightSquareAndTrailingClosure: RawUnexpectedNodesSyntax? {
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
