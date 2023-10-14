@_spi(RawSyntax)
public struct RawEnumCaseParameterSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .enumCaseParameter
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
      _ unexpectedBeforeModifiers: RawUnexpectedNodesSyntax? = nil, 
      modifiers: RawDeclModifierListSyntax, 
      _ unexpectedBetweenModifiersAndFirstName: RawUnexpectedNodesSyntax? = nil, 
      firstName: RawTokenSyntax?, 
      _ unexpectedBetweenFirstNameAndSecondName: RawUnexpectedNodesSyntax? = nil, 
      secondName: RawTokenSyntax?, 
      _ unexpectedBetweenSecondNameAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax?, 
      _ unexpectedBetweenColonAndType: RawUnexpectedNodesSyntax? = nil, 
      type: RawTypeSyntax, 
      _ unexpectedBetweenTypeAndDefaultValue: RawUnexpectedNodesSyntax? = nil, 
      defaultValue: RawInitializerClauseSyntax?, 
      _ unexpectedBetweenDefaultValueAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .enumCaseParameter, uninitializedCount: 15, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeModifiers?.raw
      layout[1] = modifiers.raw
      layout[2] = unexpectedBetweenModifiersAndFirstName?.raw
      layout[3] = firstName?.raw
      layout[4] = unexpectedBetweenFirstNameAndSecondName?.raw
      layout[5] = secondName?.raw
      layout[6] = unexpectedBetweenSecondNameAndColon?.raw
      layout[7] = colon?.raw
      layout[8] = unexpectedBetweenColonAndType?.raw
      layout[9] = type.raw
      layout[10] = unexpectedBetweenTypeAndDefaultValue?.raw
      layout[11] = defaultValue?.raw
      layout[12] = unexpectedBetweenDefaultValueAndTrailingComma?.raw
      layout[13] = trailingComma?.raw
      layout[14] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeModifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var modifiers: RawDeclModifierListSyntax {
    layoutView.children[1].map(RawDeclModifierListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModifiersAndFirstName: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var firstName: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenFirstNameAndSecondName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var secondName: RawTokenSyntax? {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenSecondNameAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenColonAndType: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var type: RawTypeSyntax {
    layoutView.children[9].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenTypeAndDefaultValue: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var defaultValue: RawInitializerClauseSyntax? {
    layoutView.children[11].map(RawInitializerClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenDefaultValueAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[13].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
