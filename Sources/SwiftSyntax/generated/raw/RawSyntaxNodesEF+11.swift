@_spi(RawSyntax)
public struct RawExposeAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .exposeAttributeArguments
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
      _ unexpectedBeforeLanguage: RawUnexpectedNodesSyntax? = nil, 
      language: RawTokenSyntax, 
      _ unexpectedBetweenLanguageAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax?, 
      _ unexpectedBetweenCommaAndCxxName: RawUnexpectedNodesSyntax? = nil, 
      cxxName: RawStringLiteralExprSyntax?, 
      _ unexpectedAfterCxxName: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .exposeAttributeArguments, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLanguage?.raw
      layout[1] = language.raw
      layout[2] = unexpectedBetweenLanguageAndComma?.raw
      layout[3] = comma?.raw
      layout[4] = unexpectedBetweenCommaAndCxxName?.raw
      layout[5] = cxxName?.raw
      layout[6] = unexpectedAfterCxxName?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLanguage: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var language: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLanguageAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCommaAndCxxName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var cxxName: RawStringLiteralExprSyntax? {
    layoutView.children[5].map(RawStringLiteralExprSyntax.init(raw:))
  }
  
  public var unexpectedAfterCxxName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
