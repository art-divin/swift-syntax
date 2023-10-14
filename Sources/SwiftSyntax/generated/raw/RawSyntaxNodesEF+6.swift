@_spi(RawSyntax)
public struct RawEnumCaseElementSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .enumCaseElement
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
      _ unexpectedBeforeName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndParameterClause: RawUnexpectedNodesSyntax? = nil, 
      parameterClause: RawEnumCaseParameterClauseSyntax?, 
      _ unexpectedBetweenParameterClauseAndRawValue: RawUnexpectedNodesSyntax? = nil, 
      rawValue: RawInitializerClauseSyntax?, 
      _ unexpectedBetweenRawValueAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .enumCaseElement, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeName?.raw
      layout[1] = name.raw
      layout[2] = unexpectedBetweenNameAndParameterClause?.raw
      layout[3] = parameterClause?.raw
      layout[4] = unexpectedBetweenParameterClauseAndRawValue?.raw
      layout[5] = rawValue?.raw
      layout[6] = unexpectedBetweenRawValueAndTrailingComma?.raw
      layout[7] = trailingComma?.raw
      layout[8] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndParameterClause: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var parameterClause: RawEnumCaseParameterClauseSyntax? {
    layoutView.children[3].map(RawEnumCaseParameterClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenParameterClauseAndRawValue: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rawValue: RawInitializerClauseSyntax? {
    layoutView.children[5].map(RawInitializerClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenRawValueAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
