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

// MARK: - MemberTypeSyntax

/// ### Children
/// 
///  - `baseType`: ``TypeSyntax``
///  - `period`: `.`
///  - `name`: (`<identifier>` | `self`)
///  - `genericArgumentClause`: ``GenericArgumentClauseSyntax``?
public struct MemberTypeSyntax: TypeSyntaxProtocol, SyntaxHashable, _LeafTypeSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .memberType else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeBaseType: UnexpectedNodesSyntax? = nil,
      baseType: some TypeSyntaxProtocol,
      _ unexpectedBetweenBaseTypeAndPeriod: UnexpectedNodesSyntax? = nil,
      period: TokenSyntax = .periodToken(),
      _ unexpectedBetweenPeriodAndName: UnexpectedNodesSyntax? = nil,
      name: TokenSyntax,
      _ unexpectedBetweenNameAndGenericArgumentClause: UnexpectedNodesSyntax? = nil,
      genericArgumentClause: GenericArgumentClauseSyntax? = nil,
      _ unexpectedAfterGenericArgumentClause: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeBaseType, 
            baseType, 
            unexpectedBetweenBaseTypeAndPeriod, 
            period, 
            unexpectedBetweenPeriodAndName, 
            name, 
            unexpectedBetweenNameAndGenericArgumentClause, 
            genericArgumentClause, 
            unexpectedAfterGenericArgumentClause
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeBaseType?.raw, 
          baseType.raw, 
          unexpectedBetweenBaseTypeAndPeriod?.raw, 
          period.raw, 
          unexpectedBetweenPeriodAndName?.raw, 
          name.raw, 
          unexpectedBetweenNameAndGenericArgumentClause?.raw, 
          genericArgumentClause?.raw, 
          unexpectedAfterGenericArgumentClause?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.memberType,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeBaseType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  public var baseType: TypeSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TypeSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  public var unexpectedBetweenBaseTypeAndPeriod: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `.`.
  public var period: TokenSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  public var unexpectedBetweenPeriodAndName: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be one of the following kinds:
  ///  - `<identifier>`
  ///  - `self`
  public var name: TokenSyntax {
    get {
      return Syntax(self).child(at: 5)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  public var unexpectedBetweenNameAndGenericArgumentClause: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  public var genericArgumentClause: GenericArgumentClauseSyntax? {
    get {
      return Syntax(self).child(at: 7)?.cast(GenericArgumentClauseSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 7, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  public var unexpectedAfterGenericArgumentClause: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 8)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 8, with: Syntax(value), arena: SyntaxArena()).cast(MemberTypeSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeBaseType, 
          \Self.baseType, 
          \Self.unexpectedBetweenBaseTypeAndPeriod, 
          \Self.period, 
          \Self.unexpectedBetweenPeriodAndName, 
          \Self.name, 
          \Self.unexpectedBetweenNameAndGenericArgumentClause, 
          \Self.genericArgumentClause, 
          \Self.unexpectedAfterGenericArgumentClause
        ])
  }
}
