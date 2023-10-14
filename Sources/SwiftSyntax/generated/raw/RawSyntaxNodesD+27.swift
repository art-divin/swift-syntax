@_spi(RawSyntax)
public struct RawDoStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .doStmt
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
      _ unexpectedBeforeDoKeyword: RawUnexpectedNodesSyntax? = nil, 
      doKeyword: RawTokenSyntax, 
      _ unexpectedBetweenDoKeywordAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax, 
      _ unexpectedBetweenBodyAndCatchClauses: RawUnexpectedNodesSyntax? = nil, 
      catchClauses: RawCatchClauseListSyntax, 
      _ unexpectedAfterCatchClauses: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .doStmt, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDoKeyword?.raw
      layout[1] = doKeyword.raw
      layout[2] = unexpectedBetweenDoKeywordAndBody?.raw
      layout[3] = body.raw
      layout[4] = unexpectedBetweenBodyAndCatchClauses?.raw
      layout[5] = catchClauses.raw
      layout[6] = unexpectedAfterCatchClauses?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDoKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var doKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDoKeywordAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax {
    layoutView.children[3].map(RawCodeBlockSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBodyAndCatchClauses: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var catchClauses: RawCatchClauseListSyntax {
    layoutView.children[5].map(RawCatchClauseListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterCatchClauses: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
