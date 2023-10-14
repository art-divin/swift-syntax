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

// MARK: - IsExprSyntax

/// Checks if an expression is of a given type.
/// 
/// An example of an `is` expression is
/// 
/// ```swift
/// value is Double
/// ```
/// 
/// - Note: This node is only generated after operators are folded using the `SwiftOperators` library. 
///   Beforehand, the parser does not know the precedences of operators and thus represents `is` by an `UnresolvedIsExpr`.
///
/// ### Children
/// 
///  - `expression`: ``ExprSyntax``
///  - `isKeyword`: `is`
///  - `type`: ``TypeSyntax``
public struct IsExprSyntax: ExprSyntaxProtocol, SyntaxHashable, _LeafExprSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .isExpr else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - expression: The expression which will be checked to determine whether it can be cast to a specific type.
  ///   - isKeyword: The `is` keyword for this expression.
  ///   - type: The type against which the expression will be checked to see if the expression can be cast to it.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
      expression: some ExprSyntaxProtocol,
      _ unexpectedBetweenExpressionAndIsKeyword: UnexpectedNodesSyntax? = nil,
      isKeyword: TokenSyntax = .keyword(.is),
      _ unexpectedBetweenIsKeywordAndType: UnexpectedNodesSyntax? = nil,
      type: some TypeSyntaxProtocol,
      _ unexpectedAfterType: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeExpression, 
            expression, 
            unexpectedBetweenExpressionAndIsKeyword, 
            isKeyword, 
            unexpectedBetweenIsKeywordAndType, 
            type, 
            unexpectedAfterType
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeExpression?.raw, 
          expression.raw, 
          unexpectedBetweenExpressionAndIsKeyword?.raw, 
          isKeyword.raw, 
          unexpectedBetweenIsKeywordAndType?.raw, 
          type.raw, 
          unexpectedAfterType?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.isExpr,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(IsExprSyntax.self)
    }
  }
  
  /// The expression which will be checked to determine whether it can be cast to a specific type.
  public var expression: ExprSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(ExprSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(IsExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenExpressionAndIsKeyword: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(IsExprSyntax.self)
    }
  }
  
  /// The `is` keyword for this expression.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `is`.
  public var isKeyword: TokenSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(IsExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenIsKeywordAndType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(IsExprSyntax.self)
    }
  }
  
  /// The type against which the expression will be checked to see if the expression can be cast to it.
  public var type: TypeSyntax {
    get {
      return Syntax(self).child(at: 5)!.cast(TypeSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(IsExprSyntax.self)
    }
  }
  
  public var unexpectedAfterType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(IsExprSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeExpression, 
          \Self.expression, 
          \Self.unexpectedBetweenExpressionAndIsKeyword, 
          \Self.isKeyword, 
          \Self.unexpectedBetweenIsKeywordAndType, 
          \Self.type, 
          \Self.unexpectedAfterType
        ])
  }
}
