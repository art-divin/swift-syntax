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

extension YieldedExpressionsClauseSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenLeftParenAndElements")
  public var unexpectedBetweenLeftParenAndElementList: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenLeftParenAndElements
    }
    set {
      unexpectedBetweenLeftParenAndElements = newValue
    }
  }
  
  @available(*, deprecated, renamed: "elements")
  public var elementList: YieldedExpressionListSyntax {
    get {
      return elements
    }
    set {
      elements = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenElementsAndRightParen")
  public var unexpectedBetweenElementListAndRightParen: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenElementsAndRightParen
    }
    set {
      unexpectedBetweenElementsAndRightParen = newValue
    }
  }
  
  @available(*, deprecated, renamed: "YieldedExpressionsClauseSyntax(leadingTrivia:_:leftParen:_:elements:_:rightParen:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeLeftParen: UnexpectedNodesSyntax? = nil,
      leftParen: TokenSyntax = .leftParenToken(),
      _ unexpectedBetweenLeftParenAndElementList: UnexpectedNodesSyntax? = nil,
      elementList: YieldedExpressionListSyntax,
      _ unexpectedBetweenElementListAndRightParen: UnexpectedNodesSyntax? = nil,
      rightParen: TokenSyntax = .rightParenToken(),
      _ unexpectedAfterRightParen: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeLeftParen, 
        leftParen: leftParen, 
        unexpectedBetweenLeftParenAndElementList, 
        elements: elementList, 
        unexpectedBetweenElementListAndRightParen, 
        rightParen: rightParen, 
        unexpectedAfterRightParen, 
        trailingTrivia: trailingTrivia
      )
  }
}
