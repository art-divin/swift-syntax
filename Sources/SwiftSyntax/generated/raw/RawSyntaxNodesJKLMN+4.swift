@_spi(RawSyntax)
public struct RawKeyPathPropertyComponentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .keyPathPropertyComponent
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
      _ unexpectedBeforeDeclName: RawUnexpectedNodesSyntax? = nil, 
      declName: RawDeclReferenceExprSyntax, 
      _ unexpectedBetweenDeclNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      genericArgumentClause: RawGenericArgumentClauseSyntax?, 
      _ unexpectedAfterGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathPropertyComponent, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDeclName?.raw
      layout[1] = declName.raw
      layout[2] = unexpectedBetweenDeclNameAndGenericArgumentClause?.raw
      layout[3] = genericArgumentClause?.raw
      layout[4] = unexpectedAfterGenericArgumentClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var declName: RawDeclReferenceExprSyntax {
    layoutView.children[1].map(RawDeclReferenceExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDeclNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericArgumentClause: RawGenericArgumentClauseSyntax? {
    layoutView.children[3].map(RawGenericArgumentClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
