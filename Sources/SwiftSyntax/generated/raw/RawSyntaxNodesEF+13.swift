@_spi(RawSyntax)
public struct RawExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    switch raw.kind {
    case .arrayExpr, .arrowExpr, .asExpr, .assignmentExpr, .awaitExpr, .binaryOperatorExpr, .booleanLiteralExpr, .borrowExpr, .canImportExpr, .canImportVersionInfo, .closureExpr, .consumeExpr, .copyExpr, .declReferenceExpr, .dictionaryExpr, .discardAssignmentExpr, .doExpr, .editorPlaceholderExpr, .floatLiteralExpr, .forceUnwrapExpr, .functionCallExpr, .genericSpecializationExpr, .ifExpr, .inOutExpr, .infixOperatorExpr, .integerLiteralExpr, .isExpr, .keyPathExpr, .macroExpansionExpr, .memberAccessExpr, .missingExpr, .nilLiteralExpr, .optionalChainingExpr, .packElementExpr, .packExpansionExpr, .patternExpr, .postfixIfConfigExpr, .postfixOperatorExpr, .prefixOperatorExpr, .regexLiteralExpr, .sequenceExpr, .simpleStringLiteralExpr, .stringLiteralExpr, .subscriptCallExpr, .superExpr, .switchExpr, .ternaryExpr, .tryExpr, .tupleExpr, .typeExpr, .unresolvedAsExpr, .unresolvedIsExpr, .unresolvedTernaryExpr:
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
  
  public init(_ other: some RawExprSyntaxNodeProtocol) {
    self.init(unchecked: other.raw)
  }
}
