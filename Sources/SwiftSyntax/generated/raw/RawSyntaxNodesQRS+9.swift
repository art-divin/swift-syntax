@_spi(RawSyntax)
public struct RawSomeOrAnyTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .someOrAnyType
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
      _ unexpectedBeforeSomeOrAnySpecifier: RawUnexpectedNodesSyntax? = nil, 
      someOrAnySpecifier: RawTokenSyntax, 
      _ unexpectedBetweenSomeOrAnySpecifierAndConstraint: RawUnexpectedNodesSyntax? = nil, 
      constraint: RawTypeSyntax, 
      _ unexpectedAfterConstraint: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .someOrAnyType, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeSomeOrAnySpecifier?.raw
      layout[1] = someOrAnySpecifier.raw
      layout[2] = unexpectedBetweenSomeOrAnySpecifierAndConstraint?.raw
      layout[3] = constraint.raw
      layout[4] = unexpectedAfterConstraint?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeSomeOrAnySpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var someOrAnySpecifier: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSomeOrAnySpecifierAndConstraint: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var constraint: RawTypeSyntax {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedAfterConstraint: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
