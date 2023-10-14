@_spi(RawSyntax)
public struct RawDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    switch raw.kind {
    case .accessorDecl, .actorDecl, .associatedTypeDecl, .classDecl, .deinitializerDecl, .editorPlaceholderDecl, .enumCaseDecl, .enumDecl, .extensionDecl, .functionDecl, .ifConfigDecl, .importDecl, .initializerDecl, .macroDecl, .macroExpansionDecl, .missingDecl, .operatorDecl, .poundSourceLocation, .precedenceGroupDecl, .protocolDecl, .structDecl, .subscriptDecl, .typeAliasDecl, .variableDecl:
      return true
    default:
      return false
    }
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
  
  public init(_ other: some RawDeclSyntaxNodeProtocol) {
    self.init(unchecked: other.raw)
  }
}
