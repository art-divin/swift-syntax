@_spi(RawSyntax)
public struct RawStringLiteralSegmentListSyntax: RawSyntaxNodeProtocol {
  public enum Element: RawSyntaxNodeProtocol {
    case `stringSegment`(RawStringSegmentSyntax)
    case `expressionSegment`(RawExpressionSegmentSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawStringSegmentSyntax.isKindOf(raw) || RawExpressionSegmentSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .stringSegment(let node):
        return node.raw
      case .expressionSegment(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawStringSegmentSyntax(other) {
        self = .stringSegment(node)
        return
      }
      if let node = RawExpressionSegmentSyntax(other) {
        self = .expressionSegment(node)
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
    return raw.kind == .stringLiteralSegmentList
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
      kind: .stringLiteralSegmentList, uninitializedCount: elements.count, arena: arena) { layout in
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
