@_spi(RawSyntax)
public struct RawSpecializeAttributeArgumentListSyntax: RawSyntaxNodeProtocol {
  public enum Element: RawSyntaxNodeProtocol {
    case `labeledSpecializeArgument`(RawLabeledSpecializeArgumentSyntax)
    case `specializeAvailabilityArgument`(RawSpecializeAvailabilityArgumentSyntax)
    case `specializeTargetFunctionArgument`(RawSpecializeTargetFunctionArgumentSyntax)
    case `genericWhereClause`(RawGenericWhereClauseSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawLabeledSpecializeArgumentSyntax.isKindOf(raw) || RawSpecializeAvailabilityArgumentSyntax.isKindOf(raw) || RawSpecializeTargetFunctionArgumentSyntax.isKindOf(raw) || RawGenericWhereClauseSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .labeledSpecializeArgument(let node):
        return node.raw
      case .specializeAvailabilityArgument(let node):
        return node.raw
      case .specializeTargetFunctionArgument(let node):
        return node.raw
      case .genericWhereClause(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawLabeledSpecializeArgumentSyntax(other) {
        self = .labeledSpecializeArgument(node)
        return
      }
      if let node = RawSpecializeAvailabilityArgumentSyntax(other) {
        self = .specializeAvailabilityArgument(node)
        return
      }
      if let node = RawSpecializeTargetFunctionArgumentSyntax(other) {
        self = .specializeTargetFunctionArgument(node)
        return
      }
      if let node = RawGenericWhereClauseSyntax(other) {
        self = .genericWhereClause(node)
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
    return raw.kind == .specializeAttributeArgumentList
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
  
  public init(elements: [Element], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .specializeAttributeArgumentList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawSyntax] {
    layoutView.children.map {
      RawSyntax(raw: $0!)
    }
  }
}
