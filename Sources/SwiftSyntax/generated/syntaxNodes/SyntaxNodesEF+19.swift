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

// MARK: - FunctionParameterClauseSyntax

/// ### Children
/// 
///  - `leftParen`: `(`
///  - `parameters`: ``FunctionParameterListSyntax``
///  - `rightParen`: `)`
///
/// ### Contained in
/// 
///  - ``FunctionSignatureSyntax``.``FunctionSignatureSyntax/parameterClause``
///  - ``SubscriptDeclSyntax``.``SubscriptDeclSyntax/parameterClause``
public struct FunctionParameterClauseSyntax: SyntaxProtocol, SyntaxHashable, _LeafSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .functionParameterClause else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeLeftParen: UnexpectedNodesSyntax? = nil,
      leftParen: TokenSyntax = .leftParenToken(),
      _ unexpectedBetweenLeftParenAndParameters: UnexpectedNodesSyntax? = nil,
      parameters: FunctionParameterListSyntax,
      _ unexpectedBetweenParametersAndRightParen: UnexpectedNodesSyntax? = nil,
      rightParen: TokenSyntax = .rightParenToken(),
      _ unexpectedAfterRightParen: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeLeftParen, 
            leftParen, 
            unexpectedBetweenLeftParenAndParameters, 
            parameters, 
            unexpectedBetweenParametersAndRightParen, 
            rightParen, 
            unexpectedAfterRightParen
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeLeftParen?.raw, 
          leftParen.raw, 
          unexpectedBetweenLeftParenAndParameters?.raw, 
          parameters.raw, 
          unexpectedBetweenParametersAndRightParen?.raw, 
          rightParen.raw, 
          unexpectedAfterRightParen?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.functionParameterClause,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeLeftParen: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(FunctionParameterClauseSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `(`.
  public var leftParen: TokenSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(FunctionParameterClauseSyntax.self)
    }
  }
  
  public var unexpectedBetweenLeftParenAndParameters: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(FunctionParameterClauseSyntax.self)
    }
  }
  
  public var parameters: FunctionParameterListSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(FunctionParameterListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(FunctionParameterClauseSyntax.self)
    }
  }
  
  /// Adds the provided `element` to the node's `parameters`
  /// collection.
  ///
  /// - param element: The new `Parameter` to add to the node's
  ///                  `parameters` collection.
  /// - returns: A copy of the receiver with the provided `Parameter`
  ///            appended to its `parameters` collection.
  @available(*, deprecated, message: "Use node.parameters.append(newElement) instead")
  public func addParameter(_ element: FunctionParameterSyntax) -> FunctionParameterClauseSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[3] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.functionParameterList,
                                        from: [element.raw], arena: arena)
    }
    return Syntax(self)
      .replacingChild(
        at: 3, 
        with: collection, 
        rawNodeArena: arena, 
        allocationArena: arena
      )
      .cast(FunctionParameterClauseSyntax.self)
  }
  
  public var unexpectedBetweenParametersAndRightParen: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(FunctionParameterClauseSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `)`.
  public var rightParen: TokenSyntax {
    get {
      return Syntax(self).child(at: 5)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(FunctionParameterClauseSyntax.self)
    }
  }
  
  public var unexpectedAfterRightParen: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(FunctionParameterClauseSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeLeftParen, 
          \Self.leftParen, 
          \Self.unexpectedBetweenLeftParenAndParameters, 
          \Self.parameters, 
          \Self.unexpectedBetweenParametersAndRightParen, 
          \Self.rightParen, 
          \Self.unexpectedAfterRightParen
        ])
  }
}
