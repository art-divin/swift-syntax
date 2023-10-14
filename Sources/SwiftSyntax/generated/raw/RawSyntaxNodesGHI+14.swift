@_spi(RawSyntax)
public struct RawIfConfigClauseSyntax: RawSyntaxNodeProtocol {
  public enum Elements: RawSyntaxNodeProtocol {
    case `statements`(RawCodeBlockItemListSyntax)
    case `switchCases`(RawSwitchCaseListSyntax)
    case `decls`(RawMemberBlockItemListSyntax)
    case `postfixExpression`(RawExprSyntax)
    case `attributes`(RawAttributeListSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawCodeBlockItemListSyntax.isKindOf(raw) || RawSwitchCaseListSyntax.isKindOf(raw) || RawMemberBlockItemListSyntax.isKindOf(raw) || RawExprSyntax.isKindOf(raw) || RawAttributeListSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .statements(let node):
        return node.raw
      case .switchCases(let node):
        return node.raw
      case .decls(let node):
        return node.raw
      case .postfixExpression(let node):
        return node.raw
      case .attributes(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawCodeBlockItemListSyntax(other) {
        self = .statements(node)
        return
      }
      if let node = RawSwitchCaseListSyntax(other) {
        self = .switchCases(node)
        return
      }
      if let node = RawMemberBlockItemListSyntax(other) {
        self = .decls(node)
        return
      }
      if let node = RawExprSyntax(other) {
        self = .postfixExpression(node)
        return
      }
      if let node = RawAttributeListSyntax(other) {
        self = .attributes(node)
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
    return raw.kind == .ifConfigClause
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
      _ unexpectedBeforePoundKeyword: RawUnexpectedNodesSyntax? = nil, 
      poundKeyword: RawTokenSyntax, 
      _ unexpectedBetweenPoundKeywordAndCondition: RawUnexpectedNodesSyntax? = nil, 
      condition: RawExprSyntax?, 
      _ unexpectedBetweenConditionAndElements: RawUnexpectedNodesSyntax? = nil, 
      elements: Elements?, 
      _ unexpectedAfterElements: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .ifConfigClause, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePoundKeyword?.raw
      layout[1] = poundKeyword.raw
      layout[2] = unexpectedBetweenPoundKeywordAndCondition?.raw
      layout[3] = condition?.raw
      layout[4] = unexpectedBetweenConditionAndElements?.raw
      layout[5] = elements?.raw
      layout[6] = unexpectedAfterElements?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePoundKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var poundKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPoundKeywordAndCondition: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var condition: RawExprSyntax? {
    layoutView.children[3].map(RawExprSyntax.init(raw:))
  }
  
  public var unexpectedBetweenConditionAndElements: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elements: RawSyntax? {
    layoutView.children[5]
  }
  
  public var unexpectedAfterElements: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
