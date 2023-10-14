@_spi(RawSyntax)
public struct RawMacroExpansionDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .macroExpansionDecl
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
      _ unexpectedBetweenModifiersAndPound: RawUnexpectedNodesSyntax? = nil, 
      pound: RawTokenSyntax, 
      _ unexpectedBetweenPoundAndMacroName: RawUnexpectedNodesSyntax? = nil, 
      macroName: RawTokenSyntax, 
      _ unexpectedBetweenMacroNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      genericArgumentClause: RawGenericArgumentClauseSyntax?, 
      _ unexpectedBetweenGenericArgumentClauseAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax?, 
      _ unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawLabeledExprListSyntax, 
      _ unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax?, 
      _ unexpectedBetweenRightParenAndTrailingClosure: RawUnexpectedNodesSyntax? = nil, 
      trailingClosure: RawClosureExprSyntax?, 
      _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax, 
      _ unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .macroExpansionDecl, uninitializedCount: 21, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndPound?.raw
      layout[5] = pound.raw
      layout[6] = unexpectedBetweenPoundAndMacroName?.raw
      layout[7] = macroName.raw
      layout[8] = unexpectedBetweenMacroNameAndGenericArgumentClause?.raw
      layout[9] = genericArgumentClause?.raw
      layout[10] = unexpectedBetweenGenericArgumentClauseAndLeftParen?.raw
      layout[11] = leftParen?.raw
      layout[12] = unexpectedBetweenLeftParenAndArguments?.raw
      layout[13] = arguments.raw
      layout[14] = unexpectedBetweenArgumentsAndRightParen?.raw
      layout[15] = rightParen?.raw
      layout[16] = unexpectedBetweenRightParenAndTrailingClosure?.raw
      layout[17] = trailingClosure?.raw
      layout[18] = unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures?.raw
      layout[19] = additionalTrailingClosures.raw
      layout[20] = unexpectedAfterAdditionalTrailingClosures?.raw
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
  
  public var unexpectedBetweenModifiersAndPound: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pound: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPoundAndMacroName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var macroName: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMacroNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericArgumentClause: RawGenericArgumentClauseSyntax? {
    layoutView.children[9].map(RawGenericArgumentClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericArgumentClauseAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax? {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawLabeledExprListSyntax {
    layoutView.children[13].map(RawLabeledExprListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax? {
    layoutView.children[15].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenRightParenAndTrailingClosure: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingClosure: RawClosureExprSyntax? {
    layoutView.children[17].map(RawClosureExprSyntax.init(raw:))
  }
  
  public var unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? {
    layoutView.children[18].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax {
    layoutView.children[19].map(RawMultipleTrailingClosureElementListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? {
    layoutView.children[20].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
