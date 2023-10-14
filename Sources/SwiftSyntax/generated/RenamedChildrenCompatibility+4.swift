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

extension ArrowExprSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenEffectSpecifiersAndArrow")
  public var unexpectedBetweenEffectSpecifiersAndArrowToken: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenEffectSpecifiersAndArrow
    }
    set {
      unexpectedBetweenEffectSpecifiersAndArrow = newValue
    }
  }
  
  @available(*, deprecated, renamed: "arrow")
  public var arrowToken: TokenSyntax {
    get {
      return arrow
    }
    set {
      arrow = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterArrow")
  public var unexpectedAfterArrowToken: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterArrow
    }
    set {
      unexpectedAfterArrow = newValue
    }
  }
  
  @available(*, deprecated, renamed: "ArrowExprSyntax(leadingTrivia:_:effectSpecifiers:_:arrow:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeEffectSpecifiers: UnexpectedNodesSyntax? = nil,
      effectSpecifiers: TypeEffectSpecifiersSyntax? = nil,
      _ unexpectedBetweenEffectSpecifiersAndArrowToken: UnexpectedNodesSyntax? = nil,
      arrowToken: TokenSyntax = .arrowToken(),
      _ unexpectedAfterArrowToken: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeEffectSpecifiers, 
        effectSpecifiers: effectSpecifiers, 
        unexpectedBetweenEffectSpecifiersAndArrowToken, 
        arrow: arrowToken, 
        unexpectedAfterArrowToken, 
        trailingTrivia: trailingTrivia
      )
  }
}
