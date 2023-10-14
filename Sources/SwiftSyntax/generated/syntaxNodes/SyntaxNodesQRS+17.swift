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

// MARK: - SuppressedTypeSyntax

/// ### Children
/// 
///  - `withoutTilde`: `<prefixOperator>`
///  - `type`: ``TypeSyntax``
public struct SuppressedTypeSyntax: TypeSyntaxProtocol, SyntaxHashable, _LeafTypeSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .suppressedType else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeWithoutTilde: UnexpectedNodesSyntax? = nil,
      withoutTilde: TokenSyntax,
      _ unexpectedBetweenWithoutTildeAndType: UnexpectedNodesSyntax? = nil,
      type: some TypeSyntaxProtocol,
      _ unexpectedAfterType: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeWithoutTilde, 
            withoutTilde, 
            unexpectedBetweenWithoutTildeAndType, 
            type, 
            unexpectedAfterType
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeWithoutTilde?.raw, 
          withoutTilde.raw, 
          unexpectedBetweenWithoutTildeAndType?.raw, 
          type.raw, 
          unexpectedAfterType?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.suppressedType,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeWithoutTilde: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(SuppressedTypeSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `<prefixOperator>`.
  public var withoutTilde: TokenSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(SuppressedTypeSyntax.self)
    }
  }
  
  public var unexpectedBetweenWithoutTildeAndType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(SuppressedTypeSyntax.self)
    }
  }
  
  public var type: TypeSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(TypeSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(SuppressedTypeSyntax.self)
    }
  }
  
  public var unexpectedAfterType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(SuppressedTypeSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeWithoutTilde, 
          \Self.withoutTilde, 
          \Self.unexpectedBetweenWithoutTildeAndType, 
          \Self.type, 
          \Self.unexpectedAfterType
        ])
  }
}
