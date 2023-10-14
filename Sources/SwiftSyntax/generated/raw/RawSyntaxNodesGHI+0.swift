@_spi(RawSyntax)
public struct RawGenericArgumentClauseSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .genericArgumentClause
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
      _ unexpectedBetweenLeftAngleAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawGenericArgumentListSyntax, 
      _ unexpectedBetweenArgumentsAndRightAngle: RawUnexpectedNodesSyntax? = nil, 
      rightAngle: RawTokenSyntax, 
      _ unexpectedAfterRightAngle: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .genericArgumentClause, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftAngle?.raw
      layout[1] = leftAngle.raw
      layout[2] = unexpectedBetweenLeftAngleAndArguments?.raw
      layout[3] = arguments.raw
      layout[4] = unexpectedBetweenArgumentsAndRightAngle?.raw
      layout[5] = rightAngle.raw
      layout[6] = unexpectedAfterRightAngle?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftAngle: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftAngle: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftAngleAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawGenericArgumentListSyntax {
    layoutView.children[3].map(RawGenericArgumentListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightAngle: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightAngle: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightAngle: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
