@_spi(RawSyntax)
public struct RawSourceFileSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .sourceFile
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
      _ unexpectedBeforeShebang: RawUnexpectedNodesSyntax? = nil, 
      shebang: RawTokenSyntax?, 
      _ unexpectedBetweenShebangAndStatements: RawUnexpectedNodesSyntax? = nil, 
      statements: RawCodeBlockItemListSyntax, 
      _ unexpectedBetweenStatementsAndEndOfFileToken: RawUnexpectedNodesSyntax? = nil, 
      endOfFileToken: RawTokenSyntax, 
      _ unexpectedAfterEndOfFileToken: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .sourceFile, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeShebang?.raw
      layout[1] = shebang?.raw
      layout[2] = unexpectedBetweenShebangAndStatements?.raw
      layout[3] = statements.raw
      layout[4] = unexpectedBetweenStatementsAndEndOfFileToken?.raw
      layout[5] = endOfFileToken.raw
      layout[6] = unexpectedAfterEndOfFileToken?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeShebang: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var shebang: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenShebangAndStatements: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var statements: RawCodeBlockItemListSyntax {
    layoutView.children[3].map(RawCodeBlockItemListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenStatementsAndEndOfFileToken: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var endOfFileToken: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterEndOfFileToken: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
