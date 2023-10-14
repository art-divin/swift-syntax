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

extension InheritanceClauseSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenColonAndInheritedTypes")
  public var unexpectedBetweenColonAndInheritedTypeCollection: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenColonAndInheritedTypes
    }
    set {
      unexpectedBetweenColonAndInheritedTypes = newValue
    }
  }
  
  @available(*, deprecated, renamed: "inheritedTypes")
  public var inheritedTypeCollection: InheritedTypeListSyntax {
    get {
      return inheritedTypes
    }
    set {
      inheritedTypes = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterInheritedTypes")
  public var unexpectedAfterInheritedTypeCollection: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterInheritedTypes
    }
    set {
      unexpectedAfterInheritedTypes = newValue
    }
  }
  
  @available(*, deprecated, renamed: "InheritanceClauseSyntax(leadingTrivia:_:colon:_:inheritedTypes:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax = .colonToken(),
      _ unexpectedBetweenColonAndInheritedTypeCollection: UnexpectedNodesSyntax? = nil,
      inheritedTypeCollection: InheritedTypeListSyntax,
      _ unexpectedAfterInheritedTypeCollection: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeColon, 
        colon: colon, 
        unexpectedBetweenColonAndInheritedTypeCollection, 
        inheritedTypes: inheritedTypeCollection, 
        unexpectedAfterInheritedTypeCollection, 
        trailingTrivia: trailingTrivia
      )
  }
}
