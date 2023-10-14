@_spi(RawSyntax)
public struct RawIdentifierTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .identifierType
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
      _ unexpectedBeforeName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      genericArgumentClause: RawGenericArgumentClauseSyntax?, 
      _ unexpectedAfterGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .identifierType, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeName?.raw
      layout[1] = name.raw
      layout[2] = unexpectedBetweenNameAndGenericArgumentClause?.raw
      layout[3] = genericArgumentClause?.raw
      layout[4] = unexpectedAfterGenericArgumentClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericArgumentClause: RawGenericArgumentClauseSyntax? {
    layoutView.children[3].map(RawGenericArgumentClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
