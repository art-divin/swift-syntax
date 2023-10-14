@_spi(RawSyntax)
public struct RawPlatformVersionSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .platformVersion
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
      _ unexpectedBeforePlatform: RawUnexpectedNodesSyntax? = nil, 
      platform: RawTokenSyntax, 
      _ unexpectedBetweenPlatformAndVersion: RawUnexpectedNodesSyntax? = nil, 
      version: RawVersionTupleSyntax?, 
      _ unexpectedAfterVersion: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .platformVersion, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePlatform?.raw
      layout[1] = platform.raw
      layout[2] = unexpectedBetweenPlatformAndVersion?.raw
      layout[3] = version?.raw
      layout[4] = unexpectedAfterVersion?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePlatform: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var platform: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPlatformAndVersion: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var version: RawVersionTupleSyntax? {
    layoutView.children[3].map(RawVersionTupleSyntax.init(raw:))
  }
  
  public var unexpectedAfterVersion: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
