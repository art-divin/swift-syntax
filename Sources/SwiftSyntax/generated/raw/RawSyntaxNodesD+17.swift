@_spi(RawSyntax)
public struct RawDictionaryExprSyntax: RawExprSyntaxNodeProtocol {
  public enum Content: RawSyntaxNodeProtocol {
    case `colon`(RawTokenSyntax)
    case `elements`(RawDictionaryElementListSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawTokenSyntax.isKindOf(raw) || RawDictionaryElementListSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .colon(let node):
        return node.raw
      case .elements(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawTokenSyntax(other) {
        self = .colon(node)
        return
      }
      if let node = RawDictionaryElementListSyntax(other) {
        self = .elements(node)
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
    return raw.kind == .dictionaryExpr
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
      _ unexpectedBeforeLeftSquare: RawUnexpectedNodesSyntax? = nil, 
      leftSquare: RawTokenSyntax, 
      _ unexpectedBetweenLeftSquareAndContent: RawUnexpectedNodesSyntax? = nil, 
      content: Content, 
      _ unexpectedBetweenContentAndRightSquare: RawUnexpectedNodesSyntax? = nil, 
      rightSquare: RawTokenSyntax, 
      _ unexpectedAfterRightSquare: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .dictionaryExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftSquare?.raw
      layout[1] = leftSquare.raw
      layout[2] = unexpectedBetweenLeftSquareAndContent?.raw
      layout[3] = content.raw
      layout[4] = unexpectedBetweenContentAndRightSquare?.raw
      layout[5] = rightSquare.raw
      layout[6] = unexpectedAfterRightSquare?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftSquare: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftSquareAndContent: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var content: RawSyntax {
    layoutView.children[3]!
  }
  
  public var unexpectedBetweenContentAndRightSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightSquare: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
