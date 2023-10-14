@_spi(RawSyntax)
public struct RawPoundSourceLocationSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .poundSourceLocation
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
      _ unexpectedBeforePoundSourceLocation: RawUnexpectedNodesSyntax? = nil, 
      poundSourceLocation: RawTokenSyntax, 
      _ unexpectedBetweenPoundSourceLocationAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawPoundSourceLocationArgumentsSyntax?, 
      _ unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .poundSourceLocation, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePoundSourceLocation?.raw
      layout[1] = poundSourceLocation.raw
      layout[2] = unexpectedBetweenPoundSourceLocationAndLeftParen?.raw
      layout[3] = leftParen.raw
      layout[4] = unexpectedBetweenLeftParenAndArguments?.raw
      layout[5] = arguments?.raw
      layout[6] = unexpectedBetweenArgumentsAndRightParen?.raw
      layout[7] = rightParen.raw
      layout[8] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePoundSourceLocation: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var poundSourceLocation: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPoundSourceLocationAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawPoundSourceLocationArgumentsSyntax? {
    layoutView.children[5].map(RawPoundSourceLocationArgumentsSyntax.init(raw:))
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
