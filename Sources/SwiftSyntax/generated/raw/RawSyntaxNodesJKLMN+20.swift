@_spi(RawSyntax)
public struct RawMetatypeTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .metatypeType
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
      _ unexpectedBeforeBaseType: RawUnexpectedNodesSyntax? = nil, 
      baseType: RawTypeSyntax, 
      _ unexpectedBetweenBaseTypeAndPeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax, 
      _ unexpectedBetweenPeriodAndMetatypeSpecifier: RawUnexpectedNodesSyntax? = nil, 
      metatypeSpecifier: RawTokenSyntax, 
      _ unexpectedAfterMetatypeSpecifier: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .metatypeType, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBaseType?.raw
      layout[1] = baseType.raw
      layout[2] = unexpectedBetweenBaseTypeAndPeriod?.raw
      layout[3] = period.raw
      layout[4] = unexpectedBetweenPeriodAndMetatypeSpecifier?.raw
      layout[5] = metatypeSpecifier.raw
      layout[6] = unexpectedAfterMetatypeSpecifier?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBaseType: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var baseType: RawTypeSyntax {
    layoutView.children[1].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBaseTypeAndPeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPeriodAndMetatypeSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var metatypeSpecifier: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterMetatypeSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
