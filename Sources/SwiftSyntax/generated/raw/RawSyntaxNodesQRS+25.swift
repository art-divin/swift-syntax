@_spi(RawSyntax)
public struct RawSwitchCaseLabelSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .switchCaseLabel
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
      _ unexpectedBeforeCaseKeyword: RawUnexpectedNodesSyntax? = nil, 
      caseKeyword: RawTokenSyntax, 
      _ unexpectedBetweenCaseKeywordAndCaseItems: RawUnexpectedNodesSyntax? = nil, 
      caseItems: RawSwitchCaseItemListSyntax, 
      _ unexpectedBetweenCaseItemsAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedAfterColon: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .switchCaseLabel, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeCaseKeyword?.raw
      layout[1] = caseKeyword.raw
      layout[2] = unexpectedBetweenCaseKeywordAndCaseItems?.raw
      layout[3] = caseItems.raw
      layout[4] = unexpectedBetweenCaseItemsAndColon?.raw
      layout[5] = colon.raw
      layout[6] = unexpectedAfterColon?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeCaseKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var caseKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCaseKeywordAndCaseItems: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var caseItems: RawSwitchCaseItemListSyntax {
    layoutView.children[3].map(RawSwitchCaseItemListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCaseItemsAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterColon: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
