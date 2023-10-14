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

// MARK: - ObjCSelectorPieceSyntax

/// A piece of an Objective-C selector. Either consisting of just an identifier for a nullary selector, an identifier and a colon for a labeled argument or just a colon for an unlabeled argument
///
/// ### Children
/// 
///  - `name`: ``TokenSyntax``?
///  - `colon`: `:`?
///
/// ### Contained in
/// 
///  - ``ObjCSelectorPieceListSyntax``
public struct ObjCSelectorPieceSyntax: SyntaxProtocol, SyntaxHashable, _LeafSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .objCSelectorPiece else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeName: UnexpectedNodesSyntax? = nil,
      name: TokenSyntax? = nil,
      _ unexpectedBetweenNameAndColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax? = nil,
      _ unexpectedAfterColon: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeName, 
            name, 
            unexpectedBetweenNameAndColon, 
            colon, 
            unexpectedAfterColon
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeName?.raw, 
          name?.raw, 
          unexpectedBetweenNameAndColon?.raw, 
          colon?.raw, 
          unexpectedAfterColon?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.objCSelectorPiece,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeName: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(ObjCSelectorPieceSyntax.self)
    }
  }
  
  public var name: TokenSyntax? {
    get {
      return Syntax(self).child(at: 1)?.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(ObjCSelectorPieceSyntax.self)
    }
  }
  
  public var unexpectedBetweenNameAndColon: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(ObjCSelectorPieceSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `:`.
  public var colon: TokenSyntax? {
    get {
      return Syntax(self).child(at: 3)?.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(ObjCSelectorPieceSyntax.self)
    }
  }
  
  public var unexpectedAfterColon: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(ObjCSelectorPieceSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeName, 
          \Self.name, 
          \Self.unexpectedBetweenNameAndColon, 
          \Self.colon, 
          \Self.unexpectedAfterColon
        ])
  }
}
