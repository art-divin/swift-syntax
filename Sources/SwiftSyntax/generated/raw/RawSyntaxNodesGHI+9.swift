@_spi(RawSyntax)
public struct RawGenericWhereClauseSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .genericWhereClause
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
      _ unexpectedBeforeWhereKeyword: RawUnexpectedNodesSyntax? = nil, 
      whereKeyword: RawTokenSyntax, 
      _ unexpectedBetweenWhereKeywordAndRequirements: RawUnexpectedNodesSyntax? = nil, 
      requirements: RawGenericRequirementListSyntax, 
      _ unexpectedAfterRequirements: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .genericWhereClause, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeWhereKeyword?.raw
      layout[1] = whereKeyword.raw
      layout[2] = unexpectedBetweenWhereKeywordAndRequirements?.raw
      layout[3] = requirements.raw
      layout[4] = unexpectedAfterRequirements?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeWhereKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var whereKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenWhereKeywordAndRequirements: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var requirements: RawGenericRequirementListSyntax {
    layoutView.children[3].map(RawGenericRequirementListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRequirements: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
