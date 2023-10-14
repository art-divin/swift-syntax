@_spi(RawSyntax)
public struct RawInfixOperatorExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .infixOperatorExpr
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
      _ unexpectedBeforeLeftOperand: RawUnexpectedNodesSyntax? = nil, 
      leftOperand: RawExprSyntax, 
      _ unexpectedBetweenLeftOperandAndOperator: RawUnexpectedNodesSyntax? = nil, 
      operator: RawExprSyntax, 
      _ unexpectedBetweenOperatorAndRightOperand: RawUnexpectedNodesSyntax? = nil, 
      rightOperand: RawExprSyntax, 
      _ unexpectedAfterRightOperand: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .infixOperatorExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftOperand?.raw
      layout[1] = leftOperand.raw
      layout[2] = unexpectedBetweenLeftOperandAndOperator?.raw
      layout[3] = `operator`.raw
      layout[4] = unexpectedBetweenOperatorAndRightOperand?.raw
      layout[5] = rightOperand.raw
      layout[6] = unexpectedAfterRightOperand?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftOperand: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftOperand: RawExprSyntax {
    layoutView.children[1].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftOperandAndOperator: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var `operator`: RawExprSyntax {
    layoutView.children[3].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOperatorAndRightOperand: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightOperand: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightOperand: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
