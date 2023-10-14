@_spi(RawSyntax)
public struct RawSpecializeAvailabilityArgumentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .specializeAvailabilityArgument
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
      _ unexpectedBeforeAvailabilityLabel: RawUnexpectedNodesSyntax? = nil, 
      availabilityLabel: RawTokenSyntax, 
      _ unexpectedBetweenAvailabilityLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndAvailabilityArguments: RawUnexpectedNodesSyntax? = nil, 
      availabilityArguments: RawAvailabilityArgumentListSyntax, 
      _ unexpectedBetweenAvailabilityArgumentsAndSemicolon: RawUnexpectedNodesSyntax? = nil, 
      semicolon: RawTokenSyntax, 
      _ unexpectedAfterSemicolon: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .specializeAvailabilityArgument, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAvailabilityLabel?.raw
      layout[1] = availabilityLabel.raw
      layout[2] = unexpectedBetweenAvailabilityLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndAvailabilityArguments?.raw
      layout[5] = availabilityArguments.raw
      layout[6] = unexpectedBetweenAvailabilityArgumentsAndSemicolon?.raw
      layout[7] = semicolon.raw
      layout[8] = unexpectedAfterSemicolon?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAvailabilityLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var availabilityLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAvailabilityLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndAvailabilityArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var availabilityArguments: RawAvailabilityArgumentListSyntax {
    layoutView.children[5].map(RawAvailabilityArgumentListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAvailabilityArgumentsAndSemicolon: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var semicolon: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterSemicolon: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
