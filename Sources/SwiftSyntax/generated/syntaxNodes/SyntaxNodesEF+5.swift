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

// MARK: - EnumCaseParameterSyntax

/// ### Children
/// 
///  - `modifiers`: ``DeclModifierListSyntax``
///  - `firstName`: (`<identifier>` | `_`)?
///  - `secondName`: (`<identifier>` | `_`)?
///  - `colon`: `:`?
///  - `type`: ``TypeSyntax``
///  - `defaultValue`: ``InitializerClauseSyntax``?
///  - `trailingComma`: `,`?
///
/// ### Contained in
/// 
///  - ``EnumCaseParameterListSyntax``
public struct EnumCaseParameterSyntax: SyntaxProtocol, SyntaxHashable, _LeafSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .enumCaseParameter else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - colon: If the parameter has a label, the colon separating the label from the type.
  ///   - type: The parameter's type.
  ///   - defaultValue: If the parameter has a default value, the initializer clause describing the default value.
  ///   - trailingComma: If the parameter is followed by another parameter, the comma separating them.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeModifiers: UnexpectedNodesSyntax? = nil,
      modifiers: DeclModifierListSyntax = [],
      _ unexpectedBetweenModifiersAndFirstName: UnexpectedNodesSyntax? = nil,
      firstName: TokenSyntax? = nil,
      _ unexpectedBetweenFirstNameAndSecondName: UnexpectedNodesSyntax? = nil,
      secondName: TokenSyntax? = nil,
      _ unexpectedBetweenSecondNameAndColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax? = nil,
      _ unexpectedBetweenColonAndType: UnexpectedNodesSyntax? = nil,
      type: some TypeSyntaxProtocol,
      _ unexpectedBetweenTypeAndDefaultValue: UnexpectedNodesSyntax? = nil,
      defaultValue: InitializerClauseSyntax? = nil,
      _ unexpectedBetweenDefaultValueAndTrailingComma: UnexpectedNodesSyntax? = nil,
      trailingComma: TokenSyntax? = nil,
      _ unexpectedAfterTrailingComma: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeModifiers, 
            modifiers, 
            unexpectedBetweenModifiersAndFirstName, 
            firstName, 
            unexpectedBetweenFirstNameAndSecondName, 
            secondName, 
            unexpectedBetweenSecondNameAndColon, 
            colon, 
            unexpectedBetweenColonAndType, 
            type, 
            unexpectedBetweenTypeAndDefaultValue, 
            defaultValue, 
            unexpectedBetweenDefaultValueAndTrailingComma, 
            trailingComma, 
            unexpectedAfterTrailingComma
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeModifiers?.raw, 
          modifiers.raw, 
          unexpectedBetweenModifiersAndFirstName?.raw, 
          firstName?.raw, 
          unexpectedBetweenFirstNameAndSecondName?.raw, 
          secondName?.raw, 
          unexpectedBetweenSecondNameAndColon?.raw, 
          colon?.raw, 
          unexpectedBetweenColonAndType?.raw, 
          type.raw, 
          unexpectedBetweenTypeAndDefaultValue?.raw, 
          defaultValue?.raw, 
          unexpectedBetweenDefaultValueAndTrailingComma?.raw, 
          trailingComma?.raw, 
          unexpectedAfterTrailingComma?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.enumCaseParameter,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeModifiers: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  public var modifiers: DeclModifierListSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(DeclModifierListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
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
  public func addModifier(_ element: DeclModifierSyntax) -> EnumCaseParameterSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[1] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.declModifierList,
                                        from: [element.raw], arena: arena)
    }
    return Syntax(self)
      .replacingChild(
        at: 1, 
        with: collection, 
        rawNodeArena: arena, 
        allocationArena: arena
      )
      .cast(EnumCaseParameterSyntax.self)
  }
  
  public var unexpectedBetweenModifiersAndFirstName: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be one of the following kinds:
  ///  - `<identifier>`
  ///  - `_`
  public var firstName: TokenSyntax? {
    get {
      return Syntax(self).child(at: 3)?.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  public var unexpectedBetweenFirstNameAndSecondName: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be one of the following kinds:
  ///  - `<identifier>`
  ///  - `_`
  public var secondName: TokenSyntax? {
    get {
      return Syntax(self).child(at: 5)?.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  public var unexpectedBetweenSecondNameAndColon: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  /// If the parameter has a label, the colon separating the label from the type.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `:`.
  public var colon: TokenSyntax? {
    get {
      return Syntax(self).child(at: 7)?.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 7, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  public var unexpectedBetweenColonAndType: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 8)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 8, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  /// The parameter's type.
  public var type: TypeSyntax {
    get {
      return Syntax(self).child(at: 9)!.cast(TypeSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 9, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  public var unexpectedBetweenTypeAndDefaultValue: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 10)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 10, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  /// If the parameter has a default value, the initializer clause describing the default value.
  public var defaultValue: InitializerClauseSyntax? {
    get {
      return Syntax(self).child(at: 11)?.cast(InitializerClauseSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 11, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  public var unexpectedBetweenDefaultValueAndTrailingComma: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 12)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 12, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  /// If the parameter is followed by another parameter, the comma separating them.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `,`.
  public var trailingComma: TokenSyntax? {
    get {
      return Syntax(self).child(at: 13)?.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 13, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  public var unexpectedAfterTrailingComma: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 14)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 14, with: Syntax(value), arena: SyntaxArena()).cast(EnumCaseParameterSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeModifiers, 
          \Self.modifiers, 
          \Self.unexpectedBetweenModifiersAndFirstName, 
          \Self.firstName, 
          \Self.unexpectedBetweenFirstNameAndSecondName, 
          \Self.secondName, 
          \Self.unexpectedBetweenSecondNameAndColon, 
          \Self.colon, 
          \Self.unexpectedBetweenColonAndType, 
          \Self.type, 
          \Self.unexpectedBetweenTypeAndDefaultValue, 
          \Self.defaultValue, 
          \Self.unexpectedBetweenDefaultValueAndTrailingComma, 
          \Self.trailingComma, 
          \Self.unexpectedAfterTrailingComma
        ])
  }
}
