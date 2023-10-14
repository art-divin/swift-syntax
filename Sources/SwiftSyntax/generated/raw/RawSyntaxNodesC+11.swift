@_spi(RawSyntax)
public struct RawClosureCaptureSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .closureCapture
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
      _ unexpectedBeforeSpecifier: RawUnexpectedNodesSyntax? = nil, 
      specifier: RawClosureCaptureSpecifierSyntax?, 
      _ unexpectedBetweenSpecifierAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax?, 
      _ unexpectedBetweenNameAndEqual: RawUnexpectedNodesSyntax? = nil, 
      equal: RawTokenSyntax?, 
      _ unexpectedBetweenEqualAndExpression: RawUnexpectedNodesSyntax? = nil, 
      expression: RawExprSyntax, 
      _ unexpectedBetweenExpressionAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .closureCapture, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeSpecifier?.raw
      layout[1] = specifier?.raw
      layout[2] = unexpectedBetweenSpecifierAndName?.raw
      layout[3] = name?.raw
      layout[4] = unexpectedBetweenNameAndEqual?.raw
      layout[5] = equal?.raw
      layout[6] = unexpectedBetweenEqualAndExpression?.raw
      layout[7] = expression.raw
      layout[8] = unexpectedBetweenExpressionAndTrailingComma?.raw
      layout[9] = trailingComma?.raw
      layout[10] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var specifier: RawClosureCaptureSpecifierSyntax? {
    layoutView.children[1].map(RawClosureCaptureSpecifierSyntax.init(raw:))
  }
  
  public var unexpectedBetweenSpecifierAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenNameAndEqual: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var equal: RawTokenSyntax? {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenEqualAndExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expression: RawExprSyntax {
    layoutView.children[7].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenExpressionAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
