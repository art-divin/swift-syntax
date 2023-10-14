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

// MARK: - ArrowExprSyntax

/// The arrow when a type is used at a position that syntactically expectes an expression.
/// 
/// ### Examples
/// 
/// This represents the arrow in
/// 
/// ```swift
/// let array = [(Int) -> Int]()
/// ```
///
/// ### Children
/// 
///  - `effectSpecifiers`: ``TypeEffectSpecifiersSyntax``?
///  - `arrow`: `->`
public struct ArrowExprSyntax: ExprSyntaxProtocol, SyntaxHashable, _LeafExprSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .arrowExpr else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeEffectSpecifiers: UnexpectedNodesSyntax? = nil,
      effectSpecifiers: TypeEffectSpecifiersSyntax? = nil,
      _ unexpectedBetweenEffectSpecifiersAndArrow: UnexpectedNodesSyntax? = nil,
      arrow: TokenSyntax = .arrowToken(),
      _ unexpectedAfterArrow: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeEffectSpecifiers, 
            effectSpecifiers, 
            unexpectedBetweenEffectSpecifiersAndArrow, 
            arrow, 
            unexpectedAfterArrow
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeEffectSpecifiers?.raw, 
          effectSpecifiers?.raw, 
          unexpectedBetweenEffectSpecifiersAndArrow?.raw, 
          arrow.raw, 
          unexpectedAfterArrow?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.arrowExpr,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeEffectSpecifiers: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(ArrowExprSyntax.self)
    }
  }
  
  public var effectSpecifiers: TypeEffectSpecifiersSyntax? {
    get {
      return Syntax(self).child(at: 1)?.cast(TypeEffectSpecifiersSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(ArrowExprSyntax.self)
    }
  }
  
  public var unexpectedBetweenEffectSpecifiersAndArrow: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(ArrowExprSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `->`.
  public var arrow: TokenSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(ArrowExprSyntax.self)
    }
  }
  
  public var unexpectedAfterArrow: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(ArrowExprSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeEffectSpecifiers, 
          \Self.effectSpecifiers, 
          \Self.unexpectedBetweenEffectSpecifiersAndArrow, 
          \Self.arrow, 
          \Self.unexpectedAfterArrow
        ])
  }
}
