@_spi(RawSyntax)
public struct RawAccessorDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .accessorDecl
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
      _ unexpectedBetweenAttributesAndModifier: RawUnexpectedNodesSyntax? = nil, 
      modifier: RawDeclModifierSyntax?, 
      _ unexpectedBetweenModifierAndAccessorSpecifier: RawUnexpectedNodesSyntax? = nil, 
      accessorSpecifier: RawTokenSyntax, 
      _ unexpectedBetweenAccessorSpecifierAndParameters: RawUnexpectedNodesSyntax? = nil, 
      parameters: RawAccessorParametersSyntax?, 
      _ unexpectedBetweenParametersAndEffectSpecifiers: RawUnexpectedNodesSyntax? = nil, 
      effectSpecifiers: RawAccessorEffectSpecifiersSyntax?, 
      _ unexpectedBetweenEffectSpecifiersAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax?, 
      _ unexpectedAfterBody: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .accessorDecl, uninitializedCount: 13, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifier?.raw
      layout[3] = modifier?.raw
      layout[4] = unexpectedBetweenModifierAndAccessorSpecifier?.raw
      layout[5] = accessorSpecifier.raw
      layout[6] = unexpectedBetweenAccessorSpecifierAndParameters?.raw
      layout[7] = parameters?.raw
      layout[8] = unexpectedBetweenParametersAndEffectSpecifiers?.raw
      layout[9] = effectSpecifiers?.raw
      layout[10] = unexpectedBetweenEffectSpecifiersAndBody?.raw
      layout[11] = body?.raw
      layout[12] = unexpectedAfterBody?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[1].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndModifier: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var modifier: RawDeclModifierSyntax? {
    layoutView.children[3].map(RawDeclModifierSyntax.init(raw:))
  }
  
  public var unexpectedBetweenModifierAndAccessorSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var accessorSpecifier: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAccessorSpecifierAndParameters: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var parameters: RawAccessorParametersSyntax? {
    layoutView.children[7].map(RawAccessorParametersSyntax.init(raw:))
  }
  
  public var unexpectedBetweenParametersAndEffectSpecifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var effectSpecifiers: RawAccessorEffectSpecifiersSyntax? {
    layoutView.children[9].map(RawAccessorEffectSpecifiersSyntax.init(raw:))
  }
  
  public var unexpectedBetweenEffectSpecifiersAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax? {
    layoutView.children[11].map(RawCodeBlockSyntax.init(raw:))
  }
  
  public var unexpectedAfterBody: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
