@_spi(RawSyntax)
public struct RawRegexLiteralExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .regexLiteralExpr
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
      _ unexpectedBeforeOpeningPounds: RawUnexpectedNodesSyntax? = nil, 
      openingPounds: RawTokenSyntax?, 
      _ unexpectedBetweenOpeningPoundsAndOpeningSlash: RawUnexpectedNodesSyntax? = nil, 
      openingSlash: RawTokenSyntax, 
      _ unexpectedBetweenOpeningSlashAndRegex: RawUnexpectedNodesSyntax? = nil, 
      regex: RawTokenSyntax, 
      _ unexpectedBetweenRegexAndClosingSlash: RawUnexpectedNodesSyntax? = nil, 
      closingSlash: RawTokenSyntax, 
      _ unexpectedBetweenClosingSlashAndClosingPounds: RawUnexpectedNodesSyntax? = nil, 
      closingPounds: RawTokenSyntax?, 
      _ unexpectedAfterClosingPounds: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .regexLiteralExpr, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeOpeningPounds?.raw
      layout[1] = openingPounds?.raw
      layout[2] = unexpectedBetweenOpeningPoundsAndOpeningSlash?.raw
      layout[3] = openingSlash.raw
      layout[4] = unexpectedBetweenOpeningSlashAndRegex?.raw
      layout[5] = regex.raw
      layout[6] = unexpectedBetweenRegexAndClosingSlash?.raw
      layout[7] = closingSlash.raw
      layout[8] = unexpectedBetweenClosingSlashAndClosingPounds?.raw
      layout[9] = closingPounds?.raw
      layout[10] = unexpectedAfterClosingPounds?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeOpeningPounds: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var openingPounds: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenOpeningPoundsAndOpeningSlash: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var openingSlash: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOpeningSlashAndRegex: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var regex: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenRegexAndClosingSlash: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var closingSlash: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenClosingSlashAndClosingPounds: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var closingPounds: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterClosingPounds: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
