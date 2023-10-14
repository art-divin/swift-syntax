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

// MARK: - SameTypeRequirementSyntax

/// ### Children
/// 
///  - `leftType`: ``TypeSyntax``
///  - `equal`: (`<binaryOperator>` | `<prefixOperator>` | `<postfixOperator>`)
///  - `rightType`: ``TypeSyntax``
///
/// ### Contained in
/// 
///  - ``GenericRequirementSyntax``.``GenericRequirementSyntax/requirement``
public struct SameTypeRequirementSyntax: SyntaxProtocol, SyntaxHashable, _LeafSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .sameTypeRequirement else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeLeftType: UnexpectedNodesSyntax? = nil,
      leftType: some TypeSyntaxProtocol,
      _ unexpectedBetweenLeftTypeAndEqual: UnexpectedNodesSyntax? = nil,
      equal: TokenSyntax,
      _ unexpectedBetweenEqualAndRightType: UnexpectedNodesSyntax? = nil,
      rightType: some TypeSyntaxProtocol,
      _ unexpectedAfterRightType: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeLeftType, 
            leftType, 
            unexpectedBetweenLeftTypeAndEqual, 
            equal, 
            unexpectedBetweenEqualAndRightType, 
            rightType, 
            unexpectedAfterRightType
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeLeftType?.raw, 
          leftType.raw, 
          unexpectedBetweenLeftTypeAndEqual?.raw, 
          equal.raw, 
          unexpectedBetweenEqualAndRightType?.raw, 
          rightType.raw, 
          unexpectedAfterRightType?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.sameTypeRequirement,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeLeftType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(SameTypeRequirementSyntax.self)
    }
  }
  
  public var leftType: TypeSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TypeSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(SameTypeRequirementSyntax.self)
    }
  }
  
  public var unexpectedBetweenLeftTypeAndEqual: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(SameTypeRequirementSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be one of the following kinds:
  ///  - `<binaryOperator>`
  ///  - `<prefixOperator>`
  ///  - `<postfixOperator>`
  public var equal: TokenSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(SameTypeRequirementSyntax.self)
    }
  }
  
  public var unexpectedBetweenEqualAndRightType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(SameTypeRequirementSyntax.self)
    }
  }
  
  public var rightType: TypeSyntax {
    get {
      return Syntax(self).child(at: 5)!.cast(TypeSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(SameTypeRequirementSyntax.self)
    }
  }
  
  public var unexpectedAfterRightType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(SameTypeRequirementSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeLeftType, 
          \Self.leftType, 
          \Self.unexpectedBetweenLeftTypeAndEqual, 
          \Self.equal, 
          \Self.unexpectedBetweenEqualAndRightType, 
          \Self.rightType, 
          \Self.unexpectedAfterRightType
        ])
  }
}
