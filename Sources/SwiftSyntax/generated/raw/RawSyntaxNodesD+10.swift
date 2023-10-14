@_spi(RawSyntax)
public struct RawDeinitializerDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .deinitializerDecl
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
      _ unexpectedBetweenModifiersAndDeinitKeyword: RawUnexpectedNodesSyntax? = nil, 
      deinitKeyword: RawTokenSyntax, 
      _ unexpectedBetweenDeinitKeywordAndEffectSpecifiers: RawUnexpectedNodesSyntax? = nil, 
      effectSpecifiers: RawDeinitializerEffectSpecifiersSyntax?, 
      _ unexpectedBetweenEffectSpecifiersAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax?, 
      _ unexpectedAfterBody: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .deinitializerDecl, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndDeinitKeyword?.raw
      layout[5] = deinitKeyword.raw
      layout[6] = unexpectedBetweenDeinitKeywordAndEffectSpecifiers?.raw
      layout[7] = effectSpecifiers?.raw
      layout[8] = unexpectedBetweenEffectSpecifiersAndBody?.raw
      layout[9] = body?.raw
      layout[10] = unexpectedAfterBody?.raw
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
  
  public var unexpectedBetweenModifiersAndDeinitKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var deinitKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDeinitKeywordAndEffectSpecifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var effectSpecifiers: RawDeinitializerEffectSpecifiersSyntax? {
    layoutView.children[7].map(RawDeinitializerEffectSpecifiersSyntax.init(raw:))
  }
  
  public var unexpectedBetweenEffectSpecifiersAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax? {
    layoutView.children[9].map(RawCodeBlockSyntax.init(raw:))
  }
  
  public var unexpectedAfterBody: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
