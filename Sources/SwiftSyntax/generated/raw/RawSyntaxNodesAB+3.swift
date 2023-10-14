@_spi(RawSyntax)
public struct RawAccessorEffectSpecifiersSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .accessorEffectSpecifiers
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
      _ unexpectedBeforeAsyncSpecifier: RawUnexpectedNodesSyntax? = nil, 
      asyncSpecifier: RawTokenSyntax?, 
      _ unexpectedBetweenAsyncSpecifierAndThrowsSpecifier: RawUnexpectedNodesSyntax? = nil, 
      throwsSpecifier: RawTokenSyntax?, 
      _ unexpectedBetweenThrowsSpecifierAndThrownError: RawUnexpectedNodesSyntax? = nil, 
      thrownError: RawThrownTypeClauseSyntax?, 
      _ unexpectedAfterThrownError: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .accessorEffectSpecifiers, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAsyncSpecifier?.raw
      layout[1] = asyncSpecifier?.raw
      layout[2] = unexpectedBetweenAsyncSpecifierAndThrowsSpecifier?.raw
      layout[3] = throwsSpecifier?.raw
      layout[4] = unexpectedBetweenThrowsSpecifierAndThrownError?.raw
      layout[5] = thrownError?.raw
      layout[6] = unexpectedAfterThrownError?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAsyncSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var asyncSpecifier: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAsyncSpecifierAndThrowsSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var throwsSpecifier: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenThrowsSpecifierAndThrownError: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var thrownError: RawThrownTypeClauseSyntax? {
    layoutView.children[5].map(RawThrownTypeClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterThrownError: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
