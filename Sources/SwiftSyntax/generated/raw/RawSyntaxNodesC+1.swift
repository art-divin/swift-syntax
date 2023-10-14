@_spi(RawSyntax)
public struct RawCanImportVersionInfoSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .canImportVersionInfo
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
      _ unexpectedBeforeComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax, 
      _ unexpectedBetweenCommaAndLabel: RawUnexpectedNodesSyntax? = nil, 
      label: RawTokenSyntax, 
      _ unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndVersion: RawUnexpectedNodesSyntax? = nil, 
      version: RawVersionTupleSyntax, 
      _ unexpectedAfterVersion: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .canImportVersionInfo, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeComma?.raw
      layout[1] = comma.raw
      layout[2] = unexpectedBetweenCommaAndLabel?.raw
      layout[3] = label.raw
      layout[4] = unexpectedBetweenLabelAndColon?.raw
      layout[5] = colon.raw
      layout[6] = unexpectedBetweenColonAndVersion?.raw
      layout[7] = version.raw
      layout[8] = unexpectedAfterVersion?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeComma: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCommaAndLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var label: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndVersion: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var version: RawVersionTupleSyntax {
    layoutView.children[7].map(RawVersionTupleSyntax.init(raw:))!
  }
  
  public var unexpectedAfterVersion: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
