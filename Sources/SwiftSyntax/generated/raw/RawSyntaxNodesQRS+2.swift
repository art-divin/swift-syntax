@_spi(RawSyntax)
public struct RawRepeatStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .repeatStmt
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
      _ unexpectedBeforeRepeatKeyword: RawUnexpectedNodesSyntax? = nil, 
      repeatKeyword: RawTokenSyntax, 
      _ unexpectedBetweenRepeatKeywordAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax, 
      _ unexpectedBetweenBodyAndWhileKeyword: RawUnexpectedNodesSyntax? = nil, 
      whileKeyword: RawTokenSyntax, 
      _ unexpectedBetweenWhileKeywordAndCondition: RawUnexpectedNodesSyntax? = nil, 
      condition: RawExprSyntax, 
      _ unexpectedAfterCondition: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .repeatStmt, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeRepeatKeyword?.raw
      layout[1] = repeatKeyword.raw
      layout[2] = unexpectedBetweenRepeatKeywordAndBody?.raw
      layout[3] = body.raw
      layout[4] = unexpectedBetweenBodyAndWhileKeyword?.raw
      layout[5] = whileKeyword.raw
      layout[6] = unexpectedBetweenWhileKeywordAndCondition?.raw
      layout[7] = condition.raw
      layout[8] = unexpectedAfterCondition?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeRepeatKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var repeatKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenRepeatKeywordAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax {
    layoutView.children[3].map(RawCodeBlockSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBodyAndWhileKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var whileKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenWhileKeywordAndCondition: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var condition: RawExprSyntax {
    layoutView.children[7].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterCondition: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
