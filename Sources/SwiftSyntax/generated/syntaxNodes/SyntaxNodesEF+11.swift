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

// MARK: - ExtensionDeclSyntax

/// ### Children
/// 
///  - `attributes`: ``AttributeListSyntax``
///  - `modifiers`: ``DeclModifierListSyntax``
///  - `extensionKeyword`: `extension`
///  - `extendedType`: ``TypeSyntax``
///  - `inheritanceClause`: ``InheritanceClauseSyntax``?
///  - `genericWhereClause`: ``GenericWhereClauseSyntax``?
///  - `memberBlock`: ``MemberBlockSyntax``
public struct ExtensionDeclSyntax: DeclSyntaxProtocol, SyntaxHashable, _LeafDeclSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .extensionDecl else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - modifiers: Modifiers like `public` that are attached to the extension declaration.
  ///   - genericWhereClause: A `where` clause that places additional constraints on generic parameters like `where Element: Hashable`.
  ///   - memberBlock: The members of the extension declaration. As this is an extension, the contents of this member block isn't guaranteed to be a complete list of members for this type.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeAttributes: UnexpectedNodesSyntax? = nil,
      attributes: AttributeListSyntax = [],
      _ unexpectedBetweenAttributesAndModifiers: UnexpectedNodesSyntax? = nil,
      modifiers: DeclModifierListSyntax = [],
      _ unexpectedBetweenModifiersAndExtensionKeyword: UnexpectedNodesSyntax? = nil,
      extensionKeyword: TokenSyntax = .keyword(.extension),
      _ unexpectedBetweenExtensionKeywordAndExtendedType: UnexpectedNodesSyntax? = nil,
      extendedType: some TypeSyntaxProtocol,
      _ unexpectedBetweenExtendedTypeAndInheritanceClause: UnexpectedNodesSyntax? = nil,
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
            unexpectedBetweenModifiersAndExtensionKeyword, 
            extensionKeyword, 
            unexpectedBetweenExtensionKeywordAndExtendedType, 
            extendedType, 
            unexpectedBetweenExtendedTypeAndInheritanceClause, 
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
          unexpectedBetweenModifiersAndExtensionKeyword?.raw, 
          extensionKeyword.raw, 
          unexpectedBetweenExtensionKeywordAndExtendedType?.raw, 
          extendedType.raw, 
          unexpectedBetweenExtendedTypeAndInheritanceClause?.raw, 
          inheritanceClause?.raw, 
          unexpectedBetweenInheritanceClauseAndGenericWhereClause?.raw, 
          genericWhereClause?.raw, 
          unexpectedBetweenGenericWhereClauseAndMemberBlock?.raw, 
          memberBlock.raw, 
          unexpectedAfterMemberBlock?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.extensionDecl,
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
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public var attributes: AttributeListSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(AttributeListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
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
  public func addAttribute(_ element: Syntax) -> ExtensionDeclSyntax {
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
      .cast(ExtensionDeclSyntax.self)
  }
  
  public var unexpectedBetweenAttributesAndModifiers: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  /// Modifiers like `public` that are attached to the extension declaration.
  public var modifiers: DeclModifierListSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(DeclModifierListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
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
  public func addModifier(_ element: DeclModifierSyntax) -> ExtensionDeclSyntax {
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
      .cast(ExtensionDeclSyntax.self)
  }
  
  public var unexpectedBetweenModifiersAndExtensionKeyword: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `extension`.
  public var extensionKeyword: TokenSyntax {
    get {
      return Syntax(self).child(at: 5)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenExtensionKeywordAndExtendedType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public var extendedType: TypeSyntax {
    get {
      return Syntax(self).child(at: 7)!.cast(TypeSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 7, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenExtendedTypeAndInheritanceClause: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 8)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 8, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public var inheritanceClause: InheritanceClauseSyntax? {
    get {
      return Syntax(self).child(at: 9)?.cast(InheritanceClauseSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 9, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenInheritanceClauseAndGenericWhereClause: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 10)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 10, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  /// A `where` clause that places additional constraints on generic parameters like `where Element: Hashable`.
  public var genericWhereClause: GenericWhereClauseSyntax? {
    get {
      return Syntax(self).child(at: 11)?.cast(GenericWhereClauseSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 11, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public var unexpectedBetweenGenericWhereClauseAndMemberBlock: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 12)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 12, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  /// The members of the extension declaration. As this is an extension, the contents of this member block isn't guaranteed to be a complete list of members for this type.
  public var memberBlock: MemberBlockSyntax {
    get {
      return Syntax(self).child(at: 13)!.cast(MemberBlockSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 13, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public var unexpectedAfterMemberBlock: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 14)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 14, with: Syntax(value), arena: SyntaxArena()).cast(ExtensionDeclSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeAttributes, 
          \Self.attributes, 
          \Self.unexpectedBetweenAttributesAndModifiers, 
          \Self.modifiers, 
          \Self.unexpectedBetweenModifiersAndExtensionKeyword, 
          \Self.extensionKeyword, 
          \Self.unexpectedBetweenExtensionKeywordAndExtendedType, 
          \Self.extendedType, 
          \Self.unexpectedBetweenExtendedTypeAndInheritanceClause, 
          \Self.inheritanceClause, 
          \Self.unexpectedBetweenInheritanceClauseAndGenericWhereClause, 
          \Self.genericWhereClause, 
          \Self.unexpectedBetweenGenericWhereClauseAndMemberBlock, 
          \Self.memberBlock, 
          \Self.unexpectedAfterMemberBlock
        ])
  }
}
