@_spi(RawSyntax)
public struct RawPrecedenceGroupDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .precedenceGroupDecl
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
      _ unexpectedBetweenModifiersAndPrecedencegroupKeyword: RawUnexpectedNodesSyntax? = nil, 
      precedencegroupKeyword: RawTokenSyntax, 
      _ unexpectedBetweenPrecedencegroupKeywordAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndLeftBrace: RawUnexpectedNodesSyntax? = nil, 
      leftBrace: RawTokenSyntax, 
      _ unexpectedBetweenLeftBraceAndGroupAttributes: RawUnexpectedNodesSyntax? = nil, 
      groupAttributes: RawPrecedenceGroupAttributeListSyntax, 
      _ unexpectedBetweenGroupAttributesAndRightBrace: RawUnexpectedNodesSyntax? = nil, 
      rightBrace: RawTokenSyntax, 
      _ unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .precedenceGroupDecl, uninitializedCount: 15, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndPrecedencegroupKeyword?.raw
      layout[5] = precedencegroupKeyword.raw
      layout[6] = unexpectedBetweenPrecedencegroupKeywordAndName?.raw
      layout[7] = name.raw
      layout[8] = unexpectedBetweenNameAndLeftBrace?.raw
      layout[9] = leftBrace.raw
      layout[10] = unexpectedBetweenLeftBraceAndGroupAttributes?.raw
      layout[11] = groupAttributes.raw
      layout[12] = unexpectedBetweenGroupAttributesAndRightBrace?.raw
      layout[13] = rightBrace.raw
      layout[14] = unexpectedAfterRightBrace?.raw
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
  
  public var unexpectedBetweenModifiersAndPrecedencegroupKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var precedencegroupKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPrecedencegroupKeywordAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndLeftBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftBrace: RawTokenSyntax {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftBraceAndGroupAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var groupAttributes: RawPrecedenceGroupAttributeListSyntax {
    layoutView.children[11].map(RawPrecedenceGroupAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenGroupAttributesAndRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightBrace: RawTokenSyntax {
    layoutView.children[13].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
