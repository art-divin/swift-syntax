@_spi(RawSyntax)
public struct RawOperatorPrecedenceAndTypesSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .operatorPrecedenceAndTypes
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
      _ unexpectedBeforeColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndPrecedenceGroup: RawUnexpectedNodesSyntax? = nil, 
      precedenceGroup: RawTokenSyntax, 
      _ unexpectedBetweenPrecedenceGroupAndDesignatedTypes: RawUnexpectedNodesSyntax? = nil, 
      designatedTypes: RawDesignatedTypeListSyntax, 
      _ unexpectedAfterDesignatedTypes: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .operatorPrecedenceAndTypes, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeColon?.raw
      layout[1] = colon.raw
      layout[2] = unexpectedBetweenColonAndPrecedenceGroup?.raw
      layout[3] = precedenceGroup.raw
      layout[4] = unexpectedBetweenPrecedenceGroupAndDesignatedTypes?.raw
      layout[5] = designatedTypes.raw
      layout[6] = unexpectedAfterDesignatedTypes?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeColon: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndPrecedenceGroup: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var precedenceGroup: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPrecedenceGroupAndDesignatedTypes: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var designatedTypes: RawDesignatedTypeListSyntax {
    layoutView.children[5].map(RawDesignatedTypeListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterDesignatedTypes: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
