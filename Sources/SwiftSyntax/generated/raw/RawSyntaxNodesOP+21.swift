@_spi(RawSyntax)
public struct RawPostfixIfConfigExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .postfixIfConfigExpr
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
      _ unexpectedBeforeBase: RawUnexpectedNodesSyntax? = nil, 
      base: RawExprSyntax?, 
      _ unexpectedBetweenBaseAndConfig: RawUnexpectedNodesSyntax? = nil, 
      config: RawIfConfigDeclSyntax, 
      _ unexpectedAfterConfig: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .postfixIfConfigExpr, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBase?.raw
      layout[1] = base?.raw
      layout[2] = unexpectedBetweenBaseAndConfig?.raw
      layout[3] = config.raw
      layout[4] = unexpectedAfterConfig?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBase: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var base: RawExprSyntax? {
    layoutView.children[1].map(RawExprSyntax.init(raw:))
  }
  
  public var unexpectedBetweenBaseAndConfig: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var config: RawIfConfigDeclSyntax {
    layoutView.children[3].map(RawIfConfigDeclSyntax.init(raw:))!
  }
  
  public var unexpectedAfterConfig: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
