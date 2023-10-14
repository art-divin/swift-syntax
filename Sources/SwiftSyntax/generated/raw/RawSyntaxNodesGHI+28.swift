@_spi(RawSyntax)
public struct RawInitializerDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .initializerDecl
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
      _ unexpectedBetweenModifiersAndInitKeyword: RawUnexpectedNodesSyntax? = nil, 
      initKeyword: RawTokenSyntax, 
      _ unexpectedBetweenInitKeywordAndOptionalMark: RawUnexpectedNodesSyntax? = nil, 
      optionalMark: RawTokenSyntax?, 
      _ unexpectedBetweenOptionalMarkAndGenericParameterClause: RawUnexpectedNodesSyntax? = nil, 
      genericParameterClause: RawGenericParameterClauseSyntax?, 
      _ unexpectedBetweenGenericParameterClauseAndSignature: RawUnexpectedNodesSyntax? = nil, 
      signature: RawFunctionSignatureSyntax, 
      _ unexpectedBetweenSignatureAndGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      genericWhereClause: RawGenericWhereClauseSyntax?, 
      _ unexpectedBetweenGenericWhereClauseAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax?, 
      _ unexpectedAfterBody: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .initializerDecl, uninitializedCount: 17, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndInitKeyword?.raw
      layout[5] = initKeyword.raw
      layout[6] = unexpectedBetweenInitKeywordAndOptionalMark?.raw
      layout[7] = optionalMark?.raw
      layout[8] = unexpectedBetweenOptionalMarkAndGenericParameterClause?.raw
      layout[9] = genericParameterClause?.raw
      layout[10] = unexpectedBetweenGenericParameterClauseAndSignature?.raw
      layout[11] = signature.raw
      layout[12] = unexpectedBetweenSignatureAndGenericWhereClause?.raw
      layout[13] = genericWhereClause?.raw
      layout[14] = unexpectedBetweenGenericWhereClauseAndBody?.raw
      layout[15] = body?.raw
      layout[16] = unexpectedAfterBody?.raw
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
  
  public var unexpectedBetweenModifiersAndInitKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var initKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenInitKeywordAndOptionalMark: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var optionalMark: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenOptionalMarkAndGenericParameterClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericParameterClause: RawGenericParameterClauseSyntax? {
    layoutView.children[9].map(RawGenericParameterClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericParameterClauseAndSignature: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var signature: RawFunctionSignatureSyntax {
    layoutView.children[11].map(RawFunctionSignatureSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSignatureAndGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericWhereClause: RawGenericWhereClauseSyntax? {
    layoutView.children[13].map(RawGenericWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericWhereClauseAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax? {
    layoutView.children[15].map(RawCodeBlockSyntax.init(raw:))
  }
  
  public var unexpectedAfterBody: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
