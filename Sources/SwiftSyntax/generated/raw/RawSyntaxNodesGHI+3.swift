@_spi(RawSyntax)
public struct RawGenericParameterClauseSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .genericParameterClause
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
      _ unexpectedBeforeLeftAngle: RawUnexpectedNodesSyntax? = nil, 
      leftAngle: RawTokenSyntax, 
      _ unexpectedBetweenLeftAngleAndParameters: RawUnexpectedNodesSyntax? = nil, 
      parameters: RawGenericParameterListSyntax, 
      _ unexpectedBetweenParametersAndGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      genericWhereClause: RawGenericWhereClauseSyntax?, 
      _ unexpectedBetweenGenericWhereClauseAndRightAngle: RawUnexpectedNodesSyntax? = nil, 
      rightAngle: RawTokenSyntax, 
      _ unexpectedAfterRightAngle: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .genericParameterClause, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftAngle?.raw
      layout[1] = leftAngle.raw
      layout[2] = unexpectedBetweenLeftAngleAndParameters?.raw
      layout[3] = parameters.raw
      layout[4] = unexpectedBetweenParametersAndGenericWhereClause?.raw
      layout[5] = genericWhereClause?.raw
      layout[6] = unexpectedBetweenGenericWhereClauseAndRightAngle?.raw
      layout[7] = rightAngle.raw
      layout[8] = unexpectedAfterRightAngle?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftAngle: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftAngle: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftAngleAndParameters: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var parameters: RawGenericParameterListSyntax {
    layoutView.children[3].map(RawGenericParameterListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenParametersAndGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericWhereClause: RawGenericWhereClauseSyntax? {
    layoutView.children[5].map(RawGenericWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericWhereClauseAndRightAngle: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightAngle: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightAngle: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
