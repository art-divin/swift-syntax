@_spi(RawSyntax)
public struct RawAvailabilityArgumentSyntax: RawSyntaxNodeProtocol {
  public enum Argument: RawSyntaxNodeProtocol {
    case `token`(RawTokenSyntax)
    case `availabilityVersionRestriction`(RawPlatformVersionSyntax)
    case `availabilityLabeledArgument`(RawAvailabilityLabeledArgumentSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawTokenSyntax.isKindOf(raw) || RawPlatformVersionSyntax.isKindOf(raw) || RawAvailabilityLabeledArgumentSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .token(let node):
        return node.raw
      case .availabilityVersionRestriction(let node):
        return node.raw
      case .availabilityLabeledArgument(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawTokenSyntax(other) {
        self = .token(node)
        return
      }
      if let node = RawPlatformVersionSyntax(other) {
        self = .availabilityVersionRestriction(node)
        return
      }
      if let node = RawAvailabilityLabeledArgumentSyntax(other) {
        self = .availabilityLabeledArgument(node)
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
    return raw.kind == .availabilityArgument
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
      _ unexpectedBeforeArgument: RawUnexpectedNodesSyntax? = nil, 
      argument: Argument, 
      _ unexpectedBetweenArgumentAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .availabilityArgument, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeArgument?.raw
      layout[1] = argument.raw
      layout[2] = unexpectedBetweenArgumentAndTrailingComma?.raw
      layout[3] = trailingComma?.raw
      layout[4] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeArgument: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var argument: RawSyntax {
    layoutView.children[1]!
  }
  
  public var unexpectedBetweenArgumentAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
