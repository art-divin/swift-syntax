@_spi(RawSyntax)
public struct RawBinaryOperatorExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .binaryOperatorExpr
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
      _ unexpectedBeforeOperator: RawUnexpectedNodesSyntax? = nil, 
      operator: RawTokenSyntax, 
      _ unexpectedAfterOperator: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .binaryOperatorExpr, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeOperator?.raw
      layout[1] = `operator`.raw
      layout[2] = unexpectedAfterOperator?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeOperator: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var `operator`: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterOperator: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
