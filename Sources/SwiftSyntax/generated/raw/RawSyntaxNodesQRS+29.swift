@_spi(RawSyntax)
public struct RawSwitchExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .switchExpr
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
      _ unexpectedBeforeSwitchKeyword: RawUnexpectedNodesSyntax? = nil, 
      switchKeyword: RawTokenSyntax, 
      _ unexpectedBetweenSwitchKeywordAndSubject: RawUnexpectedNodesSyntax? = nil, 
      subject: RawExprSyntax, 
      _ unexpectedBetweenSubjectAndLeftBrace: RawUnexpectedNodesSyntax? = nil, 
      leftBrace: RawTokenSyntax, 
      _ unexpectedBetweenLeftBraceAndCases: RawUnexpectedNodesSyntax? = nil, 
      cases: RawSwitchCaseListSyntax, 
      _ unexpectedBetweenCasesAndRightBrace: RawUnexpectedNodesSyntax? = nil, 
      rightBrace: RawTokenSyntax, 
      _ unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .switchExpr, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeSwitchKeyword?.raw
      layout[1] = switchKeyword.raw
      layout[2] = unexpectedBetweenSwitchKeywordAndSubject?.raw
      layout[3] = subject.raw
      layout[4] = unexpectedBetweenSubjectAndLeftBrace?.raw
      layout[5] = leftBrace.raw
      layout[6] = unexpectedBetweenLeftBraceAndCases?.raw
      layout[7] = cases.raw
      layout[8] = unexpectedBetweenCasesAndRightBrace?.raw
      layout[9] = rightBrace.raw
      layout[10] = unexpectedAfterRightBrace?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeSwitchKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var switchKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSwitchKeywordAndSubject: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var subject: RawExprSyntax {
    layoutView.children[3].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSubjectAndLeftBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftBrace: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftBraceAndCases: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var cases: RawSwitchCaseListSyntax {
    layoutView.children[7].map(RawSwitchCaseListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCasesAndRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightBrace: RawTokenSyntax {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
