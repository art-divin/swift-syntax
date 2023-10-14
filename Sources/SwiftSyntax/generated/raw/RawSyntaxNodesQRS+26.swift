@_spi(RawSyntax)
public struct RawSwitchCaseListSyntax: RawSyntaxNodeProtocol {
  public enum Element: RawSyntaxNodeProtocol {
    case `switchCase`(RawSwitchCaseSyntax)
    case `ifConfigDecl`(RawIfConfigDeclSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawSwitchCaseSyntax.isKindOf(raw) || RawIfConfigDeclSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .switchCase(let node):
        return node.raw
      case .ifConfigDecl(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawSwitchCaseSyntax(other) {
        self = .switchCase(node)
        return
      }
      if let node = RawIfConfigDeclSyntax(other) {
        self = .ifConfigDecl(node)
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
    return raw.kind == .switchCaseList
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
      kind: .switchCaseList, uninitializedCount: elements.count, arena: arena) { layout in
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
