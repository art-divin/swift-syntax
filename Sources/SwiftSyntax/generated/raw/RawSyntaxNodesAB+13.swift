@_spi(RawSyntax)
public struct RawAssociatedTypeDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .associatedTypeDecl
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
      _ unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? = nil, 
      attributes: RawAttributeListSyntax, 
      _ unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? = nil, 
      modifiers: RawDeclModifierListSyntax, 
      _ unexpectedBetweenModifiersAndAssociatedtypeKeyword: RawUnexpectedNodesSyntax? = nil, 
      associatedtypeKeyword: RawTokenSyntax, 
      _ unexpectedBetweenAssociatedtypeKeywordAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndInheritanceClause: RawUnexpectedNodesSyntax? = nil, 
      inheritanceClause: RawInheritanceClauseSyntax?, 
      _ unexpectedBetweenInheritanceClauseAndInitializer: RawUnexpectedNodesSyntax? = nil, 
      initializer: RawTypeInitializerClauseSyntax?, 
      _ unexpectedBetweenInitializerAndGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      genericWhereClause: RawGenericWhereClauseSyntax?, 
      _ unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .associatedTypeDecl, uninitializedCount: 15, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndAssociatedtypeKeyword?.raw
      layout[5] = associatedtypeKeyword.raw
      layout[6] = unexpectedBetweenAssociatedtypeKeywordAndName?.raw
      layout[7] = name.raw
      layout[8] = unexpectedBetweenNameAndInheritanceClause?.raw
      layout[9] = inheritanceClause?.raw
      layout[10] = unexpectedBetweenInheritanceClauseAndInitializer?.raw
      layout[11] = initializer?.raw
      layout[12] = unexpectedBetweenInitializerAndGenericWhereClause?.raw
      layout[13] = genericWhereClause?.raw
      layout[14] = unexpectedAfterGenericWhereClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[1].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var modifiers: RawDeclModifierListSyntax {
    layoutView.children[3].map(RawDeclModifierListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModifiersAndAssociatedtypeKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var associatedtypeKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAssociatedtypeKeywordAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndInheritanceClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var inheritanceClause: RawInheritanceClauseSyntax? {
    layoutView.children[9].map(RawInheritanceClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenInheritanceClauseAndInitializer: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var initializer: RawTypeInitializerClauseSyntax? {
    layoutView.children[11].map(RawTypeInitializerClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenInitializerAndGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericWhereClause: RawGenericWhereClauseSyntax? {
    layoutView.children[13].map(RawGenericWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
