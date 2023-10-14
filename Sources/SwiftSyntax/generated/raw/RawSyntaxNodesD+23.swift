@_spi(RawSyntax)
public struct RawDifferentiableAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .differentiableAttributeArguments
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
      _ unexpectedBeforeKindSpecifier: RawUnexpectedNodesSyntax? = nil, 
      kindSpecifier: RawTokenSyntax?, 
      _ unexpectedBetweenKindSpecifierAndKindSpecifierComma: RawUnexpectedNodesSyntax? = nil, 
      kindSpecifierComma: RawTokenSyntax?, 
      _ unexpectedBetweenKindSpecifierCommaAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawDifferentiabilityWithRespectToArgumentSyntax?, 
      _ unexpectedBetweenArgumentsAndArgumentsComma: RawUnexpectedNodesSyntax? = nil, 
      argumentsComma: RawTokenSyntax?, 
      _ unexpectedBetweenArgumentsCommaAndGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      genericWhereClause: RawGenericWhereClauseSyntax?, 
      _ unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .differentiableAttributeArguments, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeKindSpecifier?.raw
      layout[1] = kindSpecifier?.raw
      layout[2] = unexpectedBetweenKindSpecifierAndKindSpecifierComma?.raw
      layout[3] = kindSpecifierComma?.raw
      layout[4] = unexpectedBetweenKindSpecifierCommaAndArguments?.raw
      layout[5] = arguments?.raw
      layout[6] = unexpectedBetweenArgumentsAndArgumentsComma?.raw
      layout[7] = argumentsComma?.raw
      layout[8] = unexpectedBetweenArgumentsCommaAndGenericWhereClause?.raw
      layout[9] = genericWhereClause?.raw
      layout[10] = unexpectedAfterGenericWhereClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeKindSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var kindSpecifier: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenKindSpecifierAndKindSpecifierComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var kindSpecifierComma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenKindSpecifierCommaAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawDifferentiabilityWithRespectToArgumentSyntax? {
    layoutView.children[5].map(RawDifferentiabilityWithRespectToArgumentSyntax.init(raw:))
  }
  
  public var unexpectedBetweenArgumentsAndArgumentsComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var argumentsComma: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenArgumentsCommaAndGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericWhereClause: RawGenericWhereClauseSyntax? {
    layoutView.children[9].map(RawGenericWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
