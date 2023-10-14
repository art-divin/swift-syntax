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

// MARK: - ActorDeclSyntax

/// ### Children
/// 
///  - `attributes`: ``AttributeListSyntax``
///  - `modifiers`: ``DeclModifierListSyntax``
///  - `actorKeyword`: `actor`
///  - `name`: `<identifier>`
///  - `genericParameterClause`: ``GenericParameterClauseSyntax``?
///  - `inheritanceClause`: ``InheritanceClauseSyntax``?
///  - `genericWhereClause`: ``GenericWhereClauseSyntax``?
///  - `memberBlock`: ``MemberBlockSyntax``
public struct ActorDeclSyntax: DeclSyntaxProtocol, SyntaxHashable, _LeafDeclSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .actorDecl else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - modifiers: Modifiers like `public` that are attached to the actor declaration.
  ///   - actorKeyword: The `actor` keyword.
  ///   - name: The name of the actor. If the name matches a reserved keyword use backticks to escape it.
  ///   - genericParameterClause: The parameter clause that defines the generic parameters.
  ///   - genericWhereClause: A `where` clause that places additional constraints on generic parameters like `where Element: Hashable`.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeAttributes: UnexpectedNodesSyntax? = nil,
      attributes: AttributeListSyntax = [],
      _ unexpectedBetweenAttributesAndModifiers: UnexpectedNodesSyntax? = nil,
      modifiers: DeclModifierListSyntax = [],
      _ unexpectedBetweenModifiersAndActorKeyword: UnexpectedNodesSyntax? = nil,
      actorKeyword: TokenSyntax = .keyword(.actor),
      _ unexpectedBetweenActorKeywordAndName: UnexpectedNodesSyntax? = nil,
      name: TokenSyntax,
      _ unexpectedBetweenNameAndGenericParameterClause: UnexpectedNodesSyntax? = nil,
      genericParameterClause: GenericParameterClauseSyntax? = nil,
      _ unexpectedBetweenGenericParameterClauseAndInheritanceClause: UnexpectedNodesSyntax? = nil,
      inheritanceClause: InheritanceClauseSyntax? = nil,
      _ unexpectedBetweenInheritanceClauseAndGenericWhereClause: UnexpectedNodesSyntax? = nil,
      genericWhereClause: GenericWhereClauseSyntax? = nil,
      _ unexpectedBetweenGenericWhereClauseAndMemberBlock: UnexpectedNodesSyntax? = nil,
      memberBlock: MemberBlockSyntax,
      _ unexpectedAfterMemberBlock: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeAttributes, 
            attributes, 
            unexpectedBetweenAttributesAndModifiers, 
            modifiers, 
            unexpectedBetweenModifiersAndActorKeyword, 
            actorKeyword, 
            unexpectedBetweenActorKeywordAndName, 
            name, 
            unexpectedBetweenNameAndGenericParameterClause, 
            genericParameterClause, 
            unexpectedBetweenGenericParameterClauseAndInheritanceClause, 
            inheritanceClause, 
            unexpectedBetweenInheritanceClauseAndGenericWhereClause, 
            genericWhereClause, 
            unexpectedBetweenGenericWhereClauseAndMemberBlock, 
            memberBlock, 
            unexpectedAfterMemberBlock
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeAttributes?.raw, 
          attributes.raw, 
          unexpectedBetweenAttributesAndModifiers?.raw, 
          modifiers.raw, 
          unexpectedBetweenModifiersAndActorKeyword?.raw, 
          actorKeyword.raw, 
          unexpectedBetweenActorKeywordAndName?.raw, 
          name.raw, 
          unexpectedBetweenNameAndGenericParameterClause?.raw, 
          genericParameterClause?.raw, 
          unexpectedBetweenGenericParameterClauseAndInheritanceClause?.raw, 
          inheritanceClause?.raw, 
          unexpectedBetweenInheritanceClauseAndGenericWhereClause?.raw, 
          genericWhereClause?.raw, 
          unexpectedBetweenGenericWhereClauseAndMemberBlock?.raw, 
          memberBlock.raw, 
          unexpectedAfterMemberBlock?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.actorDecl,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeAttributes: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var attributes: AttributeListSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(AttributeListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  /// Adds the provided `element` to the node's `attributes`
  /// collection.
  ///
  /// - param element: The new `Attribute` to add to the node's
  ///                  `attributes` collection.
  /// - returns: A copy of the receiver with the provided `Attribute`
  ///            appended to its `attributes` collection.
  @available(*, deprecated, message: "Use node.attributes.append(newElement) instead")
  public func addAttribute(_ element: Syntax) -> ActorDeclSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[1] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.attributeList,
                                        from: [element.raw], arena: arena)
    }
    return Syntax(self)
      .replacingChild(
        at: 1, 
        with: collection, 
        rawNodeArena: arena, 
        allocationArena: arena
      )
      .cast(ActorDeclSyntax.self)
  }
  
  public var unexpectedBetweenAttributesAndModifiers: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  /// Modifiers like `public` that are attached to the actor declaration.
  public var modifiers: DeclModifierListSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(DeclModifierListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  /// Adds the provided `element` to the node's `modifiers`
  /// collection.
  ///
  /// - param element: The new `Modifier` to add to the node's
  ///                  `modifiers` collection.
  /// - returns: A copy of the receiver with the provided `Modifier`
  ///            appended to its `modifiers` collection.
  @available(*, deprecated, message: "Use node.modifiers.append(newElement) instead")
  public func addModifier(_ element: DeclModifierSyntax) -> ActorDeclSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[3] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.declModifierList,
                                        from: [element.raw], arena: arena)
    }
    return Syntax(self)
      .replacingChild(
        at: 3, 
        with: collection, 
        rawNodeArena: arena, 
        allocationArena: arena
      )
      .cast(ActorDeclSyntax.self)
  }
  
  public var unexpectedBetweenModifiersAndActorKeyword: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  /// The `actor` keyword.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `actor`.
  public var actorKeyword: TokenSyntax {
    get {
      return Syntax(self).child(at: 5)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenActorKeywordAndName: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  /// The name of the actor. If the name matches a reserved keyword use backticks to escape it.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `<identifier>`.
  public var name: TokenSyntax {
    get {
      return Syntax(self).child(at: 7)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 7, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenNameAndGenericParameterClause: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 8)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 8, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  /// The parameter clause that defines the generic parameters.
  public var genericParameterClause: GenericParameterClauseSyntax? {
    get {
      return Syntax(self).child(at: 9)?.cast(GenericParameterClauseSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 9, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenGenericParameterClauseAndInheritanceClause: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 10)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 10, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var inheritanceClause: InheritanceClauseSyntax? {
    get {
      return Syntax(self).child(at: 11)?.cast(InheritanceClauseSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 11, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenInheritanceClauseAndGenericWhereClause: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 12)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 12, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  /// A `where` clause that places additional constraints on generic parameters like `where Element: Hashable`.
  public var genericWhereClause: GenericWhereClauseSyntax? {
    get {
      return Syntax(self).child(at: 13)?.cast(GenericWhereClauseSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 13, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenGenericWhereClauseAndMemberBlock: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 14)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 14, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var memberBlock: MemberBlockSyntax {
    get {
      return Syntax(self).child(at: 15)!.cast(MemberBlockSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 15, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public var unexpectedAfterMemberBlock: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 16)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 16, with: Syntax(value), arena: SyntaxArena()).cast(ActorDeclSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeAttributes, 
          \Self.attributes, 
          \Self.unexpectedBetweenAttributesAndModifiers, 
          \Self.modifiers, 
          \Self.unexpectedBetweenModifiersAndActorKeyword, 
          \Self.actorKeyword, 
          \Self.unexpectedBetweenActorKeywordAndName, 
          \Self.name, 
          \Self.unexpectedBetweenNameAndGenericParameterClause, 
          \Self.genericParameterClause, 
          \Self.unexpectedBetweenGenericParameterClauseAndInheritanceClause, 
          \Self.inheritanceClause, 
          \Self.unexpectedBetweenInheritanceClauseAndGenericWhereClause, 
          \Self.genericWhereClause, 
          \Self.unexpectedBetweenGenericWhereClauseAndMemberBlock, 
          \Self.memberBlock, 
          \Self.unexpectedAfterMemberBlock
        ])
  }
}
