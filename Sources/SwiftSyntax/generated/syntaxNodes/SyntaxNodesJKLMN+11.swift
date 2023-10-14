//// Automatically generated by generate-swift-syntax
//// Do not edit directly!
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

// MARK: - MacroExpansionExprSyntax

/// The expansion of a freestanding macro in a position that expects an expression.
///
/// ### Children
/// 
///  - `pound`: `#`
///  - `macroName`: `<identifier>`
///  - `genericArgumentClause`: ``GenericArgumentClauseSyntax``?
///  - `leftParen`: `(`?
///  - `arguments`: ``LabeledExprListSyntax``
///  - `rightParen`: `)`?
///  - `trailingClosure`: ``ClosureExprSyntax``?
///  - `additionalTrailingClosures`: ``MultipleTrailingClosureElementListSyntax``
public struct MacroExpansionExprSyntax: ExprSyntaxProtocol, SyntaxHashable, _LeafExprSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .macroExpansionExpr else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - pound: The `#` sign.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforePound: UnexpectedNodesSyntax? = nil,
      pound: TokenSyntax = .poundToken(),
      _ unexpectedBetweenPoundAndMacroName: UnexpectedNodesSyntax? = nil,
      macroName: TokenSyntax,
      _ unexpectedBetweenMacroNameAndGenericArgumentClause: UnexpectedNodesSyntax? = nil,
      genericArgumentClause: GenericArgumentClauseSyntax? = nil,
      _ unexpectedBetweenGenericArgumentClauseAndLeftParen: UnexpectedNodesSyntax? = nil,
      leftParen: TokenSyntax? = nil,
      _ unexpectedBetweenLeftParenAndArguments: UnexpectedNodesSyntax? = nil,
      arguments: LabeledExprListSyntax,
      _ unexpectedBetweenArgumentsAndRightParen: UnexpectedNodesSyntax? = nil,
      rightParen: TokenSyntax? = nil,
      _ unexpectedBetweenRightParenAndTrailingClosure: UnexpectedNodesSyntax? = nil,
      trailingClosure: ClosureExprSyntax? = nil,
      _ unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: UnexpectedNodesSyntax? = nil,
      additionalTrailingClosures: MultipleTrailingClosureElementListSyntax = [],
      _ unexpectedAfterAdditionalTrailingClosures: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforePound, 
            pound, 
            unexpectedBetweenPoundAndMacroName, 
            macroName, 
            unexpectedBetweenMacroNameAndGenericArgumentClause, 
            genericArgumentClause, 
            unexpectedBetweenGenericArgumentClauseAndLeftParen, 
            leftParen, 
            unexpectedBetweenLeftParenAndArguments, 
            arguments, 
            unexpectedBetweenArgumentsAndRightParen, 
            rightParen, 
            unexpectedBetweenRightParenAndTrailingClosure, 
            trailingClosure, 
            unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures, 
            additionalTrailingClosures, 
            unexpectedAfterAdditionalTrailingClosures
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforePound?.raw, 
          pound.raw, 
          unexpectedBetweenPoundAndMacroName?.raw, 
          macroName.raw, 
          unexpectedBetweenMacroNameAndGenericArgumentClause?.raw, 
          genericArgumentClause?.raw, 
          unexpectedBetweenGenericArgumentClauseAndLeftParen?.raw, 
          leftParen?.raw, 
          unexpectedBetweenLeftParenAndArguments?.raw, 
          arguments.raw, 
          unexpectedBetweenArgumentsAndRightParen?.raw, 
          rightParen?.raw, 
          unexpectedBetweenRightParenAndTrailingClosure?.raw, 
          trailingClosure?.raw, 
          unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures?.raw, 
          additionalTrailingClosures.raw, 
          unexpectedAfterAdditionalTrailingClosures?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.macroExpansionExpr,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforePound: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  /// The `#` sign.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `#`.
  public var pound: TokenSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenPoundAndMacroName: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `<identifier>`.
  public var macroName: TokenSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenMacroNameAndGenericArgumentClause: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var genericArgumentClause: GenericArgumentClauseSyntax? {
    get {
      return Syntax(self).child(at: 5)?.cast(GenericArgumentClauseSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenGenericArgumentClauseAndLeftParen: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `(`.
  public var leftParen: TokenSyntax? {
    get {
      return Syntax(self).child(at: 7)?.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 7, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenLeftParenAndArguments: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 8)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 8, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var arguments: LabeledExprListSyntax {
    get {
      return Syntax(self).child(at: 9)!.cast(LabeledExprListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 9, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  /// Adds the provided `element` to the node's `arguments`
  /// collection.
  ///
  /// - param element: The new `Argument` to add to the node's
  ///                  `arguments` collection.
  /// - returns: A copy of the receiver with the provided `Argument`
  ///            appended to its `arguments` collection.
  @available(*, deprecated, message: "Use node.arguments.append(newElement) instead")
  public func addArgument(_ element: LabeledExprSyntax) -> MacroExpansionExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[9] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.labeledExprList,
                                        from: [element.raw], arena: arena)
    }
    return Syntax(self)
      .replacingChild(
        at: 9, 
        with: collection, 
        rawNodeArena: arena, 
        allocationArena: arena
      )
      .cast(MacroExpansionExprSyntax.self)
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 10)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 10, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `)`.
  public var rightParen: TokenSyntax? {
    get {
      return Syntax(self).child(at: 11)?.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 11, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenRightParenAndTrailingClosure: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 12)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 12, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var trailingClosure: ClosureExprSyntax? {
    get {
      return Syntax(self).child(at: 13)?.cast(ClosureExprSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 13, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 14)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 14, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public var additionalTrailingClosures: MultipleTrailingClosureElementListSyntax {
    get {
      return Syntax(self).child(at: 15)!.cast(MultipleTrailingClosureElementListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 15, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  /// Adds the provided `element` to the node's `additionalTrailingClosures`
  /// collection.
  ///
  /// - param element: The new `AdditionalTrailingClosure` to add to the node's
  ///                  `additionalTrailingClosures` collection.
  /// - returns: A copy of the receiver with the provided `AdditionalTrailingClosure`
  ///            appended to its `additionalTrailingClosures` collection.
  @available(*, deprecated, message: "Use node.additionalTrailingClosures.append(newElement) instead")
  public func addAdditionalTrailingClosure(_ element: MultipleTrailingClosureElementSyntax) -> MacroExpansionExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[15] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.multipleTrailingClosureElementList,
                                        from: [element.raw], arena: arena)
    }
    return Syntax(self)
      .replacingChild(
        at: 15, 
        with: collection, 
        rawNodeArena: arena, 
        allocationArena: arena
      )
      .cast(MacroExpansionExprSyntax.self)
  }
  
  public var unexpectedAfterAdditionalTrailingClosures: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 16)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 16, with: Syntax(value), arena: SyntaxArena()).cast(MacroExpansionExprSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforePound, 
          \Self.pound, 
          \Self.unexpectedBetweenPoundAndMacroName, 
          \Self.macroName, 
          \Self.unexpectedBetweenMacroNameAndGenericArgumentClause, 
          \Self.genericArgumentClause, 
          \Self.unexpectedBetweenGenericArgumentClauseAndLeftParen, 
          \Self.leftParen, 
          \Self.unexpectedBetweenLeftParenAndArguments, 
          \Self.arguments, 
          \Self.unexpectedBetweenArgumentsAndRightParen, 
          \Self.rightParen, 
          \Self.unexpectedBetweenRightParenAndTrailingClosure, 
          \Self.trailingClosure, 
          \Self.unexpectedBetweenTrailingClosureAndAdditionalTrailingClosures, 
          \Self.additionalTrailingClosures, 
          \Self.unexpectedAfterAdditionalTrailingClosures
        ])
  }
}
