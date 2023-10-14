@_spi(RawSyntax)
public struct RawMemberBlockItemSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .memberBlockItem
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
      _ unexpectedBeforeDecl: RawUnexpectedNodesSyntax? = nil, 
      decl: RawDeclSyntax, 
      _ unexpectedBetweenDeclAndSemicolon: RawUnexpectedNodesSyntax? = nil, 
      semicolon: RawTokenSyntax?, 
      _ unexpectedAfterSemicolon: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .memberBlockItem, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDecl?.raw
      layout[1] = decl.raw
      layout[2] = unexpectedBetweenDeclAndSemicolon?.raw
      layout[3] = semicolon?.raw
      layout[4] = unexpectedAfterSemicolon?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDecl: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var decl: RawDeclSyntax {
    layoutView.children[1].map(RawDeclSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDeclAndSemicolon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var semicolon: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterSemicolon: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
