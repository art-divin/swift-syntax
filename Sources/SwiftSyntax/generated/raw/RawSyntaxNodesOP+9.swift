@_spi(RawSyntax)
public struct RawOriginallyDefinedInAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .originallyDefinedInAttributeArguments
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
      _ unexpectedBeforeModuleLabel: RawUnexpectedNodesSyntax? = nil, 
      moduleLabel: RawTokenSyntax, 
      _ unexpectedBetweenModuleLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndModuleName: RawUnexpectedNodesSyntax? = nil, 
      moduleName: RawStringLiteralExprSyntax, 
      _ unexpectedBetweenModuleNameAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax, 
      _ unexpectedBetweenCommaAndPlatforms: RawUnexpectedNodesSyntax? = nil, 
      platforms: RawPlatformVersionItemListSyntax, 
      _ unexpectedAfterPlatforms: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .originallyDefinedInAttributeArguments, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeModuleLabel?.raw
      layout[1] = moduleLabel.raw
      layout[2] = unexpectedBetweenModuleLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndModuleName?.raw
      layout[5] = moduleName.raw
      layout[6] = unexpectedBetweenModuleNameAndComma?.raw
      layout[7] = comma.raw
      layout[8] = unexpectedBetweenCommaAndPlatforms?.raw
      layout[9] = platforms.raw
      layout[10] = unexpectedAfterPlatforms?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeModuleLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var moduleLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModuleLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndModuleName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var moduleName: RawStringLiteralExprSyntax {
    layoutView.children[5].map(RawStringLiteralExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModuleNameAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCommaAndPlatforms: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var platforms: RawPlatformVersionItemListSyntax {
    layoutView.children[9].map(RawPlatformVersionItemListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPlatforms: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
