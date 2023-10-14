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

// MARK: - BackDeployedAttributeArgumentsSyntax

/// A collection of arguments for the `@backDeployed` attribute
///
/// ### Children
/// 
///  - `beforeLabel`: `before`
///  - `colon`: `:`
///  - `platforms`: ``PlatformVersionItemListSyntax``
///
/// ### Contained in
/// 
///  - ``AttributeSyntax``.``AttributeSyntax/arguments``
public struct BackDeployedAttributeArgumentsSyntax: SyntaxProtocol, SyntaxHashable, _LeafSyntaxNodeProtocol {
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .backDeployedAttributeArguments else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  /// - Parameters:
  ///   - leadingTrivia: Trivia to be prepended to the leading trivia of the node’s first token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  ///   - beforeLabel: The "before" label.
  ///   - colon: The colon separating "before" and the parameter list.
  ///   - platforms: The list of OS versions in which the declaration became ABI stable.
  ///   - trailingTrivia: Trivia to be appended to the trailing trivia of the node’s last token. If the node is empty, there is no token to attach the trivia to and the parameter is ignored.
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeBeforeLabel: UnexpectedNodesSyntax? = nil,
      beforeLabel: TokenSyntax = .keyword(.before),
      _ unexpectedBetweenBeforeLabelAndColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax = .colonToken(),
      _ unexpectedBetweenColonAndPlatforms: UnexpectedNodesSyntax? = nil,
      platforms: PlatformVersionItemListSyntax,
      _ unexpectedAfterPlatforms: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    // Extend the lifetime of all parameters so their arenas don't get destroyed
    // before they can be added as children of the new arena.
    self = withExtendedLifetime((SyntaxArena(), (
            unexpectedBeforeBeforeLabel, 
            beforeLabel, 
            unexpectedBetweenBeforeLabelAndColon, 
            colon, 
            unexpectedBetweenColonAndPlatforms, 
            platforms, 
            unexpectedAfterPlatforms
          ))) { (arena, _) in
      let layout: [RawSyntax?] = [
          unexpectedBeforeBeforeLabel?.raw, 
          beforeLabel.raw, 
          unexpectedBetweenBeforeLabelAndColon?.raw, 
          colon.raw, 
          unexpectedBetweenColonAndPlatforms?.raw, 
          platforms.raw, 
          unexpectedAfterPlatforms?.raw
        ]
      let raw = RawSyntax.makeLayout(
        kind: SyntaxKind.backDeployedAttributeArguments,
        from: layout,
        arena: arena,
        leadingTrivia: leadingTrivia,
        trailingTrivia: trailingTrivia
        
      )
      return Syntax.forRoot(raw, rawNodeArena: arena).cast(Self.self)
    }
  }
  
  public var unexpectedBeforeBeforeLabel: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 0)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 0, with: Syntax(value), arena: SyntaxArena()).cast(BackDeployedAttributeArgumentsSyntax.self)
    }
  }
  
  /// The "before" label.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `before`.
  public var beforeLabel: TokenSyntax {
    get {
      return Syntax(self).child(at: 1)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 1, with: Syntax(value), arena: SyntaxArena()).cast(BackDeployedAttributeArgumentsSyntax.self)
    }
  }
  
  public var unexpectedBetweenBeforeLabelAndColon: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 2)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 2, with: Syntax(value), arena: SyntaxArena()).cast(BackDeployedAttributeArgumentsSyntax.self)
    }
  }
  
  /// The colon separating "before" and the parameter list.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `:`.
  public var colon: TokenSyntax {
    get {
      return Syntax(self).child(at: 3)!.cast(TokenSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 3, with: Syntax(value), arena: SyntaxArena()).cast(BackDeployedAttributeArgumentsSyntax.self)
    }
  }
  
  public var unexpectedBetweenColonAndPlatforms: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 4)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 4, with: Syntax(value), arena: SyntaxArena()).cast(BackDeployedAttributeArgumentsSyntax.self)
    }
  }
  
  /// The list of OS versions in which the declaration became ABI stable.
  public var platforms: PlatformVersionItemListSyntax {
    get {
      return Syntax(self).child(at: 5)!.cast(PlatformVersionItemListSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 5, with: Syntax(value), arena: SyntaxArena()).cast(BackDeployedAttributeArgumentsSyntax.self)
    }
  }
  
  /// Adds the provided `element` to the node's `platforms`
  /// collection.
  ///
  /// - param element: The new `Platform` to add to the node's
  ///                  `platforms` collection.
  /// - returns: A copy of the receiver with the provided `Platform`
  ///            appended to its `platforms` collection.
  @available(*, deprecated, message: "Use node.platforms.append(newElement) instead")
  public func addPlatform(_ element: PlatformVersionItemSyntax) -> BackDeployedAttributeArgumentsSyntax {
    var collection: RawSyntax
    let arena = SyntaxArena()
    if let col = raw.layoutView!.children[5] {
      collection = col.layoutView!.appending(element.raw, arena: arena)
    } else {
      collection = RawSyntax.makeLayout(kind: SyntaxKind.platformVersionItemList,
                                        from: [element.raw], arena: arena)
    }
    return Syntax(self)
      .replacingChild(
        at: 5, 
        with: collection, 
        rawNodeArena: arena, 
        allocationArena: arena
      )
      .cast(BackDeployedAttributeArgumentsSyntax.self)
  }
  
  public var unexpectedAfterPlatforms: UnexpectedNodesSyntax? {
    get {
      return Syntax(self).child(at: 6)?.cast(UnexpectedNodesSyntax.self)
    }
    set(value) {
      self = Syntax(self).replacingChild(at: 6, with: Syntax(value), arena: SyntaxArena()).cast(BackDeployedAttributeArgumentsSyntax.self)
    }
  }
  
  public static var structure: SyntaxNodeStructure {
    return .layout([
          \Self.unexpectedBeforeBeforeLabel, 
          \Self.beforeLabel, 
          \Self.unexpectedBetweenBeforeLabelAndColon, 
          \Self.colon, 
          \Self.unexpectedBetweenColonAndPlatforms, 
          \Self.platforms, 
          \Self.unexpectedAfterPlatforms
        ])
  }
}
