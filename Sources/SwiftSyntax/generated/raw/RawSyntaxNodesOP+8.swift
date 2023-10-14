@_spi(RawSyntax)
public struct RawOptionalTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .optionalType
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
      _ unexpectedBeforeWrappedType: RawUnexpectedNodesSyntax? = nil, 
      wrappedType: RawTypeSyntax, 
      _ unexpectedBetweenWrappedTypeAndQuestionMark: RawUnexpectedNodesSyntax? = nil, 
      questionMark: RawTokenSyntax, 
      _ unexpectedAfterQuestionMark: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .optionalType, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeWrappedType?.raw
      layout[1] = wrappedType.raw
      layout[2] = unexpectedBetweenWrappedTypeAndQuestionMark?.raw
      layout[3] = questionMark.raw
      layout[4] = unexpectedAfterQuestionMark?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeWrappedType: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var wrappedType: RawTypeSyntax {
    layoutView.children[1].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenWrappedTypeAndQuestionMark: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var questionMark: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterQuestionMark: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
