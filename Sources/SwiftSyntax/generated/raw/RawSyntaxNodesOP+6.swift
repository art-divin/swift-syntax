@_spi(RawSyntax)
public struct RawOptionalBindingConditionSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .optionalBindingCondition
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
      _ unexpectedBeforeBindingSpecifier: RawUnexpectedNodesSyntax? = nil, 
      bindingSpecifier: RawTokenSyntax, 
      _ unexpectedBetweenBindingSpecifierAndPattern: RawUnexpectedNodesSyntax? = nil, 
      pattern: RawPatternSyntax, 
      _ unexpectedBetweenPatternAndTypeAnnotation: RawUnexpectedNodesSyntax? = nil, 
      typeAnnotation: RawTypeAnnotationSyntax?, 
      _ unexpectedBetweenTypeAnnotationAndInitializer: RawUnexpectedNodesSyntax? = nil, 
      initializer: RawInitializerClauseSyntax?, 
      _ unexpectedAfterInitializer: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .optionalBindingCondition, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBindingSpecifier?.raw
      layout[1] = bindingSpecifier.raw
      layout[2] = unexpectedBetweenBindingSpecifierAndPattern?.raw
      layout[3] = pattern.raw
      layout[4] = unexpectedBetweenPatternAndTypeAnnotation?.raw
      layout[5] = typeAnnotation?.raw
      layout[6] = unexpectedBetweenTypeAnnotationAndInitializer?.raw
      layout[7] = initializer?.raw
      layout[8] = unexpectedAfterInitializer?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBindingSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var bindingSpecifier: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBindingSpecifierAndPattern: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pattern: RawPatternSyntax {
    layoutView.children[3].map(RawPatternSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPatternAndTypeAnnotation: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var typeAnnotation: RawTypeAnnotationSyntax? {
    layoutView.children[5].map(RawTypeAnnotationSyntax.init(raw:))
  }
  
  public var unexpectedBetweenTypeAnnotationAndInitializer: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var initializer: RawInitializerClauseSyntax? {
    layoutView.children[7].map(RawInitializerClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterInitializer: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
