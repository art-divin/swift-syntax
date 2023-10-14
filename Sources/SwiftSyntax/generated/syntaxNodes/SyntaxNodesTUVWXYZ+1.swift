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

// MARK: - ThenStmtSyntax

/// A statement used to indicate the produced value from an if/switch
/// expression.
/// 
///  Written as:
/// ```swift
/// then <expr>
/// ```
///
/// - Experiment: Requires experimental feature `thenStatements`.
///
/// ### Children
/// 
///  - `thenKeyword`: `then`
///  - `expression`: ``ExprSyntax``
#if compiler(>=5.8)
@_spi(ExperimentalLanguageFeatures)
#endif
public struct ThenStmtSyntax: StmtSyntaxProtocol, SyntaxHashable, _LeafStmtSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .thenStmt else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeThenKeyword: UnexpectedNodesSyntax? = nil,
      thenKeyword: TokenSyntax = .keyword(.then),
      _ unexpectedBetweenThenKeywordAndExpression: UnexpectedNodesSyntax? = nil,
      expression: some ExprSyntaxProtocol,
      _ unexpectedAfterExpression: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeThenKeyword, 
            thenKeyword, 
            unexpectedBetweenThenKeywordAndExpression, 
            expression, 
            unexpectedAfterExpression
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeThenKeyword?.raw, 
          thenKeyword.raw, 
          unexpectedBetweenThenKeywordAndExpression?.raw, 
          expression.raw, 
          unexpectedAfterExpression?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.thenStmt,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeThenKeyword: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(ThenStmtSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `then`.
  public var thenKeyword: TokenSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(ThenStmtSyntax.self)
    }
  }
  
  public var unexpectedBetweenThenKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(ThenStmtSyntax.self)
    }
  }
  
  public var expression: ExprSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(ExprSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(ThenStmtSyntax.self)
    }
  }
  
  public var unexpectedAfterExpression: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(ThenStmtSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeThenKeyword, 
          \Self.thenKeyword, 
          \Self.unexpectedBetweenThenKeywordAndExpression, 
          \Self.expression, 
          \Self.unexpectedAfterExpression
        ])
  }
}
