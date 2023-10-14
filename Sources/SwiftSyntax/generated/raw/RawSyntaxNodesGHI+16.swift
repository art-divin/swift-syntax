@_spi(RawSyntax)
public struct RawIfExprSyntax: RawExprSyntaxNodeProtocol {
  public enum ElseBody: RawSyntaxNodeProtocol {
    case `ifExpr`(RawIfExprSyntax)
    case `codeBlock`(RawCodeBlockSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawIfExprSyntax.isKindOf(raw) || RawCodeBlockSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .ifExpr(let node):
        return node.raw
      case .codeBlock(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawIfExprSyntax(other) {
        self = .ifExpr(node)
        return
      }
      if let node = RawCodeBlockSyntax(other) {
        self = .codeBlock(node)
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
    return raw.kind == .ifExpr
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
      _ unexpectedBeforeIfKeyword: RawUnexpectedNodesSyntax? = nil, 
      ifKeyword: RawTokenSyntax, 
      _ unexpectedBetweenIfKeywordAndConditions: RawUnexpectedNodesSyntax? = nil, 
      conditions: RawConditionElementListSyntax, 
      _ unexpectedBetweenConditionsAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax, 
      _ unexpectedBetweenBodyAndElseKeyword: RawUnexpectedNodesSyntax? = nil, 
      elseKeyword: RawTokenSyntax?, 
      _ unexpectedBetweenElseKeywordAndElseBody: RawUnexpectedNodesSyntax? = nil, 
      elseBody: ElseBody?, 
      _ unexpectedAfterElseBody: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .ifExpr, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeIfKeyword?.raw
      layout[1] = ifKeyword.raw
      layout[2] = unexpectedBetweenIfKeywordAndConditions?.raw
      layout[3] = conditions.raw
      layout[4] = unexpectedBetweenConditionsAndBody?.raw
      layout[5] = body.raw
      layout[6] = unexpectedBetweenBodyAndElseKeyword?.raw
      layout[7] = elseKeyword?.raw
      layout[8] = unexpectedBetweenElseKeywordAndElseBody?.raw
      layout[9] = elseBody?.raw
      layout[10] = unexpectedAfterElseBody?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeIfKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var ifKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenIfKeywordAndConditions: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var conditions: RawConditionElementListSyntax {
    layoutView.children[3].map(RawConditionElementListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenConditionsAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax {
    layoutView.children[5].map(RawCodeBlockSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBodyAndElseKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elseKeyword: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenElseKeywordAndElseBody: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var elseBody: RawSyntax? {
    layoutView.children[9]
  }
  
  public var unexpectedAfterElseBody: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
