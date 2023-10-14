@_spi(RawSyntax)
public struct RawSameTypeRequirementSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .sameTypeRequirement
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
      _ unexpectedBeforeLeftType: RawUnexpectedNodesSyntax? = nil, 
      leftType: RawTypeSyntax, 
      _ unexpectedBetweenLeftTypeAndEqual: RawUnexpectedNodesSyntax? = nil, 
      equal: RawTokenSyntax, 
      _ unexpectedBetweenEqualAndRightType: RawUnexpectedNodesSyntax? = nil, 
      rightType: RawTypeSyntax, 
      _ unexpectedAfterRightType: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .sameTypeRequirement, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftType?.raw
      layout[1] = leftType.raw
      layout[2] = unexpectedBetweenLeftTypeAndEqual?.raw
      layout[3] = equal.raw
      layout[4] = unexpectedBetweenEqualAndRightType?.raw
      layout[5] = rightType.raw
      layout[6] = unexpectedAfterRightType?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftType: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftType: RawTypeSyntax {
    layoutView.children[1].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftTypeAndEqual: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var equal: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenEqualAndRightType: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightType: RawTypeSyntax {
    layoutView.children[5].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightType: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
