@_spi(RawSyntax)
public struct RawSwitchCaseSyntax: RawSyntaxNodeProtocol {
  public enum Label: RawSyntaxNodeProtocol {
    case `default`(RawSwitchDefaultLabelSyntax)
    case `case`(RawSwitchCaseLabelSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawSwitchDefaultLabelSyntax.isKindOf(raw) || RawSwitchCaseLabelSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .default(let node):
        return node.raw
      case .case(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawSwitchDefaultLabelSyntax(other) {
        self = .default(node)
        return
      }
      if let node = RawSwitchCaseLabelSyntax(other) {
        self = .case(node)
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
    return raw.kind == .switchCase
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
      _ unexpectedBeforeAttribute: RawUnexpectedNodesSyntax? = nil, 
      attribute: RawAttributeSyntax?, 
      _ unexpectedBetweenAttributeAndLabel: RawUnexpectedNodesSyntax? = nil, 
      label: Label, 
      _ unexpectedBetweenLabelAndStatements: RawUnexpectedNodesSyntax? = nil, 
      statements: RawCodeBlockItemListSyntax, 
      _ unexpectedAfterStatements: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .switchCase, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttribute?.raw
      layout[1] = attribute?.raw
      layout[2] = unexpectedBetweenAttributeAndLabel?.raw
      layout[3] = label.raw
      layout[4] = unexpectedBetweenLabelAndStatements?.raw
      layout[5] = statements.raw
      layout[6] = unexpectedAfterStatements?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttribute: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attribute: RawAttributeSyntax? {
    layoutView.children[1].map(RawAttributeSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAttributeAndLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var label: RawSyntax {
    layoutView.children[3]!
  }
  
  public var unexpectedBetweenLabelAndStatements: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var statements: RawCodeBlockItemListSyntax {
    layoutView.children[5].map(RawCodeBlockItemListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterStatements: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
