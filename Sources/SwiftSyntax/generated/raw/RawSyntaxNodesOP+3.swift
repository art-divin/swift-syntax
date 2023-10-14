@_spi(RawSyntax)
public struct RawOpaqueReturnTypeOfAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .opaqueReturnTypeOfAttributeArguments
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
      _ unexpectedBeforeMangledName: RawUnexpectedNodesSyntax? = nil, 
      mangledName: RawStringLiteralExprSyntax, 
      _ unexpectedBetweenMangledNameAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax, 
      _ unexpectedBetweenCommaAndOrdinal: RawUnexpectedNodesSyntax? = nil, 
      ordinal: RawTokenSyntax, 
      _ unexpectedAfterOrdinal: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .opaqueReturnTypeOfAttributeArguments, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeMangledName?.raw
      layout[1] = mangledName.raw
      layout[2] = unexpectedBetweenMangledNameAndComma?.raw
      layout[3] = comma.raw
      layout[4] = unexpectedBetweenCommaAndOrdinal?.raw
      layout[5] = ordinal.raw
      layout[6] = unexpectedAfterOrdinal?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeMangledName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var mangledName: RawStringLiteralExprSyntax {
    layoutView.children[1].map(RawStringLiteralExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMangledNameAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCommaAndOrdinal: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var ordinal: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterOrdinal: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
