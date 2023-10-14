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
/// ``PatternBindingSyntax`` `*`
///
/// ### Contained in
/// 
///  - ``VariableDeclSyntax``.``VariableDeclSyntax/bindings``
public struct PatternBindingListSyntax: SyntaxCollection, SyntaxHashable {
  public typealias Element = PatternBindingSyntax
  
  public let _syntaxNode: Syntax
  
  public init?(_ node: some SyntaxProtocol) {
    guard node.raw.kind == .patternBindingList else {
      return nil
    }
    self._syntaxNode = node._syntaxNode
  }
  
  public static let syntaxKind = SyntaxKind.patternBindingList
}
