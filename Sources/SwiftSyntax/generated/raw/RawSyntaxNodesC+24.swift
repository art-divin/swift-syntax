@_spi(RawSyntax)
public struct RawCompositionTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .compositionType
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
      _ unexpectedBeforeElements: RawUnexpectedNodesSyntax? = nil, 
      elements: RawCompositionTypeElementListSyntax, 
      _ unexpectedAfterElements: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .compositionType, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeElements?.raw
      layout[1] = elements.raw
      layout[2] = unexpectedAfterElements?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeElements: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elements: RawCompositionTypeElementListSyntax {
    layoutView.children[1].map(RawCompositionTypeElementListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterElements: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
