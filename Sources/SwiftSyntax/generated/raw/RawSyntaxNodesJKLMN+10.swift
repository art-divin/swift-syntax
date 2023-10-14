@_spi(RawSyntax)
public struct RawLayoutRequirementSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .layoutRequirement
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
      _ unexpectedBeforeType: RawUnexpectedNodesSyntax? = nil, 
      type: RawTypeSyntax, 
      _ unexpectedBetweenTypeAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndLayoutSpecifier: RawUnexpectedNodesSyntax? = nil, 
      layoutSpecifier: RawTokenSyntax, 
      _ unexpectedBetweenLayoutSpecifierAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax?, 
      _ unexpectedBetweenLeftParenAndSize: RawUnexpectedNodesSyntax? = nil, 
      size: RawTokenSyntax?, 
      _ unexpectedBetweenSizeAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax?, 
      _ unexpectedBetweenCommaAndAlignment: RawUnexpectedNodesSyntax? = nil, 
      alignment: RawTokenSyntax?, 
      _ unexpectedBetweenAlignmentAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax?, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .layoutRequirement, uninitializedCount: 17, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeType?.raw
      layout[1] = type.raw
      layout[2] = unexpectedBetweenTypeAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndLayoutSpecifier?.raw
      layout[5] = layoutSpecifier.raw
      layout[6] = unexpectedBetweenLayoutSpecifierAndLeftParen?.raw
      layout[7] = leftParen?.raw
      layout[8] = unexpectedBetweenLeftParenAndSize?.raw
      layout[9] = size?.raw
      layout[10] = unexpectedBetweenSizeAndComma?.raw
      layout[11] = comma?.raw
      layout[12] = unexpectedBetweenCommaAndAlignment?.raw
      layout[13] = alignment?.raw
      layout[14] = unexpectedBetweenAlignmentAndRightParen?.raw
      layout[15] = rightParen?.raw
      layout[16] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeType: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var type: RawTypeSyntax {
    layoutView.children[1].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenTypeAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndLayoutSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var layoutSpecifier: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLayoutSpecifierAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLeftParenAndSize: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var size: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenSizeAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax? {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCommaAndAlignment: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var alignment: RawTokenSyntax? {
    layoutView.children[13].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAlignmentAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax? {
    layoutView.children[15].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
