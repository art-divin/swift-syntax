@_spi(RawSyntax)
public struct RawStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    switch raw.kind {
    case .breakStmt, .continueStmt, .deferStmt, .discardStmt, .doStmt, .expressionStmt, .fallThroughStmt, .forStmt, .guardStmt, .labeledStmt, .missingStmt, .repeatStmt, .returnStmt, .thenStmt, .throwStmt, .whileStmt, .yieldStmt:
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
  
  public init(_ other: some RawStmtSyntaxNodeProtocol) {
    self.init(unchecked: other.raw)
  }
}
