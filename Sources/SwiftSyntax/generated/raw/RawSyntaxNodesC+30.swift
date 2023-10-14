@_spi(RawSyntax)
public struct RawConventionAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .conventionAttributeArguments
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
      _ unexpectedBeforeConventionLabel: RawUnexpectedNodesSyntax? = nil, 
      conventionLabel: RawTokenSyntax, 
      _ unexpectedBetweenConventionLabelAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax?, 
      _ unexpectedBetweenCommaAndCTypeLabel: RawUnexpectedNodesSyntax? = nil, 
      cTypeLabel: RawTokenSyntax?, 
      _ unexpectedBetweenCTypeLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax?, 
      _ unexpectedBetweenColonAndCTypeString: RawUnexpectedNodesSyntax? = nil, 
      cTypeString: RawStringLiteralExprSyntax?, 
      _ unexpectedAfterCTypeString: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .conventionAttributeArguments, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeConventionLabel?.raw
      layout[1] = conventionLabel.raw
      layout[2] = unexpectedBetweenConventionLabelAndComma?.raw
      layout[3] = comma?.raw
      layout[4] = unexpectedBetweenCommaAndCTypeLabel?.raw
      layout[5] = cTypeLabel?.raw
      layout[6] = unexpectedBetweenCTypeLabelAndColon?.raw
      layout[7] = colon?.raw
      layout[8] = unexpectedBetweenColonAndCTypeString?.raw
      layout[9] = cTypeString?.raw
      layout[10] = unexpectedAfterCTypeString?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeConventionLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var conventionLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenConventionLabelAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCommaAndCTypeLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var cTypeLabel: RawTokenSyntax? {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCTypeLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenColonAndCTypeString: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var cTypeString: RawStringLiteralExprSyntax? {
    layoutView.children[9].map(RawStringLiteralExprSyntax.init(raw:))
  }
  
  public var unexpectedAfterCTypeString: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
