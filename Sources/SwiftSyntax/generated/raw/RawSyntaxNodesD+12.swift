@_spi(RawSyntax)
public struct RawDerivativeAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .derivativeAttributeArguments
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
      _ unexpectedBeforeOfLabel: RawUnexpectedNodesSyntax? = nil, 
      ofLabel: RawTokenSyntax, 
      _ unexpectedBetweenOfLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndOriginalDeclName: RawUnexpectedNodesSyntax? = nil, 
      originalDeclName: RawExprSyntax, 
      _ unexpectedBetweenOriginalDeclNameAndPeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax?, 
      _ unexpectedBetweenPeriodAndAccessorSpecifier: RawUnexpectedNodesSyntax? = nil, 
      accessorSpecifier: RawTokenSyntax?, 
      _ unexpectedBetweenAccessorSpecifierAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax?, 
      _ unexpectedBetweenCommaAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawDifferentiabilityWithRespectToArgumentSyntax?, 
      _ unexpectedAfterArguments: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .derivativeAttributeArguments, uninitializedCount: 15, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeOfLabel?.raw
      layout[1] = ofLabel.raw
      layout[2] = unexpectedBetweenOfLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndOriginalDeclName?.raw
      layout[5] = originalDeclName.raw
      layout[6] = unexpectedBetweenOriginalDeclNameAndPeriod?.raw
      layout[7] = period?.raw
      layout[8] = unexpectedBetweenPeriodAndAccessorSpecifier?.raw
      layout[9] = accessorSpecifier?.raw
      layout[10] = unexpectedBetweenAccessorSpecifierAndComma?.raw
      layout[11] = comma?.raw
      layout[12] = unexpectedBetweenCommaAndArguments?.raw
      layout[13] = arguments?.raw
      layout[14] = unexpectedAfterArguments?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeOfLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var ofLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOfLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndOriginalDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var originalDeclName: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOriginalDeclNameAndPeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenPeriodAndAccessorSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var accessorSpecifier: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAccessorSpecifierAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax? {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCommaAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawDifferentiabilityWithRespectToArgumentSyntax? {
    layoutView.children[13].map(RawDifferentiabilityWithRespectToArgumentSyntax.init(raw:))
  }
  
  public var unexpectedAfterArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
