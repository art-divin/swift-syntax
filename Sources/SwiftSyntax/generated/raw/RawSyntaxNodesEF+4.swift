@_spi(RawSyntax)
public struct RawEnumCaseDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .enumCaseDecl
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
      _ unexpectedBetweenModifiersAndCaseKeyword: RawUnexpectedNodesSyntax? = nil, 
      caseKeyword: RawTokenSyntax, 
      _ unexpectedBetweenCaseKeywordAndElements: RawUnexpectedNodesSyntax? = nil, 
      elements: RawEnumCaseElementListSyntax, 
      _ unexpectedAfterElements: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .enumCaseDecl, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndCaseKeyword?.raw
      layout[5] = caseKeyword.raw
      layout[6] = unexpectedBetweenCaseKeywordAndElements?.raw
      layout[7] = elements.raw
      layout[8] = unexpectedAfterElements?.raw
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
  
  public var unexpectedBetweenModifiersAndCaseKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var caseKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCaseKeywordAndElements: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elements: RawEnumCaseElementListSyntax {
    layoutView.children[7].map(RawEnumCaseElementListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterElements: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
