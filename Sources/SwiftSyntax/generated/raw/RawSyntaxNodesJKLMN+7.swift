@_spi(RawSyntax)
public struct RawLabeledExprSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .labeledExpr
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
      _ unexpectedBeforeLabel: RawUnexpectedNodesSyntax? = nil, 
      label: RawTokenSyntax?, 
      _ unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax?, 
      _ unexpectedBetweenColonAndExpression: RawUnexpectedNodesSyntax? = nil, 
      expression: RawExprSyntax, 
      _ unexpectedBetweenExpressionAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .labeledExpr, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLabel?.raw
      layout[1] = label?.raw
      layout[2] = unexpectedBetweenLabelAndColon?.raw
      layout[3] = colon?.raw
      layout[4] = unexpectedBetweenColonAndExpression?.raw
      layout[5] = expression.raw
      layout[6] = unexpectedBetweenExpressionAndTrailingComma?.raw
      layout[7] = trailingComma?.raw
      layout[8] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var label: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenColonAndExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expression: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenExpressionAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
