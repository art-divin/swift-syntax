@_spi(RawSyntax)
public protocol RawDeclSyntaxNodeProtocol: RawSyntaxNodeProtocol {}

@_spi(RawSyntax)
public struct RawDeclModifierDetailSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declModifierDetail
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
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndDetail: RawUnexpectedNodesSyntax? = nil, 
      detail: RawTokenSyntax, 
      _ unexpectedBetweenDetailAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .declModifierDetail, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndDetail?.raw
      layout[3] = detail.raw
      layout[4] = unexpectedBetweenDetailAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndDetail: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var detail: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDetailAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDeclModifierListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declModifierList
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
  
  public init(elements: [RawDeclModifierSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .declModifierList, uninitializedCount: elements.count, arena: arena) { layout in
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
  
  public var elements: [RawDeclModifierSyntax] {
    layoutView.children.map {
      RawDeclModifierSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawDeclModifierSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declModifier
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
      _ unexpectedBeforeName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndDetail: RawUnexpectedNodesSyntax? = nil, 
      detail: RawDeclModifierDetailSyntax?, 
      _ unexpectedAfterDetail: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .declModifier, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeName?.raw
      layout[1] = name.raw
      layout[2] = unexpectedBetweenNameAndDetail?.raw
      layout[3] = detail?.raw
      layout[4] = unexpectedAfterDetail?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndDetail: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var detail: RawDeclModifierDetailSyntax? {
    layoutView.children[3].map(RawDeclModifierDetailSyntax.init(raw:))
  }
  
  public var unexpectedAfterDetail: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDeclNameArgumentListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declNameArgumentList
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
  
  public init(elements: [RawDeclNameArgumentSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .declNameArgumentList, uninitializedCount: elements.count, arena: arena) { layout in
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
  
  public var elements: [RawDeclNameArgumentSyntax] {
    layoutView.children.map {
      RawDeclNameArgumentSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawDeclNameArgumentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declNameArgument
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
      _ unexpectedBeforeName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedBetweenNameAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedAfterColon: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .declNameArgument, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeName?.raw
      layout[1] = name.raw
      layout[2] = unexpectedBetweenNameAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedAfterColon?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenNameAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterColon: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDeclNameArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declNameArguments
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
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawDeclNameArgumentListSyntax, 
      _ unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .declNameArguments, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndArguments?.raw
      layout[3] = arguments.raw
      layout[4] = unexpectedBetweenArgumentsAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawDeclNameArgumentListSyntax {
    layoutView.children[3].map(RawDeclNameArgumentListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDeclReferenceExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .declReferenceExpr
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
      _ unexpectedBeforeBaseName: RawUnexpectedNodesSyntax? = nil, 
      baseName: RawTokenSyntax, 
      _ unexpectedBetweenBaseNameAndArgumentNames: RawUnexpectedNodesSyntax? = nil, 
      argumentNames: RawDeclNameArgumentsSyntax?, 
      _ unexpectedAfterArgumentNames: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .declReferenceExpr, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeBaseName?.raw
      layout[1] = baseName.raw
      layout[2] = unexpectedBetweenBaseNameAndArgumentNames?.raw
      layout[3] = argumentNames?.raw
      layout[4] = unexpectedAfterArgumentNames?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeBaseName: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var baseName: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBaseNameAndArgumentNames: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var argumentNames: RawDeclNameArgumentsSyntax? {
    layoutView.children[3].map(RawDeclNameArgumentsSyntax.init(raw:))
  }
  
  public var unexpectedAfterArgumentNames: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

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

@_spi(RawSyntax)
public struct RawDeferStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .deferStmt
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
      _ unexpectedBeforeDeferKeyword: RawUnexpectedNodesSyntax? = nil, 
      deferKeyword: RawTokenSyntax, 
      _ unexpectedBetweenDeferKeywordAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax, 
      _ unexpectedAfterBody: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .deferStmt, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDeferKeyword?.raw
      layout[1] = deferKeyword.raw
      layout[2] = unexpectedBetweenDeferKeywordAndBody?.raw
      layout[3] = body.raw
      layout[4] = unexpectedAfterBody?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDeferKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var deferKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDeferKeywordAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax {
    layoutView.children[3].map(RawCodeBlockSyntax.init(raw:))!
  }
  
  public var unexpectedAfterBody: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDeinitializerDeclSyntax: RawDeclSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .deinitializerDecl
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
      _ unexpectedBetweenModifiersAndDeinitKeyword: RawUnexpectedNodesSyntax? = nil, 
      deinitKeyword: RawTokenSyntax, 
      _ unexpectedBetweenDeinitKeywordAndEffectSpecifiers: RawUnexpectedNodesSyntax? = nil, 
      effectSpecifiers: RawDeinitializerEffectSpecifiersSyntax?, 
      _ unexpectedBetweenEffectSpecifiersAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax?, 
      _ unexpectedAfterBody: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .deinitializerDecl, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAttributes?.raw
      layout[1] = attributes.raw
      layout[2] = unexpectedBetweenAttributesAndModifiers?.raw
      layout[3] = modifiers.raw
      layout[4] = unexpectedBetweenModifiersAndDeinitKeyword?.raw
      layout[5] = deinitKeyword.raw
      layout[6] = unexpectedBetweenDeinitKeywordAndEffectSpecifiers?.raw
      layout[7] = effectSpecifiers?.raw
      layout[8] = unexpectedBetweenEffectSpecifiersAndBody?.raw
      layout[9] = body?.raw
      layout[10] = unexpectedAfterBody?.raw
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
  
  public var unexpectedBetweenModifiersAndDeinitKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var deinitKeyword: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDeinitKeywordAndEffectSpecifiers: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var effectSpecifiers: RawDeinitializerEffectSpecifiersSyntax? {
    layoutView.children[7].map(RawDeinitializerEffectSpecifiersSyntax.init(raw:))
  }
  
  public var unexpectedBetweenEffectSpecifiersAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax? {
    layoutView.children[9].map(RawCodeBlockSyntax.init(raw:))
  }
  
  public var unexpectedAfterBody: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDeinitializerEffectSpecifiersSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .deinitializerEffectSpecifiers
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
      _ unexpectedAfterAsyncSpecifier: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .deinitializerEffectSpecifiers, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAsyncSpecifier?.raw
      layout[1] = asyncSpecifier?.raw
      layout[2] = unexpectedAfterAsyncSpecifier?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAsyncSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var asyncSpecifier: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterAsyncSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDerivativeAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .derivativeAttributeArguments
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
      _ unexpectedBeforeOfLabel: RawUnexpectedNodesSyntax? = nil, 
      ofLabel: RawTokenSyntax, 
      _ unexpectedBetweenOfLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndOriginalDeclName: RawUnexpectedNodesSyntax? = nil, 
      originalDeclName: RawExprSyntax, 
      _ unexpectedBetweenOriginalDeclNameAndPeriod: RawUnexpectedNodesSyntax? = nil, 
      period: RawTokenSyntax?, 
      _ unexpectedBetweenPeriodAndAccessorSpecifier: RawUnexpectedNodesSyntax? = nil, 
      accessorSpecifier: RawTokenSyntax?, 
      _ unexpectedBetweenAccessorSpecifierAndComma: RawUnexpectedNodesSyntax? = nil, 
      comma: RawTokenSyntax?, 
      _ unexpectedBetweenCommaAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawDifferentiabilityWithRespectToArgumentSyntax?, 
      _ unexpectedAfterArguments: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .derivativeAttributeArguments, uninitializedCount: 15, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeOfLabel?.raw
      layout[1] = ofLabel.raw
      layout[2] = unexpectedBetweenOfLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndOriginalDeclName?.raw
      layout[5] = originalDeclName.raw
      layout[6] = unexpectedBetweenOriginalDeclNameAndPeriod?.raw
      layout[7] = period?.raw
      layout[8] = unexpectedBetweenPeriodAndAccessorSpecifier?.raw
      layout[9] = accessorSpecifier?.raw
      layout[10] = unexpectedBetweenAccessorSpecifierAndComma?.raw
      layout[11] = comma?.raw
      layout[12] = unexpectedBetweenCommaAndArguments?.raw
      layout[13] = arguments?.raw
      layout[14] = unexpectedAfterArguments?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeOfLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var ofLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOfLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndOriginalDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var originalDeclName: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenOriginalDeclNameAndPeriod: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var period: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenPeriodAndAccessorSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var accessorSpecifier: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenAccessorSpecifierAndComma: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var comma: RawTokenSyntax? {
    layoutView.children[11].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenCommaAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[12].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawDifferentiabilityWithRespectToArgumentSyntax? {
    layoutView.children[13].map(RawDifferentiabilityWithRespectToArgumentSyntax.init(raw:))
  }
  
  public var unexpectedAfterArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[14].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDesignatedTypeListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .designatedTypeList
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
  
  public init(elements: [RawDesignatedTypeSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .designatedTypeList, uninitializedCount: elements.count, arena: arena) { layout in
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
  
  public var elements: [RawDesignatedTypeSyntax] {
    layoutView.children.map {
      RawDesignatedTypeSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawDesignatedTypeSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .designatedType
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
      _ unexpectedBeforeLeadingComma: RawUnexpectedNodesSyntax? = nil, 
      leadingComma: RawTokenSyntax, 
      _ unexpectedBetweenLeadingCommaAndName: RawUnexpectedNodesSyntax? = nil, 
      name: RawTokenSyntax, 
      _ unexpectedAfterName: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .designatedType, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeadingComma?.raw
      layout[1] = leadingComma.raw
      layout[2] = unexpectedBetweenLeadingCommaAndName?.raw
      layout[3] = name.raw
      layout[4] = unexpectedAfterName?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeadingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leadingComma: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeadingCommaAndName: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var name: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDictionaryElementListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .dictionaryElementList
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
  
  public init(elements: [RawDictionaryElementSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .dictionaryElementList, uninitializedCount: elements.count, arena: arena) { layout in
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
  
  public var elements: [RawDictionaryElementSyntax] {
    layoutView.children.map {
      RawDictionaryElementSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawDictionaryElementSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .dictionaryElement
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
      _ unexpectedBeforeKey: RawUnexpectedNodesSyntax? = nil, 
      key: RawExprSyntax, 
      _ unexpectedBetweenKeyAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndValue: RawUnexpectedNodesSyntax? = nil, 
      value: RawExprSyntax, 
      _ unexpectedBetweenValueAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .dictionaryElement, uninitializedCount: 9, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeKey?.raw
      layout[1] = key.raw
      layout[2] = unexpectedBetweenKeyAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndValue?.raw
      layout[5] = value.raw
      layout[6] = unexpectedBetweenValueAndTrailingComma?.raw
      layout[7] = trailingComma?.raw
      layout[8] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeKey: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var key: RawExprSyntax {
    layoutView.children[1].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenKeyAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndValue: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var value: RawExprSyntax {
    layoutView.children[5].map(RawExprSyntax.init(raw:))!
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
public struct RawDictionaryExprSyntax: RawExprSyntaxNodeProtocol {
  public enum Content: RawSyntaxNodeProtocol {
    case `colon`(RawTokenSyntax)
    case `elements`(RawDictionaryElementListSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawTokenSyntax.isKindOf(raw) || RawDictionaryElementListSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .colon(let node):
        return node.raw
      case .elements(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawTokenSyntax(other) {
        self = .colon(node)
        return
      }
      if let node = RawDictionaryElementListSyntax(other) {
        self = .elements(node)
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
    return raw.kind == .dictionaryExpr
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
      _ unexpectedBetweenLeftSquareAndContent: RawUnexpectedNodesSyntax? = nil, 
      content: Content, 
      _ unexpectedBetweenContentAndRightSquare: RawUnexpectedNodesSyntax? = nil, 
      rightSquare: RawTokenSyntax, 
      _ unexpectedAfterRightSquare: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .dictionaryExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftSquare?.raw
      layout[1] = leftSquare.raw
      layout[2] = unexpectedBetweenLeftSquareAndContent?.raw
      layout[3] = content.raw
      layout[4] = unexpectedBetweenContentAndRightSquare?.raw
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
  
  public var unexpectedBetweenLeftSquareAndContent: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var content: RawSyntax {
    layoutView.children[3]!
  }
  
  public var unexpectedBetweenContentAndRightSquare: RawUnexpectedNodesSyntax? {
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
public struct RawDictionaryTypeSyntax: RawTypeSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .dictionaryType
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
      _ unexpectedBetweenLeftSquareAndKey: RawUnexpectedNodesSyntax? = nil, 
      key: RawTypeSyntax, 
      _ unexpectedBetweenKeyAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndValue: RawUnexpectedNodesSyntax? = nil, 
      value: RawTypeSyntax, 
      _ unexpectedBetweenValueAndRightSquare: RawUnexpectedNodesSyntax? = nil, 
      rightSquare: RawTokenSyntax, 
      _ unexpectedAfterRightSquare: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .dictionaryType, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftSquare?.raw
      layout[1] = leftSquare.raw
      layout[2] = unexpectedBetweenLeftSquareAndKey?.raw
      layout[3] = key.raw
      layout[4] = unexpectedBetweenKeyAndColon?.raw
      layout[5] = colon.raw
      layout[6] = unexpectedBetweenColonAndValue?.raw
      layout[7] = value.raw
      layout[8] = unexpectedBetweenValueAndRightSquare?.raw
      layout[9] = rightSquare.raw
      layout[10] = unexpectedAfterRightSquare?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftSquare: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftSquareAndKey: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var key: RawTypeSyntax {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenKeyAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndValue: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var value: RawTypeSyntax {
    layoutView.children[7].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenValueAndRightSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightSquare: RawTokenSyntax {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightSquare: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDifferentiabilityArgumentListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .differentiabilityArgumentList
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
  
  public init(elements: [RawDifferentiabilityArgumentSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .differentiabilityArgumentList, uninitializedCount: elements.count, arena: arena) { layout in
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
  
  public var elements: [RawDifferentiabilityArgumentSyntax] {
    layoutView.children.map {
      RawDifferentiabilityArgumentSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawDifferentiabilityArgumentSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .differentiabilityArgument
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
      _ unexpectedBeforeArgument: RawUnexpectedNodesSyntax? = nil, 
      argument: RawTokenSyntax, 
      _ unexpectedBetweenArgumentAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .differentiabilityArgument, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeArgument?.raw
      layout[1] = argument.raw
      layout[2] = unexpectedBetweenArgumentAndTrailingComma?.raw
      layout[3] = trailingComma?.raw
      layout[4] = unexpectedAfterTrailingComma?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeArgument: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var argument: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentAndTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var trailingComma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDifferentiabilityArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .differentiabilityArguments
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
      _ unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax, 
      _ unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawDifferentiabilityArgumentListSyntax, 
      _ unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .differentiabilityArguments, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeLeftParen?.raw
      layout[1] = leftParen.raw
      layout[2] = unexpectedBetweenLeftParenAndArguments?.raw
      layout[3] = arguments.raw
      layout[4] = unexpectedBetweenArgumentsAndRightParen?.raw
      layout[5] = rightParen.raw
      layout[6] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawDifferentiabilityArgumentListSyntax {
    layoutView.children[3].map(RawDifferentiabilityArgumentListSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDifferentiabilityWithRespectToArgumentSyntax: RawSyntaxNodeProtocol {
  public enum Arguments: RawSyntaxNodeProtocol {
    case `argument`(RawDifferentiabilityArgumentSyntax)
    case `argumentList`(RawDifferentiabilityArgumentsSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawDifferentiabilityArgumentSyntax.isKindOf(raw) || RawDifferentiabilityArgumentsSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .argument(let node):
        return node.raw
      case .argumentList(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawDifferentiabilityArgumentSyntax(other) {
        self = .argument(node)
        return
      }
      if let node = RawDifferentiabilityArgumentsSyntax(other) {
        self = .argumentList(node)
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
    return raw.kind == .differentiabilityWithRespectToArgument
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
      _ unexpectedBeforeWrtLabel: RawUnexpectedNodesSyntax? = nil, 
      wrtLabel: RawTokenSyntax, 
      _ unexpectedBetweenWrtLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: Arguments, 
      _ unexpectedAfterArguments: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .differentiabilityWithRespectToArgument, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeWrtLabel?.raw
      layout[1] = wrtLabel.raw
      layout[2] = unexpectedBetweenWrtLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndArguments?.raw
      layout[5] = arguments.raw
      layout[6] = unexpectedAfterArguments?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeWrtLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var wrtLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenWrtLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawSyntax {
    layoutView.children[5]!
  }
  
  public var unexpectedAfterArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDifferentiableAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .differentiableAttributeArguments
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
      _ unexpectedBeforeKindSpecifier: RawUnexpectedNodesSyntax? = nil, 
      kindSpecifier: RawTokenSyntax?, 
      _ unexpectedBetweenKindSpecifierAndKindSpecifierComma: RawUnexpectedNodesSyntax? = nil, 
      kindSpecifierComma: RawTokenSyntax?, 
      _ unexpectedBetweenKindSpecifierCommaAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: RawDifferentiabilityWithRespectToArgumentSyntax?, 
      _ unexpectedBetweenArgumentsAndArgumentsComma: RawUnexpectedNodesSyntax? = nil, 
      argumentsComma: RawTokenSyntax?, 
      _ unexpectedBetweenArgumentsCommaAndGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      genericWhereClause: RawGenericWhereClauseSyntax?, 
      _ unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .differentiableAttributeArguments, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeKindSpecifier?.raw
      layout[1] = kindSpecifier?.raw
      layout[2] = unexpectedBetweenKindSpecifierAndKindSpecifierComma?.raw
      layout[3] = kindSpecifierComma?.raw
      layout[4] = unexpectedBetweenKindSpecifierCommaAndArguments?.raw
      layout[5] = arguments?.raw
      layout[6] = unexpectedBetweenArgumentsAndArgumentsComma?.raw
      layout[7] = argumentsComma?.raw
      layout[8] = unexpectedBetweenArgumentsCommaAndGenericWhereClause?.raw
      layout[9] = genericWhereClause?.raw
      layout[10] = unexpectedAfterGenericWhereClause?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeKindSpecifier: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var kindSpecifier: RawTokenSyntax? {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenKindSpecifierAndKindSpecifierComma: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var kindSpecifierComma: RawTokenSyntax? {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenKindSpecifierCommaAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawDifferentiabilityWithRespectToArgumentSyntax? {
    layoutView.children[5].map(RawDifferentiabilityWithRespectToArgumentSyntax.init(raw:))
  }
  
  public var unexpectedBetweenArgumentsAndArgumentsComma: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var argumentsComma: RawTokenSyntax? {
    layoutView.children[7].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenArgumentsCommaAndGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var genericWhereClause: RawGenericWhereClauseSyntax? {
    layoutView.children[9].map(RawGenericWhereClauseSyntax.init(raw:))
  }
  
  public var unexpectedAfterGenericWhereClause: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDiscardAssignmentExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .discardAssignmentExpr
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
      _ unexpectedBeforeWildcard: RawUnexpectedNodesSyntax? = nil, 
      wildcard: RawTokenSyntax, 
      _ unexpectedAfterWildcard: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .discardAssignmentExpr, uninitializedCount: 3, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeWildcard?.raw
      layout[1] = wildcard.raw
      layout[2] = unexpectedAfterWildcard?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeWildcard: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var wildcard: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedAfterWildcard: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDiscardStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .discardStmt
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
      _ unexpectedBeforeDiscardKeyword: RawUnexpectedNodesSyntax? = nil, 
      discardKeyword: RawTokenSyntax, 
      _ unexpectedBetweenDiscardKeywordAndExpression: RawUnexpectedNodesSyntax? = nil, 
      expression: RawExprSyntax, 
      _ unexpectedAfterExpression: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .discardStmt, uninitializedCount: 5, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDiscardKeyword?.raw
      layout[1] = discardKeyword.raw
      layout[2] = unexpectedBetweenDiscardKeywordAndExpression?.raw
      layout[3] = expression.raw
      layout[4] = unexpectedAfterExpression?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDiscardKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var discardKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDiscardKeywordAndExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var expression: RawExprSyntax {
    layoutView.children[3].map(RawExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterExpression: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

#if compiler(>=5.8)
@_spi(ExperimentalLanguageFeatures)
#endif
@_spi(RawSyntax)
public struct RawDoExprSyntax: RawExprSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .doExpr
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
      _ unexpectedBeforeDoKeyword: RawUnexpectedNodesSyntax? = nil, 
      doKeyword: RawTokenSyntax, 
      _ unexpectedBetweenDoKeywordAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax, 
      _ unexpectedBetweenBodyAndCatchClauses: RawUnexpectedNodesSyntax? = nil, 
      catchClauses: RawCatchClauseListSyntax, 
      _ unexpectedAfterCatchClauses: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .doExpr, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDoKeyword?.raw
      layout[1] = doKeyword.raw
      layout[2] = unexpectedBetweenDoKeywordAndBody?.raw
      layout[3] = body.raw
      layout[4] = unexpectedBetweenBodyAndCatchClauses?.raw
      layout[5] = catchClauses.raw
      layout[6] = unexpectedAfterCatchClauses?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDoKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var doKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDoKeywordAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax {
    layoutView.children[3].map(RawCodeBlockSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBodyAndCatchClauses: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var catchClauses: RawCatchClauseListSyntax {
    layoutView.children[5].map(RawCatchClauseListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterCatchClauses: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDoStmtSyntax: RawStmtSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .doStmt
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
      _ unexpectedBeforeDoKeyword: RawUnexpectedNodesSyntax? = nil, 
      doKeyword: RawTokenSyntax, 
      _ unexpectedBetweenDoKeywordAndBody: RawUnexpectedNodesSyntax? = nil, 
      body: RawCodeBlockSyntax, 
      _ unexpectedBetweenBodyAndCatchClauses: RawUnexpectedNodesSyntax? = nil, 
      catchClauses: RawCatchClauseListSyntax, 
      _ unexpectedAfterCatchClauses: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .doStmt, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeDoKeyword?.raw
      layout[1] = doKeyword.raw
      layout[2] = unexpectedBetweenDoKeywordAndBody?.raw
      layout[3] = body.raw
      layout[4] = unexpectedBetweenBodyAndCatchClauses?.raw
      layout[5] = catchClauses.raw
      layout[6] = unexpectedAfterCatchClauses?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeDoKeyword: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var doKeyword: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenDoKeywordAndBody: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var body: RawCodeBlockSyntax {
    layoutView.children[3].map(RawCodeBlockSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenBodyAndCatchClauses: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var catchClauses: RawCatchClauseListSyntax {
    layoutView.children[5].map(RawCatchClauseListSyntax.init(raw:))!
  }
  
  public var unexpectedAfterCatchClauses: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}

@_spi(RawSyntax)
public struct RawDocumentationAttributeArgumentListSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .documentationAttributeArgumentList
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
  
  public init(elements: [RawDocumentationAttributeArgumentSyntax], arena: __shared SyntaxArena) {
    let raw = RawSyntax.makeLayout(
      kind: .documentationAttributeArgumentList, uninitializedCount: elements.count, arena: arena) { layout in
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
  
  public var elements: [RawDocumentationAttributeArgumentSyntax] {
    layoutView.children.map {
      RawDocumentationAttributeArgumentSyntax(raw: $0!)
    }
  }
}

@_spi(RawSyntax)
public struct RawDocumentationAttributeArgumentSyntax: RawSyntaxNodeProtocol {
  public enum Value: RawSyntaxNodeProtocol {
    case `token`(RawTokenSyntax)
    case `string`(RawStringLiteralExprSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawTokenSyntax.isKindOf(raw) || RawStringLiteralExprSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .token(let node):
        return node.raw
      case .string(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawTokenSyntax(other) {
        self = .token(node)
        return
      }
      if let node = RawStringLiteralExprSyntax(other) {
        self = .string(node)
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
    return raw.kind == .documentationAttributeArgument
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
      value: Value, 
      _ unexpectedBetweenValueAndTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      trailingComma: RawTokenSyntax?, 
      _ unexpectedAfterTrailingComma: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .documentationAttributeArgument, uninitializedCount: 9, arena: arena) { layout in
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
  
  public var value: RawSyntax {
    layoutView.children[5]!
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
public struct RawDynamicReplacementAttributeArgumentsSyntax: RawSyntaxNodeProtocol {
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .dynamicReplacementAttributeArguments
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
      _ unexpectedBeforeForLabel: RawUnexpectedNodesSyntax? = nil, 
      forLabel: RawTokenSyntax, 
      _ unexpectedBetweenForLabelAndColon: RawUnexpectedNodesSyntax? = nil, 
      colon: RawTokenSyntax, 
      _ unexpectedBetweenColonAndDeclName: RawUnexpectedNodesSyntax? = nil, 
      declName: RawDeclReferenceExprSyntax, 
      _ unexpectedAfterDeclName: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .dynamicReplacementAttributeArguments, uninitializedCount: 7, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeForLabel?.raw
      layout[1] = forLabel.raw
      layout[2] = unexpectedBetweenForLabelAndColon?.raw
      layout[3] = colon.raw
      layout[4] = unexpectedBetweenColonAndDeclName?.raw
      layout[5] = declName.raw
      layout[6] = unexpectedAfterDeclName?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeForLabel: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var forLabel: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenForLabelAndColon: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var colon: RawTokenSyntax {
    layoutView.children[3].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenColonAndDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var declName: RawDeclReferenceExprSyntax {
    layoutView.children[5].map(RawDeclReferenceExprSyntax.init(raw:))!
  }
  
  public var unexpectedAfterDeclName: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
