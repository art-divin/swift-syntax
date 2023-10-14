@_spi(RawSyntax)
public struct RawAccessorBlockSyntax: RawSyntaxNodeProtocol {
  public enum Accessors: RawSyntaxNodeProtocol {
    case `accessors`(RawAccessorDeclListSyntax)
    case `getter`(RawCodeBlockItemListSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawAccessorDeclListSyntax.isKindOf(raw) || RawCodeBlockItemListSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .accessors(let node):
        return node.raw
      case .getter(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawAccessorDeclListSyntax(other) {
        self = .accessors(node)
        return
      }
      if let node = RawCodeBlockItemListSyntax(other) {
        self = .getter(node)
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
    return raw.kind == .accessorBlock
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
      _ unexpectedBeforeLeftBrace: RawUnexpectedNodesSyntax? = nil, 
      leftBrace: RawTokenSyntax, 
      _ unexpectedBetweenLeftBraceAndAccessors: RawUnexpectedNodesSyntax? = nil, 
      accessors: Accessors, 
      _ unexpectedBetweenAccessorsAndRightBrace: RawUnexpectedNodesSyntax? = nil, 
      rightBrace: RawTokenSyntax, 
      _ unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .accessorBlock, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftBrace?.raw
      layout[1] = leftBrace.raw
      layout[2] = unexpectedBetweenLeftBraceAndAccessors?.raw
      layout[3] = accessors.raw
      layout[4] = unexpectedBetweenAccessorsAndRightBrace?.raw
      layout[5] = rightBrace.raw
      layout[6] = unexpectedAfterRightBrace?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftBrace: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftBraceAndAccessors: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var accessors: RawSyntax {
    layoutView.children[3]!
  }
  
  public var unexpectedBetweenAccessorsAndRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightBrace: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
