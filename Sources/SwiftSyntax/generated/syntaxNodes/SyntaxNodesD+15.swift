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

// MARK: - DifferentiabilityWithRespectToArgumentSyntax

/// A clause containing differentiability parameters.
///
/// ### Children
/// 
///  - `wrtLabel`: `wrt`
///  - `colon`: `:`
///  - `arguments`: (``DifferentiabilityArgumentSyntax`` | ``DifferentiabilityArgumentsSyntax``)
///
/// ### Contained in
/// 
///  - ``DerivativeAttributeArgumentsSyntax``.``DerivativeAttributeArgumentsSyntax/arguments``
///  - ``DifferentiableAttributeArgumentsSyntax``.``DifferentiableAttributeArgumentsSyntax/arguments``
public struct DifferentiabilityWithRespectToArgumentSyntax: SyntaxProtocol, SyntaxHashable, _LeafSyntaxNodeProtocol {
  public enum Arguments: SyntaxChildChoices, SyntaxHashable {
    case `argument`(DifferentiabilityArgumentSyntax)
    case `argumentList`(DifferentiabilityArgumentsSyntax)
    
    public var _syntaxNode: Syntax {
      switch self {
      case .argument(let node):
        return node._syntaxNode
      case .argumentList(let node):
        return node._syntaxNode
      }
    }
    
    public init(_ node: DifferentiabilityArgumentSyntax) {
      self = .argument(node)
    }
    
    public init(_ node: DifferentiabilityArgumentsSyntax) {
      self = .argumentList(node)
    }
    
    public init?(_ node: some SyntaxProtocol) {
      if let node = node.as(DifferentiabilityArgumentSyntax.self) {
        self = .argument(node)
        return
      }
      if let node = node.as(DifferentiabilityArgumentsSyntax.self) {
        self = .argumentList(node)
        return
      }
      return nil
    }
    
    public static var structure: SyntaxNodeStructure {
      return .choices([.node(DifferentiabilityArgumentSyntax.self), .node(DifferentiabilityArgumentsSyntax.self)])
    }
    
    /// Checks if the current syntax node can be cast to ``DifferentiabilityArgumentSyntax``.
    ///
    /// - Returns: `true` if the node can be cast, `false` otherwise.
    public func `is`(_ syntaxType: DifferentiabilityArgumentSyntax.Type) -> Bool {
      return self.as(syntaxType) != nil
    }
    
    /// Attempts to cast the current syntax node to ``DifferentiabilityArgumentSyntax``.
    ///
    /// - Returns: An instance of ``DifferentiabilityArgumentSyntax``, or `nil` if the cast fails.
    public func `as`(_ syntaxType: DifferentiabilityArgumentSyntax.Type) -> DifferentiabilityArgumentSyntax? {
      return DifferentiabilityArgumentSyntax.init(self)
    }
    
    /// Force-casts the current syntax node to ``DifferentiabilityArgumentSyntax``.
    ///
    /// - Returns: An instance of ``DifferentiabilityArgumentSyntax``.
    /// - Warning: This function will crash if the cast is not possible. Use `as` to safely attempt a cast.
    public func cast(_ syntaxType: DifferentiabilityArgumentSyntax.Type) -> DifferentiabilityArgumentSyntax {
      return self.as(DifferentiabilityArgumentSyntax.self)!
    }
    
    /// Checks if the current syntax node can be cast to ``DifferentiabilityArgumentsSyntax``.
    ///
    /// - Returns: `true` if the node can be cast, `false` otherwise.
    public func `is`(_ syntaxType: DifferentiabilityArgumentsSyntax.Type) -> Bool {
      return self.as(syntaxType) != nil
    }
    
    /// Attempts to cast the current syntax node to ``DifferentiabilityArgumentsSyntax``.
    ///
    /// - Returns: An instance of ``DifferentiabilityArgumentsSyntax``, or `nil` if the cast fails.
    public func `as`(_ syntaxType: DifferentiabilityArgumentsSyntax.Type) -> DifferentiabilityArgumentsSyntax? {
      return DifferentiabilityArgumentsSyntax.init(self)
    }
    
    /// Force-casts the current syntax node to ``DifferentiabilityArgumentsSyntax``.
    ///
    /// - Returns: An instance of ``DifferentiabilityArgumentsSyntax``.
    /// - Warning: This function will crash if the cast is not possible. Use `as` to safely attempt a cast.
    public func cast(_ syntaxType: DifferentiabilityArgumentsSyntax.Type) -> DifferentiabilityArgumentsSyntax {
      return self.as(DifferentiabilityArgumentsSyntax.self)!
    }
  }
  
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .differentiabilityWithRespectToArgument else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - wrtLabel: The "wrt" label.
  ///   - colon: The colon separating "wrt" and the parameter list.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeWrtLabel: UnexpectedNodesSyntax? = nil,
      wrtLabel: TokenSyntax = .keyword(.wrt),
      _ unexpectedBetweenWrtLabelAndColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax = .colonToken(),
      _ unexpectedBetweenColonAndArguments: UnexpectedNodesSyntax? = nil,
      arguments: Arguments,
      _ unexpectedAfterArguments: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeWrtLabel, 
            wrtLabel, 
            unexpectedBetweenWrtLabelAndColon, 
            colon, 
            unexpectedBetweenColonAndArguments, 
            arguments, 
            unexpectedAfterArguments
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeWrtLabel?.raw, 
          wrtLabel.raw, 
          unexpectedBetweenWrtLabelAndColon?.raw, 
          colon.raw, 
          unexpectedBetweenColonAndArguments?.raw, 
          arguments.raw, 
          unexpectedAfterArguments?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.differentiabilityWithRespectToArgument,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeWrtLabel: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(DifferentiabilityWithRespectToArgumentSyntax.self)
    }
  }
  
  /// The "wrt" label.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `wrt`.
  public var wrtLabel: TokenSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(DifferentiabilityWithRespectToArgumentSyntax.self)
    }
  }
  
  public var unexpectedBetweenWrtLabelAndColon: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(DifferentiabilityWithRespectToArgumentSyntax.self)
    }
  }
  
  /// The colon separating "wrt" and the parameter list.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `:`.
  public var colon: TokenSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(DifferentiabilityWithRespectToArgumentSyntax.self)
    }
  }
  
  public var unexpectedBetweenColonAndArguments: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(DifferentiabilityWithRespectToArgumentSyntax.self)
    }
  }
  
  public var arguments: Arguments {
    get {
      return Syntax(self).child(at: 5)!.cast(Arguments.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(DifferentiabilityWithRespectToArgumentSyntax.self)
    }
  }
  
  public var unexpectedAfterArguments: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(DifferentiabilityWithRespectToArgumentSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeWrtLabel, 
          \Self.wrtLabel, 
          \Self.unexpectedBetweenWrtLabelAndColon, 
          \Self.colon, 
          \Self.unexpectedBetweenColonAndArguments, 
          \Self.arguments, 
          \Self.unexpectedAfterArguments
        ])
  }
}
