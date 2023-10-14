@_spi(RawSyntax)
public struct RawPatternBindingSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .patternBinding
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
      _ unexpectedBeforePattern: RawUnexpectedNodesSyntax? = nil, 
      pattern: RawPatternSyntax, 
      _ unexpectedBetweenPatternAndTypeAnnotation: RawUnexpectedNodesSyntax? = nil, 
      typeAnnotation: RawTypeAnnotationSyntax?, 
      _ unexpectedBetweenTypeAnnotationAndInitializer: RawUnexpectedNodesSyntax? = nil, 
      initializer: RawInitializerClauseSyntax?, 
      _ unexpectedBetweenInitializerAndAccessorBlock: RawUnexpectedNodesSyntax? = nil, 
      accessorBlock: RawAccessorBlockSyntax?, 
      _ unexpectedBetweenAccessorBlockAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .patternBinding, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePattern?.raw
      layout[1] = pattern.raw
      layout[2] = unexpectedBetweenPatternAndTypeAnnotation?.raw
      layout[3] = typeAnnotation?.raw
      layout[4] = unexpectedBetweenTypeAnnotationAndInitializer?.raw
      layout[5] = initializer?.raw
      layout[6] = unexpectedBetweenInitializerAndAccessorBlock?.raw
      layout[7] = accessorBlock?.raw
      layout[8] = unexpectedBetweenAccessorBlockAndTrailingComma?.raw
      layout[9] = trailingComma?.raw
      layout[10] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePattern: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pattern: RawPatternSyntax {
    layoutView.children[1].map(RawPatternSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPatternAndTypeAnnotation: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var typeAnnotation: RawTypeAnnotationSyntax? {
    layoutView.children[3].map(RawTypeAnnotationSyntax.init(raw:))
  }
  
  public var unexpectedBetweenTypeAnnotationAndInitializer: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var initializer: RawInitializerClauseSyntax? {
    layoutView.children[5].map(RawInitializerClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenInitializerAndAccessorBlock: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var accessorBlock: RawAccessorBlockSyntax? {
    layoutView.children[7].map(RawAccessorBlockSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAccessorBlockAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
