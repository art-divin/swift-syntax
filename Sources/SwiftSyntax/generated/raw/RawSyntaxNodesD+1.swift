@_spi(RawSyntax)
public struct RawDeclModifierDetailSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declModifierDetail
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
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndDetail: RawUnexpectedNodesSyntax? = nil, 
      detail: RawTokenSyntax, 
      _ unexpectedBetweenDetailAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .declModifierDetail, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndDetail?.raw
      layout[3] = detail.raw
      layout[4] = unexpectedBetweenDetailAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndDetail: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var detail: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDetailAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
