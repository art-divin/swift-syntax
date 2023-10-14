@_spi(RawSyntax)
public struct RawInheritanceClauseSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .inheritanceClause
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
      _ unexpectedBeforeColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndInheritedTypes: RawUnexpectedNodesSyntax? = nil, 
      inheritedTypes: RawInheritedTypeListSyntax, 
      _ unexpectedAfterInheritedTypes: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .inheritanceClause, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeColon?.raw
      layout[1] = colon.raw
      layout[2] = unexpectedBetweenColonAndInheritedTypes?.raw
      layout[3] = inheritedTypes.raw
      layout[4] = unexpectedAfterInheritedTypes?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeColon: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndInheritedTypes: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var inheritedTypes: RawInheritedTypeListSyntax {
    layoutView.children[3].map(RawInheritedTypeListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterInheritedTypes: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
