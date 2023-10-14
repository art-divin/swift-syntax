@_spi(RawSyntax)
public struct RawAttributedTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .attributedType
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
      _ unexpectedBeforeSpecifier: RawUnexpectedNodesSyntax? = nil, 
      specifier: RawTokenSyntax?, 
      _ unexpectedBetweenSpecifierAndAttributes: RawUnexpectedNodesSyntax? = nil, 
      attributes: RawAttributeListSyntax, 
      _ unexpectedBetweenAttributesAndBaseType: RawUnexpectedNodesSyntax? = nil, 
      baseType: RawTypeSyntax, 
      _ unexpectedAfterBaseType: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .attributedType, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeSpecifier?.raw
      layout[1] = specifier?.raw
      layout[2] = unexpectedBetweenSpecifierAndAttributes?.raw
      layout[3] = attributes.raw
      layout[4] = unexpectedBetweenAttributesAndBaseType?.raw
      layout[5] = baseType.raw
      layout[6] = unexpectedAfterBaseType?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var specifier: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenSpecifierAndAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[3].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndBaseType: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var baseType: RawTypeSyntax {
    layoutView.children[5].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedAfterBaseType: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
