@_spi(RawSyntax)
public struct RawCodeBlockItemSyntax: RawSyntaxNodeProtocol {
  public enum Item: RawSyntaxNodeProtocol {
    case `decl`(RawDeclSyntax)
    case `stmt`(RawStmtSyntax)
    case `expr`(RawExprSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawDeclSyntax.isKindOf(raw) || RawStmtSyntax.isKindOf(raw) || RawExprSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .decl(let node):
        return node.raw
      case .stmt(let node):
        return node.raw
      case .expr(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawDeclSyntax(other) {
        self = .decl(node)
        return
      }
      if let node = RawStmtSyntax(other) {
        self = .stmt(node)
        return
      }
      if let node = RawExprSyntax(other) {
        self = .expr(node)
        return
      }
      return nil
    }
  }
  
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .codeBlockItem
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
      _ unexpectedBeforeItem: RawUnexpectedNodesSyntax? = nil, 
      item: Item, 
      _ unexpectedBetweenItemAndSemicolon: RawUnexpectedNodesSyntax? = nil, 
      semicolon: RawTokenSyntax?, 
      _ unexpectedAfterSemicolon: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .codeBlockItem, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeItem?.raw
      layout[1] = item.raw
      layout[2] = unexpectedBetweenItemAndSemicolon?.raw
      layout[3] = semicolon?.raw
      layout[4] = unexpectedAfterSemicolon?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeItem: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var item: RawSyntax {
    layoutView.children[1]!
  }
  
  public var unexpectedBetweenItemAndSemicolon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var semicolon: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterSemicolon: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
