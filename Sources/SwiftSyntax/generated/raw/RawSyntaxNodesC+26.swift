@_spi(RawSyntax)
public struct RawConditionElementSyntax: RawSyntaxNodeProtocol {
  public enum Condition: RawSyntaxNodeProtocol {
    case `expression`(RawExprSyntax)
    case `availability`(RawAvailabilityConditionSyntax)
    case `matchingPattern`(RawMatchingPatternConditionSyntax)
    case `optionalBinding`(RawOptionalBindingConditionSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawExprSyntax.isKindOf(raw) || RawAvailabilityConditionSyntax.isKindOf(raw) || RawMatchingPatternConditionSyntax.isKindOf(raw) || RawOptionalBindingConditionSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .expression(let node):
        return node.raw
      case .availability(let node):
        return node.raw
      case .matchingPattern(let node):
        return node.raw
      case .optionalBinding(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawExprSyntax(other) {
        self = .expression(node)
        return
      }
      if let node = RawAvailabilityConditionSyntax(other) {
        self = .availability(node)
        return
      }
      if let node = RawMatchingPatternConditionSyntax(other) {
        self = .matchingPattern(node)
        return
      }
      if let node = RawOptionalBindingConditionSyntax(other) {
        self = .optionalBinding(node)
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
    return raw.kind == .conditionElement
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
      _ unexpectedBeforeCondition: RawUnexpectedNodesSyntax? = nil, 
      condition: Condition, 
      _ unexpectedBetweenConditionAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .conditionElement, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeCondition?.raw
      layout[1] = condition.raw
      layout[2] = unexpectedBetweenConditionAndTrailingComma?.raw
      layout[3] = trailingComma?.raw
      layout[4] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeCondition: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var condition: RawSyntax {
    layoutView.children[1]!
  }
  
  public var unexpectedBetweenConditionAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
