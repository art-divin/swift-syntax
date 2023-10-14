@_spi(RawSyntax)
public struct RawVersionTupleSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .versionTuple
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
      _ unexpectedBeforeMajor: RawUnexpectedNodesSyntax? = nil, 
      major: RawTokenSyntax, 
      _ unexpectedBetweenMajorAndComponents: RawUnexpectedNodesSyntax? = nil, 
      components: RawVersionComponentListSyntax, 
      _ unexpectedAfterComponents: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .versionTuple, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeMajor?.raw
      layout[1] = major.raw
      layout[2] = unexpectedBetweenMajorAndComponents?.raw
      layout[3] = components.raw
      layout[4] = unexpectedAfterComponents?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeMajor: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var major: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMajorAndComponents: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var components: RawVersionComponentListSyntax {
    layoutView.children[3].map(RawVersionComponentListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterComponents: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
