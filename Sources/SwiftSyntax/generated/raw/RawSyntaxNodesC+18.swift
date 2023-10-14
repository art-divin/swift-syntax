@_spi(RawSyntax)
public struct RawClosureSignatureSyntax: RawSyntaxNodeProtocol {
  public enum ParameterClause: RawSyntaxNodeProtocol {
    case `simpleInput`(RawClosureShorthandParameterListSyntax)
    case `parameterClause`(RawClosureParameterClauseSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawClosureShorthandParameterListSyntax.isKindOf(raw) || RawClosureParameterClauseSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .simpleInput(let node):
        return node.raw
      case .parameterClause(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawClosureShorthandParameterListSyntax(other) {
        self = .simpleInput(node)
        return
      }
      if let node = RawClosureParameterClauseSyntax(other) {
        self = .parameterClause(node)
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
    return raw.kind == .closureSignature
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
      _ unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? = nil, 
      attributes: RawAttributeListSyntax, 
      _ unexpectedBetweenAttributesAndCapture: RawUnexpectedNodesSyntax? = nil, 
      capture: RawClosureCaptureClauseSyntax?, 
      _ unexpectedBetweenCaptureAndParameterClause: RawUnexpectedNodesSyntax? = nil, 
      parameterClause: ParameterClause?, 
      _ unexpectedBetweenParameterClauseAndEffectSpecifiers: RawUnexpectedNodesSyntax? = nil, 
      effectSpecifiers: RawTypeEffectSpecifiersSyntax?, 
      _ unexpectedBetweenEffectSpecifiersAndReturnClause: RawUnexpectedNodesSyntax? = nil, 
      returnClause: RawReturnClauseSyntax?, 
      _ unexpectedBetweenReturnClauseAndInKeyword: RawUnexpectedNodesSyntax? = nil, 
      inKeyword: RawTokenSyntax, 
      _ unexpectedAfterInKeyword: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .closureSignature, uninitializedCount: 13, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndCapture?.raw
      layout[3] = capture?.raw
      layout[4] = unexpectedBetweenCaptureAndParameterClause?.raw
      layout[5] = parameterClause?.raw
      layout[6] = unexpectedBetweenParameterClauseAndEffectSpecifiers?.raw
      layout[7] = effectSpecifiers?.raw
      layout[8] = unexpectedBetweenEffectSpecifiersAndReturnClause?.raw
      layout[9] = returnClause?.raw
      layout[10] = unexpectedBetweenReturnClauseAndInKeyword?.raw
      layout[11] = inKeyword.raw
      layout[12] = unexpectedAfterInKeyword?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[1].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndCapture: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var capture: RawClosureCaptureClauseSyntax? {
    layoutView.children[3].map(RawClosureCaptureClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCaptureAndParameterClause: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var parameterClause: RawSyntax? {
    layoutView.children[5]
  }
  
  public var unexpectedBetweenParameterClauseAndEffectSpecifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var effectSpecifiers: RawTypeEffectSpecifiersSyntax? {
    layoutView.children[7].map(RawTypeEffectSpecifiersSyntax.init(raw:))
  }
  
  public var unexpectedBetweenEffectSpecifiersAndReturnClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var returnClause: RawReturnClauseSyntax? {
    layoutView.children[9].map(RawReturnClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenReturnClauseAndInKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var inKeyword: RawTokenSyntax {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterInKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
