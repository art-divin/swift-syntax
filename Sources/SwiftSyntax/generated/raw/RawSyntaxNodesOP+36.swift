@_spi(RawSyntax)
public struct RawProtocolDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .protocolDecl
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
      _ unexpectedBetweenModifiersAndProtocolKeyword: RawUnexpectedNodesSyntax? = nil, 
      protocolKeyword: RawTokenSyntax, 
      _ unexpectedBetweenProtocolKeywordAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndPrimaryAssociatedTypeClause: RawUnexpectedNodesSyntax? = nil, 
      primaryAssociatedTypeClause: RawPrimaryAssociatedTypeClauseSyntax?, 
      _ unexpectedBetweenPrimaryAssociatedTypeClauseAndInheritanceClause: RawUnexpectedNodesSyntax? = nil, 
      inheritanceClause: RawInheritanceClauseSyntax?, 
      _ unexpectedBetweenInheritanceClauseAndGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      genericWhereClause: RawGenericWhereClauseSyntax?, 
      _ unexpectedBetweenGenericWhereClauseAndMemberBlock: RawUnexpectedNodesSyntax? = nil, 
      memberBlock: RawMemberBlockSyntax, 
      _ unexpectedAfterMemberBlock: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .protocolDecl, uninitializedCount: 17, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndProtocolKeyword?.raw
      layout[5] = protocolKeyword.raw
      layout[6] = unexpectedBetweenProtocolKeywordAndName?.raw
      layout[7] = name.raw
      layout[8] = unexpectedBetweenNameAndPrimaryAssociatedTypeClause?.raw
      layout[9] = primaryAssociatedTypeClause?.raw
      layout[10] = unexpectedBetweenPrimaryAssociatedTypeClauseAndInheritanceClause?.raw
      layout[11] = inheritanceClause?.raw
      layout[12] = unexpectedBetweenInheritanceClauseAndGenericWhereClause?.raw
      layout[13] = genericWhereClause?.raw
      layout[14] = unexpectedBetweenGenericWhereClauseAndMemberBlock?.raw
      layout[15] = memberBlock.raw
      layout[16] = unexpectedAfterMemberBlock?.raw
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
  
  public var unexpectedBetweenModifiersAndProtocolKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var protocolKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenProtocolKeywordAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndPrimaryAssociatedTypeClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var primaryAssociatedTypeClause: RawPrimaryAssociatedTypeClauseSyntax? {
    layoutView.children[9].map(RawPrimaryAssociatedTypeClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenPrimaryAssociatedTypeClauseAndInheritanceClause: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var inheritanceClause: RawInheritanceClauseSyntax? {
    layoutView.children[11].map(RawInheritanceClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenInheritanceClauseAndGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericWhereClause: RawGenericWhereClauseSyntax? {
    layoutView.children[13].map(RawGenericWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericWhereClauseAndMemberBlock: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var memberBlock: RawMemberBlockSyntax {
    layoutView.children[15].map(RawMemberBlockSyntax.init(raw:))!
  }
  
  public var unexpectedAfterMemberBlock: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
