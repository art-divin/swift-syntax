@_spi(RawSyntax)
public struct RawOperatorDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .operatorDecl
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
      _ unexpectedBeforeFixitySpecifier: RawUnexpectedNodesSyntax? = nil, 
      fixitySpecifier: RawTokenSyntax, 
      _ unexpectedBetweenFixitySpecifierAndOperatorKeyword: RawUnexpectedNodesSyntax? = nil, 
      operatorKeyword: RawTokenSyntax, 
      _ unexpectedBetweenOperatorKeywordAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndOperatorPrecedenceAndTypes: RawUnexpectedNodesSyntax? = nil, 
      operatorPrecedenceAndTypes: RawOperatorPrecedenceAndTypesSyntax?, 
      _ unexpectedAfterOperatorPrecedenceAndTypes: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .operatorDecl, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeFixitySpecifier?.raw
      layout[1] = fixitySpecifier.raw
      layout[2] = unexpectedBetweenFixitySpecifierAndOperatorKeyword?.raw
      layout[3] = operatorKeyword.raw
      layout[4] = unexpectedBetweenOperatorKeywordAndName?.raw
      layout[5] = name.raw
      layout[6] = unexpectedBetweenNameAndOperatorPrecedenceAndTypes?.raw
      layout[7] = operatorPrecedenceAndTypes?.raw
      layout[8] = unexpectedAfterOperatorPrecedenceAndTypes?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeFixitySpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var fixitySpecifier: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenFixitySpecifierAndOperatorKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var operatorKeyword: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOperatorKeywordAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndOperatorPrecedenceAndTypes: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var operatorPrecedenceAndTypes: RawOperatorPrecedenceAndTypesSyntax? {
    layoutView.children[7].map(RawOperatorPrecedenceAndTypesSyntax.init(raw:))
  }
  
  public var unexpectedAfterOperatorPrecedenceAndTypes: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
