@_spi(RawSyntax)
public struct RawForStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .forStmt
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
      _ unexpectedBeforeForKeyword: RawUnexpectedNodesSyntax? = nil, 
      forKeyword: RawTokenSyntax, 
      _ unexpectedBetweenForKeywordAndTryKeyword: RawUnexpectedNodesSyntax? = nil, 
      tryKeyword: RawTokenSyntax?, 
      _ unexpectedBetweenTryKeywordAndAwaitKeyword: RawUnexpectedNodesSyntax? = nil, 
      awaitKeyword: RawTokenSyntax?, 
      _ unexpectedBetweenAwaitKeywordAndCaseKeyword: RawUnexpectedNodesSyntax? = nil, 
      caseKeyword: RawTokenSyntax?, 
      _ unexpectedBetweenCaseKeywordAndPattern: RawUnexpectedNodesSyntax? = nil, 
      pattern: RawPatternSyntax, 
      _ unexpectedBetweenPatternAndTypeAnnotation: RawUnexpectedNodesSyntax? = nil, 
      typeAnnotation: RawTypeAnnotationSyntax?, 
      _ unexpectedBetweenTypeAnnotationAndInKeyword: RawUnexpectedNodesSyntax? = nil, 
      inKeyword: RawTokenSyntax, 
      _ unexpectedBetweenInKeywordAndSequence: RawUnexpectedNodesSyntax? = nil, 
      sequence: RawExprSyntax, 
      _ unexpectedBetweenSequenceAndWhereClause: RawUnexpectedNodesSyntax? = nil, 
      whereClause: RawWhereClauseSyntax?, 
      _ unexpectedBetweenWhereClauseAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax, 
      _ unexpectedAfterBody: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .forStmt, uninitializedCount: 21, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeForKeyword?.raw
      layout[1] = forKeyword.raw
      layout[2] = unexpectedBetweenForKeywordAndTryKeyword?.raw
      layout[3] = tryKeyword?.raw
      layout[4] = unexpectedBetweenTryKeywordAndAwaitKeyword?.raw
      layout[5] = awaitKeyword?.raw
      layout[6] = unexpectedBetweenAwaitKeywordAndCaseKeyword?.raw
      layout[7] = caseKeyword?.raw
      layout[8] = unexpectedBetweenCaseKeywordAndPattern?.raw
      layout[9] = pattern.raw
      layout[10] = unexpectedBetweenPatternAndTypeAnnotation?.raw
      layout[11] = typeAnnotation?.raw
      layout[12] = unexpectedBetweenTypeAnnotationAndInKeyword?.raw
      layout[13] = inKeyword.raw
      layout[14] = unexpectedBetweenInKeywordAndSequence?.raw
      layout[15] = sequence.raw
      layout[16] = unexpectedBetweenSequenceAndWhereClause?.raw
      layout[17] = whereClause?.raw
      layout[18] = unexpectedBetweenWhereClauseAndBody?.raw
      layout[19] = body.raw
      layout[20] = unexpectedAfterBody?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeForKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var forKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenForKeywordAndTryKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var tryKeyword: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenTryKeywordAndAwaitKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var awaitKeyword: RawTokenSyntax? {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAwaitKeywordAndCaseKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var caseKeyword: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCaseKeywordAndPattern: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pattern: RawPatternSyntax {
    layoutView.children[9].map(RawPatternSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPatternAndTypeAnnotation: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var typeAnnotation: RawTypeAnnotationSyntax? {
    layoutView.children[11].map(RawTypeAnnotationSyntax.init(raw:))
  }
  
  public var unexpectedBetweenTypeAnnotationAndInKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var inKeyword: RawTokenSyntax {
    layoutView.children[13].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenInKeywordAndSequence: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var sequence: RawExprSyntax {
    layoutView.children[15].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSequenceAndWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var whereClause: RawWhereClauseSyntax? {
    layoutView.children[17].map(RawWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenWhereClauseAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[18].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax {
    layoutView.children[19].map(RawCodeBlockSyntax.init(raw:))!
  }
  
  public var unexpectedAfterBody: RawUnexpectedNodesSyntax? {
    layoutView.children[20].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
