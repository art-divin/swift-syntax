@_spi(RawSyntax)
public struct RawPackExpansionTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .packExpansionType
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
      _ unexpectedBetweenRepeatKeywordAndRepetitionPattern: RawUnexpectedNodesSyntax? = nil, 
      repetitionPattern: RawTypeSyntax, 
      _ unexpectedAfterRepetitionPattern: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .packExpansionType, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeRepeatKeyword?.raw
      layout[1] = repeatKeyword.raw
      layout[2] = unexpectedBetweenRepeatKeywordAndRepetitionPattern?.raw
      layout[3] = repetitionPattern.raw
      layout[4] = unexpectedAfterRepetitionPattern?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeRepeatKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var repeatKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenRepeatKeywordAndRepetitionPattern: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var repetitionPattern: RawTypeSyntax {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRepetitionPattern: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
