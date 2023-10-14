@_spi(RawSyntax)
public struct RawPrecedenceGroupRelationSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .precedenceGroupRelation
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
      _ unexpectedBeforeHigherThanOrLowerThanLabel: RawUnexpectedNodesSyntax? = nil, 
      higherThanOrLowerThanLabel: RawTokenSyntax, 
      _ unexpectedBetweenHigherThanOrLowerThanLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndPrecedenceGroups: RawUnexpectedNodesSyntax? = nil, 
      precedenceGroups: RawPrecedenceGroupNameListSyntax, 
      _ unexpectedAfterPrecedenceGroups: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .precedenceGroupRelation, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeHigherThanOrLowerThanLabel?.raw
      layout[1] = higherThanOrLowerThanLabel.raw
      layout[2] = unexpectedBetweenHigherThanOrLowerThanLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndPrecedenceGroups?.raw
      layout[5] = precedenceGroups.raw
      layout[6] = unexpectedAfterPrecedenceGroups?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeHigherThanOrLowerThanLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var higherThanOrLowerThanLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenHigherThanOrLowerThanLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndPrecedenceGroups: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var precedenceGroups: RawPrecedenceGroupNameListSyntax {
    layoutView.children[5].map(RawPrecedenceGroupNameListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPrecedenceGroups: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
