@_spi(RawSyntax)
public struct RawIfConfigDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .ifConfigDecl
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
      _ unexpectedBeforeClauses: RawUnexpectedNodesSyntax? = nil, 
      clauses: RawIfConfigClauseListSyntax, 
      _ unexpectedBetweenClausesAndPoundEndif: RawUnexpectedNodesSyntax? = nil, 
      poundEndif: RawTokenSyntax, 
      _ unexpectedAfterPoundEndif: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .ifConfigDecl, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeClauses?.raw
      layout[1] = clauses.raw
      layout[2] = unexpectedBetweenClausesAndPoundEndif?.raw
      layout[3] = poundEndif.raw
      layout[4] = unexpectedAfterPoundEndif?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeClauses: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var clauses: RawIfConfigClauseListSyntax {
    layoutView.children[1].map(RawIfConfigClauseListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenClausesAndPoundEndif: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var poundEndif: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPoundEndif: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
