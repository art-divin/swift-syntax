@_spi(RawSyntax)
public struct RawTernaryExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .ternaryExpr
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
      _ unexpectedBeforeCondition: RawUnexpectedNodesSyntax? = nil, 
      condition: RawExprSyntax, 
      _ unexpectedBetweenConditionAndQuestionMark: RawUnexpectedNodesSyntax? = nil, 
      questionMark: RawTokenSyntax, 
      _ unexpectedBetweenQuestionMarkAndThenExpression: RawUnexpectedNodesSyntax? = nil, 
      thenExpression: RawExprSyntax, 
      _ unexpectedBetweenThenExpressionAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndElseExpression: RawUnexpectedNodesSyntax? = nil, 
      elseExpression: RawExprSyntax, 
      _ unexpectedAfterElseExpression: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .ternaryExpr, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeCondition?.raw
      layout[1] = condition.raw
      layout[2] = unexpectedBetweenConditionAndQuestionMark?.raw
      layout[3] = questionMark.raw
      layout[4] = unexpectedBetweenQuestionMarkAndThenExpression?.raw
      layout[5] = thenExpression.raw
      layout[6] = unexpectedBetweenThenExpressionAndColon?.raw
      layout[7] = colon.raw
      layout[8] = unexpectedBetweenColonAndElseExpression?.raw
      layout[9] = elseExpression.raw
      layout[10] = unexpectedAfterElseExpression?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeCondition: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var condition: RawExprSyntax {
    layoutView.children[1].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenConditionAndQuestionMark: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var questionMark: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenQuestionMarkAndThenExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var thenExpression: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenThenExpressionAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndElseExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elseExpression: RawExprSyntax {
    layoutView.children[9].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterElseExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
