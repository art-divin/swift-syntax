@_spi(RawSyntax)
public struct RawGenericRequirementSyntax: RawSyntaxNodeProtocol {
  public enum Requirement: RawSyntaxNodeProtocol {
    case `sameTypeRequirement`(RawSameTypeRequirementSyntax)
    case `conformanceRequirement`(RawConformanceRequirementSyntax)
    case `layoutRequirement`(RawLayoutRequirementSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawSameTypeRequirementSyntax.isKindOf(raw) || RawConformanceRequirementSyntax.isKindOf(raw) || RawLayoutRequirementSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .sameTypeRequirement(let node):
        return node.raw
      case .conformanceRequirement(let node):
        return node.raw
      case .layoutRequirement(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawSameTypeRequirementSyntax(other) {
        self = .sameTypeRequirement(node)
        return
      }
      if let node = RawConformanceRequirementSyntax(other) {
        self = .conformanceRequirement(node)
        return
      }
      if let node = RawLayoutRequirementSyntax(other) {
        self = .layoutRequirement(node)
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
    return raw.kind == .genericRequirement
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
      _ unexpectedBeforeRequirement: RawUnexpectedNodesSyntax? = nil, 
      requirement: Requirement, 
      _ unexpectedBetweenRequirementAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .genericRequirement, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeRequirement?.raw
      layout[1] = requirement.raw
      layout[2] = unexpectedBetweenRequirementAndTrailingComma?.raw
      layout[3] = trailingComma?.raw
      layout[4] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeRequirement: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var requirement: RawSyntax {
    layoutView.children[1]!
  }
  
  public var unexpectedBetweenRequirementAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
