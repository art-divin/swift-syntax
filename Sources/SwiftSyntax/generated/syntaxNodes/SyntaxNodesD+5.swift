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

// MARK: - DeferStmtSyntax

/// ### Children
/// 
///  - `deferKeyword`: `defer`
///  - `body`: ``CodeBlockSyntax``
public struct DeferStmtSyntax: StmtSyntaxProtocol, SyntaxHashable, _LeafStmtSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .deferStmt else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeDeferKeyword: UnexpectedNodesSyntax? = nil,
      deferKeyword: TokenSyntax = .keyword(.defer),
      _ unexpectedBetweenDeferKeywordAndBody: UnexpectedNodesSyntax? = nil,
      body: CodeBlockSyntax,
      _ unexpectedAfterBody: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeDeferKeyword, 
            deferKeyword, 
            unexpectedBetweenDeferKeywordAndBody, 
            body, 
            unexpectedAfterBody
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeDeferKeyword?.raw, 
          deferKeyword.raw, 
          unexpectedBetweenDeferKeywordAndBody?.raw, 
          body.raw, 
          unexpectedAfterBody?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.deferStmt,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeDeferKeyword: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(DeferStmtSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `defer`.
  public var deferKeyword: TokenSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(DeferStmtSyntax.self)
    }
  }
  
  public var unexpectedBetweenDeferKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(DeferStmtSyntax.self)
    }
  }
  
  public var body: CodeBlockSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(CodeBlockSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(DeferStmtSyntax.self)
    }
  }
  
  public var unexpectedAfterBody: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(DeferStmtSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeDeferKeyword, 
          \Self.deferKeyword, 
          \Self.unexpectedBetweenDeferKeywordAndBody, 
          \Self.body, 
          \Self.unexpectedAfterBody
        ])
  }
}
