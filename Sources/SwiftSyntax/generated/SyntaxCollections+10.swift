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

/// ### Children
/// 
/// ``CompositionTypeElementSyntax`` `*`
///
/// ### Contained in
/// 
///  - ``CompositionTypeSyntax``.``CompositionTypeSyntax/elements``
public struct CompositionTypeElementListSyntax: SyntaxCollection, SyntaxHashable {
  public typealias Element = CompositionTypeElementSyntax
  
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .compositionTypeElementList else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  public static let syntaxKind = SyntaxKind.compositionTypeElementList
}
