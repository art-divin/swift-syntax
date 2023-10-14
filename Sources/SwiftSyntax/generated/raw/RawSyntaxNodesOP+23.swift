@_spi(RawSyntax)
public struct RawPoundSourceLocationArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .poundSourceLocationArguments
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
      _ unexpectedBeforeFileLabel: RawUnexpectedNodesSyntax? = nil, 
      fileLabel: RawTokenSyntax, 
      _ unexpectedBetweenFileLabelAndFileColon: RawUnexpectedNodesSyntax? = nil, 
      fileColon: RawTokenSyntax, 
      _ unexpectedBetweenFileColonAndFileName: RawUnexpectedNodesSyntax? = nil, 
      fileName: RawSimpleStringLiteralExprSyntax, 
      _ unexpectedBetweenFileNameAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax, 
      _ unexpectedBetweenCommaAndLineLabel: RawUnexpectedNodesSyntax? = nil, 
      lineLabel: RawTokenSyntax, 
      _ unexpectedBetweenLineLabelAndLineColon: RawUnexpectedNodesSyntax? = nil, 
      lineColon: RawTokenSyntax, 
      _ unexpectedBetweenLineColonAndLineNumber: RawUnexpectedNodesSyntax? = nil, 
      lineNumber: RawTokenSyntax, 
      _ unexpectedAfterLineNumber: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .poundSourceLocationArguments, uninitializedCount: 15, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeFileLabel?.raw
      layout[1] = fileLabel.raw
      layout[2] = unexpectedBetweenFileLabelAndFileColon?.raw
      layout[3] = fileColon.raw
      layout[4] = unexpectedBetweenFileColonAndFileName?.raw
      layout[5] = fileName.raw
      layout[6] = unexpectedBetweenFileNameAndComma?.raw
      layout[7] = comma.raw
      layout[8] = unexpectedBetweenCommaAndLineLabel?.raw
      layout[9] = lineLabel.raw
      layout[10] = unexpectedBetweenLineLabelAndLineColon?.raw
      layout[11] = lineColon.raw
      layout[12] = unexpectedBetweenLineColonAndLineNumber?.raw
      layout[13] = lineNumber.raw
      layout[14] = unexpectedAfterLineNumber?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeFileLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var fileLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenFileLabelAndFileColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var fileColon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenFileColonAndFileName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var fileName: RawSimpleStringLiteralExprSyntax {
    layoutView.children[5].map(RawSimpleStringLiteralExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenFileNameAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCommaAndLineLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var lineLabel: RawTokenSyntax {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLineLabelAndLineColon: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var lineColon: RawTokenSyntax {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLineColonAndLineNumber: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var lineNumber: RawTokenSyntax {
    layoutView.children[13].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterLineNumber: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
