@_spi(RawSyntax)
public struct RawArrowExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .arrowExpr
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
      _ unexpectedBeforeEffectSpecifiers: RawUnexpectedNodesSyntax? = nil, 
      effectSpecifiers: RawTypeEffectSpecifiersSyntax?, 
      _ unexpectedBetweenEffectSpecifiersAndArrow: RawUnexpectedNodesSyntax? = nil, 
      arrow: RawTokenSyntax, 
      _ unexpectedAfterArrow: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .arrowExpr, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeEffectSpecifiers?.raw
      layout[1] = effectSpecifiers?.raw
      layout[2] = unexpectedBetweenEffectSpecifiersAndArrow?.raw
      layout[3] = arrow.raw
      layout[4] = unexpectedAfterArrow?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeEffectSpecifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var effectSpecifiers: RawTypeEffectSpecifiersSyntax? {
    layoutView.children[1].map(RawTypeEffectSpecifiersSyntax.init(raw:))
  }
  
  public var unexpectedBetweenEffectSpecifiersAndArrow: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arrow: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterArrow: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
