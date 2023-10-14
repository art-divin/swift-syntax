@_spi(RawSyntax)
public struct RawFunctionSignatureSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .functionSignature
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
      _ unexpectedBeforeParameterClause: RawUnexpectedNodesSyntax? = nil, 
      parameterClause: RawFunctionParameterClauseSyntax, 
      _ unexpectedBetweenParameterClauseAndEffectSpecifiers: RawUnexpectedNodesSyntax? = nil, 
      effectSpecifiers: RawFunctionEffectSpecifiersSyntax?, 
      _ unexpectedBetweenEffectSpecifiersAndReturnClause: RawUnexpectedNodesSyntax? = nil, 
      returnClause: RawReturnClauseSyntax?, 
      _ unexpectedAfterReturnClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .functionSignature, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeParameterClause?.raw
      layout[1] = parameterClause.raw
      layout[2] = unexpectedBetweenParameterClauseAndEffectSpecifiers?.raw
      layout[3] = effectSpecifiers?.raw
      layout[4] = unexpectedBetweenEffectSpecifiersAndReturnClause?.raw
      layout[5] = returnClause?.raw
      layout[6] = unexpectedAfterReturnClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeParameterClause: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var parameterClause: RawFunctionParameterClauseSyntax {
    layoutView.children[1].map(RawFunctionParameterClauseSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenParameterClauseAndEffectSpecifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var effectSpecifiers: RawFunctionEffectSpecifiersSyntax? {
    layoutView.children[3].map(RawFunctionEffectSpecifiersSyntax.init(raw:))
  }
  
  public var unexpectedBetweenEffectSpecifiersAndReturnClause: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var returnClause: RawReturnClauseSyntax? {
    layoutView.children[5].map(RawReturnClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterReturnClause: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
