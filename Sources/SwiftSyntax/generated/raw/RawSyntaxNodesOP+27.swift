@_spi(RawSyntax)
public struct RawPrecedenceGroupAttributeListSyntax: RawSyntaxNodeProtocol {
  public enum Element: RawSyntaxNodeProtocol {
    case `precedenceGroupRelation`(RawPrecedenceGroupRelationSyntax)
    case `precedenceGroupAssignment`(RawPrecedenceGroupAssignmentSyntax)
    case `precedenceGroupAssociativity`(RawPrecedenceGroupAssociativitySyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawPrecedenceGroupRelationSyntax.isKindOf(raw) || RawPrecedenceGroupAssignmentSyntax.isKindOf(raw) || RawPrecedenceGroupAssociativitySyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .precedenceGroupRelation(let node):
        return node.raw
      case .precedenceGroupAssignment(let node):
        return node.raw
      case .precedenceGroupAssociativity(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawPrecedenceGroupRelationSyntax(other) {
        self = .precedenceGroupRelation(node)
        return
      }
      if let node = RawPrecedenceGroupAssignmentSyntax(other) {
        self = .precedenceGroupAssignment(node)
        return
      }
      if let node = RawPrecedenceGroupAssociativitySyntax(other) {
        self = .precedenceGroupAssociativity(node)
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
    return raw.kind == .precedenceGroupAttributeList
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
      kind: .precedenceGroupAttributeList, uninitializedCount: elements.count, arena: arena) { layout in
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
