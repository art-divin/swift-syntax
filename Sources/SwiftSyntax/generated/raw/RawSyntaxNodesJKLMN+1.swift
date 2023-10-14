@_spi(RawSyntax)
public struct RawKeyPathComponentSyntax: RawSyntaxNodeProtocol {
  public enum Component: RawSyntaxNodeProtocol {
    case `property`(RawKeyPathPropertyComponentSyntax)
    case `subscript`(RawKeyPathSubscriptComponentSyntax)
    case `optional`(RawKeyPathOptionalComponentSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawKeyPathPropertyComponentSyntax.isKindOf(raw) || RawKeyPathSubscriptComponentSyntax.isKindOf(raw) || RawKeyPathOptionalComponentSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .property(let node):
        return node.raw
      case .subscript(let node):
        return node.raw
      case .optional(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawKeyPathPropertyComponentSyntax(other) {
        self = .property(node)
        return
      }
      if let node = RawKeyPathSubscriptComponentSyntax(other) {
        self = .subscript(node)
        return
      }
      if let node = RawKeyPathOptionalComponentSyntax(other) {
        self = .optional(node)
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
    return raw.kind == .keyPathComponent
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
      _ unexpectedBeforePeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax?, 
      _ unexpectedBetweenPeriodAndComponent: RawUnexpectedNodesSyntax? = nil, 
      component: Component, 
      _ unexpectedAfterComponent: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathComponent, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePeriod?.raw
      layout[1] = period?.raw
      layout[2] = unexpectedBetweenPeriodAndComponent?.raw
      layout[3] = component.raw
      layout[4] = unexpectedAfterComponent?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenPeriodAndComponent: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var component: RawSyntax {
    layoutView.children[3]!
  }
  
  public var unexpectedAfterComponent: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
