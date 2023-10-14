@_spi(RawSyntax)
public struct RawYieldStmtSyntax: RawStmtSyntaxNodeProtocol {
  public enum YieldedExpressions: RawSyntaxNodeProtocol {
    case `multiple`(RawYieldedExpressionsClauseSyntax)
    case `single`(RawExprSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawYieldedExpressionsClauseSyntax.isKindOf(raw) || RawExprSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .multiple(let node):
        return node.raw
      case .single(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawYieldedExpressionsClauseSyntax(other) {
        self = .multiple(node)
        return
      }
      if let node = RawExprSyntax(other) {
        self = .single(node)
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
    return raw.kind == .yieldStmt
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
      _ unexpectedBeforeYieldKeyword: RawUnexpectedNodesSyntax? = nil, 
      yieldKeyword: RawTokenSyntax, 
      _ unexpectedBetweenYieldKeywordAndYieldedExpressions: RawUnexpectedNodesSyntax? = nil, 
      yieldedExpressions: YieldedExpressions, 
      _ unexpectedAfterYieldedExpressions: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .yieldStmt, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeYieldKeyword?.raw
      layout[1] = yieldKeyword.raw
      layout[2] = unexpectedBetweenYieldKeywordAndYieldedExpressions?.raw
      layout[3] = yieldedExpressions.raw
      layout[4] = unexpectedAfterYieldedExpressions?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeYieldKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var yieldKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenYieldKeywordAndYieldedExpressions: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var yieldedExpressions: RawSyntax {
    layoutView.children[3]!
  }
  
  public var unexpectedAfterYieldedExpressions: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
