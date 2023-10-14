@_spi(RawSyntax)
public struct RawDifferentiabilityWithRespectToArgumentSyntax: RawSyntaxNodeProtocol {
  public enum Arguments: RawSyntaxNodeProtocol {
    case `argument`(RawDifferentiabilityArgumentSyntax)
    case `argumentList`(RawDifferentiabilityArgumentsSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawDifferentiabilityArgumentSyntax.isKindOf(raw) || RawDifferentiabilityArgumentsSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .argument(let node):
        return node.raw
      case .argumentList(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawDifferentiabilityArgumentSyntax(other) {
        self = .argument(node)
        return
      }
      if let node = RawDifferentiabilityArgumentsSyntax(other) {
        self = .argumentList(node)
        return
      }
      return nil
    }
  }
  
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .differentiabilityWithRespectToArgument
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
      _ unexpectedBeforeWrtLabel: RawUnexpectedNodesSyntax? = nil, 
      wrtLabel: RawTokenSyntax, 
      _ unexpectedBetweenWrtLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: Arguments, 
      _ unexpectedAfterArguments: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .differentiabilityWithRespectToArgument, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeWrtLabel?.raw
      layout[1] = wrtLabel.raw
      layout[2] = unexpectedBetweenWrtLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndArguments?.raw
      layout[5] = arguments.raw
      layout[6] = unexpectedAfterArguments?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeWrtLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var wrtLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenWrtLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawSyntax {
    layoutView.children[5]!
  }
  
  public var unexpectedAfterArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
