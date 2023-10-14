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

// MARK: - ClosureExprSyntax

/// ### Children
/// 
///  - `leftBrace`: `{`
///  - `signature`: ``ClosureSignatureSyntax``?
///  - `statements`: ``CodeBlockItemListSyntax``
///  - `rightBrace`: `}`
///
/// ### Contained in
/// 
///  - ``FunctionCallExprSyntax``.``FunctionCallExprSyntax/trailingClosure``
///  - ``MacroExpansionDeclSyntax``.``MacroExpansionDeclSyntax/trailingClosure``
///  - ``MacroExpansionExprSyntax``.``MacroExpansionExprSyntax/trailingClosure``
///  - ``MultipleTrailingClosureElementSyntax``.``MultipleTrailingClosureElementSyntax/closure``
///  - ``SubscriptCallExprSyntax``.``SubscriptCallExprSyntax/trailingClosure``
public struct ClosureExprSyntax: ExprSyntaxProtocol, SyntaxHashable, _LeafExprSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .closureExpr else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeLeftBrace: UnexpectedNodesSyntax? = nil,
      leftBrace: TokenSyntax = .leftBraceToken(),
      _ unexpectedBetweenLeftBraceAndSignature: UnexpectedNodesSyntax? = nil,
      signature: ClosureSignatureSyntax? = nil,
      _ unexpectedBetweenSignatureAndStatements: UnexpectedNodesSyntax? = nil,
      statements: CodeBlockItemListSyntax,
      _ unexpectedBetweenStatementsAndRightBrace: UnexpectedNodesSyntax? = nil,
      rightBrace: TokenSyntax = .rightBraceToken(),
      _ unexpectedAfterRightBrace: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeLeftBrace, 
            leftBrace, 
            unexpectedBetweenLeftBraceAndSignature, 
            signature, 
            unexpectedBetweenSignatureAndStatements, 
            statements, 
            unexpectedBetweenStatementsAndRightBrace, 
            rightBrace, 
            unexpectedAfterRightBrace
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeLeftBrace?.raw, 
          leftBrace.raw, 
          unexpectedBetweenLeftBraceAndSignature?.raw, 
          signature?.raw, 
          unexpectedBetweenSignatureAndStatements?.raw, 
          statements.raw, 
          unexpectedBetweenStatementsAndRightBrace?.raw, 
          rightBrace.raw, 
          unexpectedAfterRightBrace?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.closureExpr,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeLeftBrace: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `{`.
  public var leftBrace: TokenSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenLeftBraceAndSignature: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  public var signature: ClosureSignatureSyntax? {
    get {
      return Syntax(self).child(at: 3)?.cast(ClosureSignatureSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenSignatureAndStatements: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  public var statements: CodeBlockItemListSyntax {
    get {
      return Syntax(self).child(at: 5)!.cast(CodeBlockItemListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  /// Adds the provided `element` to the node's `statements`
  /// collection.
  ///
  /// - param element: The new `Statement` to add to the node's
  ///                  `statements` collection.
  /// - returns: A copy of the receiver with the provided `Statement`
  ///            appended to its `statements` collection.
  @available(*, deprecated, message: "Use node.statements.append(newElement) instead")
  public func addStatement(_ element: CodeBlockItemSyntax) -> ClosureExprSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[5] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.codeBlockItemList,
                                        from: [element.raw], arena: arena)
    }
    return Syntax(self)
      .replacingChild(
        at: 5, 
        with: collection, 
        rawNodeArena: arena, 
        allocationArena: arena
      )
      .cast(ClosureExprSyntax.self)
  }
  
  public var unexpectedBetweenStatementsAndRightBrace: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `}`.
  public var rightBrace: TokenSyntax {
    get {
      return Syntax(self).child(at: 7)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 7, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  public var unexpectedAfterRightBrace: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 8)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 8, with: Syntax(value), arena: SyntaxArena()).cast(ClosureExprSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeLeftBrace, 
          \Self.leftBrace, 
          \Self.unexpectedBetweenLeftBraceAndSignature, 
          \Self.signature, 
          \Self.unexpectedBetweenSignatureAndStatements, 
          \Self.statements, 
          \Self.unexpectedBetweenStatementsAndRightBrace, 
          \Self.rightBrace, 
          \Self.unexpectedAfterRightBrace
        ])
  }
}
