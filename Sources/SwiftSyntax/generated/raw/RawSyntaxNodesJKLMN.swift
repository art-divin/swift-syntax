@_spi(RawSyntax)
public struct RawKeyPathComponentListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .keyPathComponentList
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
  
  public init(elements: [RawKeyPathComponentSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathComponentList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawKeyPathComponentSyntax] {
    layoutView.children.map {
      RawKeyPathComponentSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawKeyPathComponentSyntax: RawSyntaxNodeProtocol {
  public enum Component: RawSyntaxNodeProtocol {
    case `property`(RawKeyPathPropertyComponentSyntax)
    case `subscript`(RawKeyPathSubscriptComponentSyntax)
    case `optional`(RawKeyPathOptionalComponentSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawKeyPathPropertyComponentSyntax.isKindOf(raw) || RawKeyPathSubscriptComponentSyntax.isKindOf(raw) || RawKeyPathOptionalComponentSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .property(let node):
        return node.raw
      case .subscript(let node):
        return node.raw
      case .optional(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawKeyPathPropertyComponentSyntax(other) {
        self = .property(node)
        return
      }
      if let node = RawKeyPathSubscriptComponentSyntax(other) {
        self = .subscript(node)
        return
      }
      if let node = RawKeyPathOptionalComponentSyntax(other) {
        self = .optional(node)
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
    return raw.kind == .keyPathComponent
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
      _ unexpectedBeforePeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax?, 
      _ unexpectedBetweenPeriodAndComponent: RawUnexpectedNodesSyntax? = nil, 
      component: Component, 
      _ unexpectedAfterComponent: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathComponent, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePeriod?.raw
      layout[1] = period?.raw
      layout[2] = unexpectedBetweenPeriodAndComponent?.raw
      layout[3] = component.raw
      layout[4] = unexpectedAfterComponent?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenPeriodAndComponent: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var component: RawSyntax {
    layoutView.children[3]!
  }
  
  public var unexpectedAfterComponent: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawKeyPathExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .keyPathExpr
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
      _ unexpectedBeforeBackslash: RawUnexpectedNodesSyntax? = nil, 
      backslash: RawTokenSyntax, 
      _ unexpectedBetweenBackslashAndRoot: RawUnexpectedNodesSyntax? = nil, 
      root: RawTypeSyntax?, 
      _ unexpectedBetweenRootAndComponents: RawUnexpectedNodesSyntax? = nil, 
      components: RawKeyPathComponentListSyntax, 
      _ unexpectedAfterComponents: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBackslash?.raw
      layout[1] = backslash.raw
      layout[2] = unexpectedBetweenBackslashAndRoot?.raw
      layout[3] = root?.raw
      layout[4] = unexpectedBetweenRootAndComponents?.raw
      layout[5] = components.raw
      layout[6] = unexpectedAfterComponents?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBackslash: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var backslash: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBackslashAndRoot: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var root: RawTypeSyntax? {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))
  }
  
  public var unexpectedBetweenRootAndComponents: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var components: RawKeyPathComponentListSyntax {
    layoutView.children[5].map(RawKeyPathComponentListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterComponents: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawKeyPathOptionalComponentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .keyPathOptionalComponent
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
      _ unexpectedBeforeQuestionOrExclamationMark: RawUnexpectedNodesSyntax? = nil, 
      questionOrExclamationMark: RawTokenSyntax, 
      _ unexpectedAfterQuestionOrExclamationMark: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathOptionalComponent, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeQuestionOrExclamationMark?.raw
      layout[1] = questionOrExclamationMark.raw
      layout[2] = unexpectedAfterQuestionOrExclamationMark?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeQuestionOrExclamationMark: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var questionOrExclamationMark: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterQuestionOrExclamationMark: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawKeyPathPropertyComponentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .keyPathPropertyComponent
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
      _ unexpectedBeforeDeclName: RawUnexpectedNodesSyntax? = nil, 
      declName: RawDeclReferenceExprSyntax, 
      _ unexpectedBetweenDeclNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      genericArgumentClause: RawGenericArgumentClauseSyntax?, 
      _ unexpectedAfterGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathPropertyComponent, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDeclName?.raw
      layout[1] = declName.raw
      layout[2] = unexpectedBetweenDeclNameAndGenericArgumentClause?.raw
      layout[3] = genericArgumentClause?.raw
      layout[4] = unexpectedAfterGenericArgumentClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var declName: RawDeclReferenceExprSyntax {
    layoutView.children[1].map(RawDeclReferenceExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDeclNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericArgumentClause: RawGenericArgumentClauseSyntax? {
    layoutView.children[3].map(RawGenericArgumentClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawKeyPathSubscriptComponentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .keyPathSubscriptComponent
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
      _ unexpectedBeforeLeftSquare: RawUnexpectedNodesSyntax? = nil, 
      leftSquare: RawTokenSyntax, 
      _ unexpectedBetweenLeftSquareAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawLabeledExprListSyntax, 
      _ unexpectedBetweenArgumentsAndRightSquare: RawUnexpectedNodesSyntax? = nil, 
      rightSquare: RawTokenSyntax, 
      _ unexpectedAfterRightSquare: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .keyPathSubscriptComponent, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftSquare?.raw
      layout[1] = leftSquare.raw
      layout[2] = unexpectedBetweenLeftSquareAndArguments?.raw
      layout[3] = arguments.raw
      layout[4] = unexpectedBetweenArgumentsAndRightSquare?.raw
      layout[5] = rightSquare.raw
      layout[6] = unexpectedAfterRightSquare?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftSquare: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftSquareAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawLabeledExprListSyntax {
    layoutView.children[3].map(RawLabeledExprListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightSquare: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawLabeledExprListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .labeledExprList
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
  
  public init(elements: [RawLabeledExprSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .labeledExprList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawLabeledExprSyntax] {
    layoutView.children.map {
      RawLabeledExprSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawLabeledExprSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .labeledExpr
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
      _ unexpectedBeforeLabel: RawUnexpectedNodesSyntax? = nil, 
      label: RawTokenSyntax?, 
      _ unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax?, 
      _ unexpectedBetweenColonAndExpression: RawUnexpectedNodesSyntax? = nil, 
      expression: RawExprSyntax, 
      _ unexpectedBetweenExpressionAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .labeledExpr, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLabel?.raw
      layout[1] = label?.raw
      layout[2] = unexpectedBetweenLabelAndColon?.raw
      layout[3] = colon?.raw
      layout[4] = unexpectedBetweenColonAndExpression?.raw
      layout[5] = expression.raw
      layout[6] = unexpectedBetweenExpressionAndTrailingComma?.raw
      layout[7] = trailingComma?.raw
      layout[8] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var label: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenColonAndExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expression: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenExpressionAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawLabeledSpecializeArgumentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .labeledSpecializeArgument
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
      _ unexpectedBeforeLabel: RawUnexpectedNodesSyntax? = nil, 
      label: RawTokenSyntax, 
      _ unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndValue: RawUnexpectedNodesSyntax? = nil, 
      value: RawTokenSyntax, 
      _ unexpectedBetweenValueAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .labeledSpecializeArgument, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLabel?.raw
      layout[1] = label.raw
      layout[2] = unexpectedBetweenLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndValue?.raw
      layout[5] = value.raw
      layout[6] = unexpectedBetweenValueAndTrailingComma?.raw
      layout[7] = trailingComma?.raw
      layout[8] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var label: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndValue: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var value: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenValueAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawLabeledStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .labeledStmt
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
      _ unexpectedBeforeLabel: RawUnexpectedNodesSyntax? = nil, 
      label: RawTokenSyntax, 
      _ unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndStatement: RawUnexpectedNodesSyntax? = nil, 
      statement: RawStmtSyntax, 
      _ unexpectedAfterStatement: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .labeledStmt, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLabel?.raw
      layout[1] = label.raw
      layout[2] = unexpectedBetweenLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndStatement?.raw
      layout[5] = statement.raw
      layout[6] = unexpectedAfterStatement?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var label: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndStatement: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var statement: RawStmtSyntax {
    layoutView.children[5].map(RawStmtSyntax.init(raw:))!
  }
  
  public var unexpectedAfterStatement: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawLayoutRequirementSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .layoutRequirement
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
      _ unexpectedBeforeType: RawUnexpectedNodesSyntax? = nil, 
      type: RawTypeSyntax, 
      _ unexpectedBetweenTypeAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndLayoutSpecifier: RawUnexpectedNodesSyntax? = nil, 
      layoutSpecifier: RawTokenSyntax, 
      _ unexpectedBetweenLayoutSpecifierAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax?, 
      _ unexpectedBetweenLeftParenAndSize: RawUnexpectedNodesSyntax? = nil, 
      size: RawTokenSyntax?, 
      _ unexpectedBetweenSizeAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax?, 
      _ unexpectedBetweenCommaAndAlignment: RawUnexpectedNodesSyntax? = nil, 
      alignment: RawTokenSyntax?, 
      _ unexpectedBetweenAlignmentAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax?, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .layoutRequirement, uninitializedCount: 17, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeType?.raw
      layout[1] = type.raw
      layout[2] = unexpectedBetweenTypeAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndLayoutSpecifier?.raw
      layout[5] = layoutSpecifier.raw
      layout[6] = unexpectedBetweenLayoutSpecifierAndLeftParen?.raw
      layout[7] = leftParen?.raw
      layout[8] = unexpectedBetweenLeftParenAndSize?.raw
      layout[9] = size?.raw
      layout[10] = unexpectedBetweenSizeAndComma?.raw
      layout[11] = comma?.raw
      layout[12] = unexpectedBetweenCommaAndAlignment?.raw
      layout[13] = alignment?.raw
      layout[14] = unexpectedBetweenAlignmentAndRightParen?.raw
      layout[15] = rightParen?.raw
      layout[16] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeType: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var type: RawTypeSyntax {
    layoutView.children[1].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenTypeAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndLayoutSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var layoutSpecifier: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLayoutSpecifierAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLeftParenAndSize: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var size: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenSizeAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax? {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCommaAndAlignment: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var alignment: RawTokenSyntax? {
    layoutView.children[13].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAlignmentAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax? {
    layoutView.children[15].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMacroDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .macroDecl
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
      _ unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? = nil, 
      modifiers: RawDeclModifierListSyntax, 
      _ unexpectedBetweenModifiersAndMacroKeyword: RawUnexpectedNodesSyntax? = nil, 
      macroKeyword: RawTokenSyntax, 
      _ unexpectedBetweenMacroKeywordAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndGenericParameterClause: RawUnexpectedNodesSyntax? = nil, 
      genericParameterClause: RawGenericParameterClauseSyntax?, 
      _ unexpectedBetweenGenericParameterClauseAndSignature: RawUnexpectedNodesSyntax? = nil, 
      signature: RawFunctionSignatureSyntax, 
      _ unexpectedBetweenSignatureAndDefinition: RawUnexpectedNodesSyntax? = nil, 
      definition: RawInitializerClauseSyntax?, 
      _ unexpectedBetweenDefinitionAndGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      genericWhereClause: RawGenericWhereClauseSyntax?, 
      _ unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .macroDecl, uninitializedCount: 17, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndMacroKeyword?.raw
      layout[5] = macroKeyword.raw
      layout[6] = unexpectedBetweenMacroKeywordAndName?.raw
      layout[7] = name.raw
      layout[8] = unexpectedBetweenNameAndGenericParameterClause?.raw
      layout[9] = genericParameterClause?.raw
      layout[10] = unexpectedBetweenGenericParameterClauseAndSignature?.raw
      layout[11] = signature.raw
      layout[12] = unexpectedBetweenSignatureAndDefinition?.raw
      layout[13] = definition?.raw
      layout[14] = unexpectedBetweenDefinitionAndGenericWhereClause?.raw
      layout[15] = genericWhereClause?.raw
      layout[16] = unexpectedAfterGenericWhereClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[1].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var modifiers: RawDeclModifierListSyntax {
    layoutView.children[3].map(RawDeclModifierListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModifiersAndMacroKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var macroKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMacroKeywordAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndGenericParameterClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericParameterClause: RawGenericParameterClauseSyntax? {
    layoutView.children[9].map(RawGenericParameterClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericParameterClauseAndSignature: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var signature: RawFunctionSignatureSyntax {
    layoutView.children[11].map(RawFunctionSignatureSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenSignatureAndDefinition: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var definition: RawInitializerClauseSyntax? {
    layoutView.children[13].map(RawInitializerClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenDefinitionAndGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericWhereClause: RawGenericWhereClauseSyntax? {
    layoutView.children[15].map(RawGenericWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMacroExpansionDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .macroExpansionDecl
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
      _ unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? = nil, 
      modifiers: RawDeclModifierListSyntax, 
      _ unexpectedBetweenModifiersAndPound: RawUnexpectedNodesSyntax? = nil, 
      pound: RawTokenSyntax, 
      _ unexpectedBetweenPoundAndMacroName: RawUnexpectedNodesSyntax? = nil, 
      macroName: RawTokenSyntax, 
      _ unexpectedBetweenMacroNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      genericArgumentClause: RawGenericArgumentClauseSyntax?, 
      _ unexpectedBetweenGenericArgumentClauseAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax?, 
      _ unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawLabeledExprListSyntax, 
      _ unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax?, 
      _ unexpectedBetweenRightParenAndTrailingClosure: RawUnexpectedNodesSyntax? = nil, 
      trailingClosure: RawClosureExprSyntax?, 
      _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax, 
      _ unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .macroExpansionDecl, uninitializedCount: 21, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndPound?.raw
      layout[5] = pound.raw
      layout[6] = unexpectedBetweenPoundAndMacroName?.raw
      layout[7] = macroName.raw
      layout[8] = unexpectedBetweenMacroNameAndGenericArgumentClause?.raw
      layout[9] = genericArgumentClause?.raw
      layout[10] = unexpectedBetweenGenericArgumentClauseAndLeftParen?.raw
      layout[11] = leftParen?.raw
      layout[12] = unexpectedBetweenLeftParenAndArguments?.raw
      layout[13] = arguments.raw
      layout[14] = unexpectedBetweenArgumentsAndRightParen?.raw
      layout[15] = rightParen?.raw
      layout[16] = unexpectedBetweenRightParenAndTrailingClosure?.raw
      layout[17] = trailingClosure?.raw
      layout[18] = unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures?.raw
      layout[19] = additionalTrailingClosures.raw
      layout[20] = unexpectedAfterAdditionalTrailingClosures?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[1].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var modifiers: RawDeclModifierListSyntax {
    layoutView.children[3].map(RawDeclModifierListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModifiersAndPound: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pound: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPoundAndMacroName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var macroName: RawTokenSyntax {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMacroNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericArgumentClause: RawGenericArgumentClauseSyntax? {
    layoutView.children[9].map(RawGenericArgumentClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericArgumentClauseAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax? {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawLabeledExprListSyntax {
    layoutView.children[13].map(RawLabeledExprListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax? {
    layoutView.children[15].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenRightParenAndTrailingClosure: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingClosure: RawClosureExprSyntax? {
    layoutView.children[17].map(RawClosureExprSyntax.init(raw:))
  }
  
  public var unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? {
    layoutView.children[18].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax {
    layoutView.children[19].map(RawMultipleTrailingClosureElementListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? {
    layoutView.children[20].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMacroExpansionExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .macroExpansionExpr
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
      _ unexpectedBeforePound: RawUnexpectedNodesSyntax? = nil, 
      pound: RawTokenSyntax, 
      _ unexpectedBetweenPoundAndMacroName: RawUnexpectedNodesSyntax? = nil, 
      macroName: RawTokenSyntax, 
      _ unexpectedBetweenMacroNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      genericArgumentClause: RawGenericArgumentClauseSyntax?, 
      _ unexpectedBetweenGenericArgumentClauseAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax?, 
      _ unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawLabeledExprListSyntax, 
      _ unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax?, 
      _ unexpectedBetweenRightParenAndTrailingClosure: RawUnexpectedNodesSyntax? = nil, 
      trailingClosure: RawClosureExprSyntax?, 
      _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax, 
      _ unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .macroExpansionExpr, uninitializedCount: 17, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePound?.raw
      layout[1] = pound.raw
      layout[2] = unexpectedBetweenPoundAndMacroName?.raw
      layout[3] = macroName.raw
      layout[4] = unexpectedBetweenMacroNameAndGenericArgumentClause?.raw
      layout[5] = genericArgumentClause?.raw
      layout[6] = unexpectedBetweenGenericArgumentClauseAndLeftParen?.raw
      layout[7] = leftParen?.raw
      layout[8] = unexpectedBetweenLeftParenAndArguments?.raw
      layout[9] = arguments.raw
      layout[10] = unexpectedBetweenArgumentsAndRightParen?.raw
      layout[11] = rightParen?.raw
      layout[12] = unexpectedBetweenRightParenAndTrailingClosure?.raw
      layout[13] = trailingClosure?.raw
      layout[14] = unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures?.raw
      layout[15] = additionalTrailingClosures.raw
      layout[16] = unexpectedAfterAdditionalTrailingClosures?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePound: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var pound: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPoundAndMacroName: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var macroName: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMacroNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericArgumentClause: RawGenericArgumentClauseSyntax? {
    layoutView.children[5].map(RawGenericArgumentClauseSyntax.init(raw:))
  }
  
  public var unexpectedBetweenGenericArgumentClauseAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawLabeledExprListSyntax {
    layoutView.children[9].map(RawLabeledExprListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax? {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenRightParenAndTrailingClosure: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingClosure: RawClosureExprSyntax? {
    layoutView.children[13].map(RawClosureExprSyntax.init(raw:))
  }
  
  public var unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var additionalTrailingClosures: RawMultipleTrailingClosureElementListSyntax {
    layoutView.children[15].map(RawMultipleTrailingClosureElementListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterAdditionalTrailingClosures: RawUnexpectedNodesSyntax? {
    layoutView.children[16].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMatchingPatternConditionSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .matchingPatternCondition
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
      _ unexpectedBeforeCaseKeyword: RawUnexpectedNodesSyntax? = nil, 
      caseKeyword: RawTokenSyntax, 
      _ unexpectedBetweenCaseKeywordAndPattern: RawUnexpectedNodesSyntax? = nil, 
      pattern: RawPatternSyntax, 
      _ unexpectedBetweenPatternAndTypeAnnotation: RawUnexpectedNodesSyntax? = nil, 
      typeAnnotation: RawTypeAnnotationSyntax?, 
      _ unexpectedBetweenTypeAnnotationAndInitializer: RawUnexpectedNodesSyntax? = nil, 
      initializer: RawInitializerClauseSyntax, 
      _ unexpectedAfterInitializer: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .matchingPatternCondition, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeCaseKeyword?.raw
      layout[1] = caseKeyword.raw
      layout[2] = unexpectedBetweenCaseKeywordAndPattern?.raw
      layout[3] = pattern.raw
      layout[4] = unexpectedBetweenPatternAndTypeAnnotation?.raw
      layout[5] = typeAnnotation?.raw
      layout[6] = unexpectedBetweenTypeAnnotationAndInitializer?.raw
      layout[7] = initializer.raw
      layout[8] = unexpectedAfterInitializer?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeCaseKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var caseKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenCaseKeywordAndPattern: RawUnexpectedNodesSyntax? {
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
  
  public var initializer: RawInitializerClauseSyntax {
    layoutView.children[7].map(RawInitializerClauseSyntax.init(raw:))!
  }
  
  public var unexpectedAfterInitializer: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMemberAccessExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .memberAccessExpr
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
      _ unexpectedBeforeBase: RawUnexpectedNodesSyntax? = nil, 
      base: RawExprSyntax?, 
      _ unexpectedBetweenBaseAndPeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax, 
      _ unexpectedBetweenPeriodAndDeclName: RawUnexpectedNodesSyntax? = nil, 
      declName: RawDeclReferenceExprSyntax, 
      _ unexpectedAfterDeclName: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .memberAccessExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBase?.raw
      layout[1] = base?.raw
      layout[2] = unexpectedBetweenBaseAndPeriod?.raw
      layout[3] = period.raw
      layout[4] = unexpectedBetweenPeriodAndDeclName?.raw
      layout[5] = declName.raw
      layout[6] = unexpectedAfterDeclName?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBase: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var base: RawExprSyntax? {
    layoutView.children[1].map(RawExprSyntax.init(raw:))
  }
  
  public var unexpectedBetweenBaseAndPeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPeriodAndDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var declName: RawDeclReferenceExprSyntax {
    layoutView.children[5].map(RawDeclReferenceExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMemberBlockItemListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .memberBlockItemList
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
  
  public init(elements: [RawMemberBlockItemSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .memberBlockItemList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawMemberBlockItemSyntax] {
    layoutView.children.map {
      RawMemberBlockItemSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawMemberBlockItemSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .memberBlockItem
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
      _ unexpectedBeforeDecl: RawUnexpectedNodesSyntax? = nil, 
      decl: RawDeclSyntax, 
      _ unexpectedBetweenDeclAndSemicolon: RawUnexpectedNodesSyntax? = nil, 
      semicolon: RawTokenSyntax?, 
      _ unexpectedAfterSemicolon: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .memberBlockItem, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDecl?.raw
      layout[1] = decl.raw
      layout[2] = unexpectedBetweenDeclAndSemicolon?.raw
      layout[3] = semicolon?.raw
      layout[4] = unexpectedAfterSemicolon?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDecl: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var decl: RawDeclSyntax {
    layoutView.children[1].map(RawDeclSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDeclAndSemicolon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var semicolon: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterSemicolon: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMemberBlockSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .memberBlock
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
      _ unexpectedBeforeLeftBrace: RawUnexpectedNodesSyntax? = nil, 
      leftBrace: RawTokenSyntax, 
      _ unexpectedBetweenLeftBraceAndMembers: RawUnexpectedNodesSyntax? = nil, 
      members: RawMemberBlockItemListSyntax, 
      _ unexpectedBetweenMembersAndRightBrace: RawUnexpectedNodesSyntax? = nil, 
      rightBrace: RawTokenSyntax, 
      _ unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .memberBlock, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftBrace?.raw
      layout[1] = leftBrace.raw
      layout[2] = unexpectedBetweenLeftBraceAndMembers?.raw
      layout[3] = members.raw
      layout[4] = unexpectedBetweenMembersAndRightBrace?.raw
      layout[5] = rightBrace.raw
      layout[6] = unexpectedAfterRightBrace?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftBrace: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftBraceAndMembers: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var members: RawMemberBlockItemListSyntax {
    layoutView.children[3].map(RawMemberBlockItemListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenMembersAndRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightBrace: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightBrace: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMemberTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .memberType
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
      _ unexpectedBeforeBaseType: RawUnexpectedNodesSyntax? = nil, 
      baseType: RawTypeSyntax, 
      _ unexpectedBetweenBaseTypeAndPeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax, 
      _ unexpectedBetweenPeriodAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      genericArgumentClause: RawGenericArgumentClauseSyntax?, 
      _ unexpectedAfterGenericArgumentClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .memberType, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBaseType?.raw
      layout[1] = baseType.raw
      layout[2] = unexpectedBetweenBaseTypeAndPeriod?.raw
      layout[3] = period.raw
      layout[4] = unexpectedBetweenPeriodAndName?.raw
      layout[5] = name.raw
      layout[6] = unexpectedBetweenNameAndGenericArgumentClause?.raw
      layout[7] = genericArgumentClause?.raw
      layout[8] = unexpectedAfterGenericArgumentClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBaseType: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var baseType: RawTypeSyntax {
    layoutView.children[1].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBaseTypeAndPeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPeriodAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericArgumentClause: RawGenericArgumentClauseSyntax? {
    layoutView.children[7].map(RawGenericArgumentClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericArgumentClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMetatypeTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .metatypeType
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
      _ unexpectedBeforeBaseType: RawUnexpectedNodesSyntax? = nil, 
      baseType: RawTypeSyntax, 
      _ unexpectedBetweenBaseTypeAndPeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax, 
      _ unexpectedBetweenPeriodAndMetatypeSpecifier: RawUnexpectedNodesSyntax? = nil, 
      metatypeSpecifier: RawTokenSyntax, 
      _ unexpectedAfterMetatypeSpecifier: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .metatypeType, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBaseType?.raw
      layout[1] = baseType.raw
      layout[2] = unexpectedBetweenBaseTypeAndPeriod?.raw
      layout[3] = period.raw
      layout[4] = unexpectedBetweenPeriodAndMetatypeSpecifier?.raw
      layout[5] = metatypeSpecifier.raw
      layout[6] = unexpectedAfterMetatypeSpecifier?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBaseType: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var baseType: RawTypeSyntax {
    layoutView.children[1].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBaseTypeAndPeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenPeriodAndMetatypeSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var metatypeSpecifier: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterMetatypeSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMissingDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .missingDecl
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
      _ unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? = nil, 
      modifiers: RawDeclModifierListSyntax, 
      _ unexpectedBetweenModifiersAndPlaceholder: RawUnexpectedNodesSyntax? = nil, 
      placeholder: RawTokenSyntax, 
      _ unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .missingDecl, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndPlaceholder?.raw
      layout[5] = placeholder.raw
      layout[6] = unexpectedAfterPlaceholder?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAttributes: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributes: RawAttributeListSyntax {
    layoutView.children[1].map(RawAttributeListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributesAndModifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var modifiers: RawDeclModifierListSyntax {
    layoutView.children[3].map(RawDeclModifierListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenModifiersAndPlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var placeholder: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMissingExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .missingExpr
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
      _ unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? = nil, 
      placeholder: RawTokenSyntax, 
      _ unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .missingExpr, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePlaceholder?.raw
      layout[1] = placeholder.raw
      layout[2] = unexpectedAfterPlaceholder?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var placeholder: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMissingPatternSyntax: RawPatternSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .missingPattern
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
      _ unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? = nil, 
      placeholder: RawTokenSyntax, 
      _ unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .missingPattern, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePlaceholder?.raw
      layout[1] = placeholder.raw
      layout[2] = unexpectedAfterPlaceholder?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var placeholder: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMissingStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .missingStmt
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
      _ unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? = nil, 
      placeholder: RawTokenSyntax, 
      _ unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .missingStmt, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePlaceholder?.raw
      layout[1] = placeholder.raw
      layout[2] = unexpectedAfterPlaceholder?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var placeholder: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMissingSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .missing
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
      _ unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? = nil, 
      placeholder: RawTokenSyntax, 
      _ unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .missing, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePlaceholder?.raw
      layout[1] = placeholder.raw
      layout[2] = unexpectedAfterPlaceholder?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var placeholder: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMissingTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .missingType
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
      _ unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? = nil, 
      placeholder: RawTokenSyntax, 
      _ unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .missingType, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforePlaceholder?.raw
      layout[1] = placeholder.raw
      layout[2] = unexpectedAfterPlaceholder?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforePlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var placeholder: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterPlaceholder: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawMultipleTrailingClosureElementListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .multipleTrailingClosureElementList
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
  
  public init(elements: [RawMultipleTrailingClosureElementSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .multipleTrailingClosureElementList, uninitializedCount: elements.count, arena: arena) { layout in
        guard var ptr = layout.baseAddress else {
          return
        }
        for elem in elements {
          ptr.initialize(to: elem.raw)
          ptr += 1
        }
    }
    self.init(unchecked: raw)
  }
  
  public var elements: [RawMultipleTrailingClosureElementSyntax] {
    layoutView.children.map {
      RawMultipleTrailingClosureElementSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawMultipleTrailingClosureElementSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .multipleTrailingClosureElement
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
      _ unexpectedBeforeLabel: RawUnexpectedNodesSyntax? = nil, 
      label: RawTokenSyntax, 
      _ unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndClosure: RawUnexpectedNodesSyntax? = nil, 
      closure: RawClosureExprSyntax, 
      _ unexpectedAfterClosure: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .multipleTrailingClosureElement, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLabel?.raw
      layout[1] = label.raw
      layout[2] = unexpectedBetweenLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndClosure?.raw
      layout[5] = closure.raw
      layout[6] = unexpectedAfterClosure?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var label: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndClosure: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var closure: RawClosureExprSyntax {
    layoutView.children[5].map(RawClosureExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterClosure: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawNamedOpaqueReturnTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .namedOpaqueReturnType
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
      _ unexpectedBeforeGenericParameterClause: RawUnexpectedNodesSyntax? = nil, 
      genericParameterClause: RawGenericParameterClauseSyntax, 
      _ unexpectedBetweenGenericParameterClauseAndType: RawUnexpectedNodesSyntax? = nil, 
      type: RawTypeSyntax, 
      _ unexpectedAfterType: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .namedOpaqueReturnType, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeGenericParameterClause?.raw
      layout[1] = genericParameterClause.raw
      layout[2] = unexpectedBetweenGenericParameterClauseAndType?.raw
      layout[3] = type.raw
      layout[4] = unexpectedAfterType?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeGenericParameterClause: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericParameterClause: RawGenericParameterClauseSyntax {
    layoutView.children[1].map(RawGenericParameterClauseSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenGenericParameterClauseAndType: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var type: RawTypeSyntax {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedAfterType: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawNilLiteralExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .nilLiteralExpr
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
      _ unexpectedBeforeNilKeyword: RawUnexpectedNodesSyntax? = nil, 
      nilKeyword: RawTokenSyntax, 
      _ unexpectedAfterNilKeyword: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .nilLiteralExpr, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeNilKeyword?.raw
      layout[1] = nilKeyword.raw
      layout[2] = unexpectedAfterNilKeyword?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeNilKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var nilKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterNilKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
