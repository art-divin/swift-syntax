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

extension KeyPathSubscriptComponentSyntax {
  @available(*, deprecated, renamed: "unexpectedBeforeLeftSquare")
  public var unexpectedBeforeLeftBracket: UnexpectedNodesSyntax? {
    get {
      return unexpectedBeforeLeftSquare
    }
    set {
      unexpectedBeforeLeftSquare = newValue
    }
  }
  
  @available(*, deprecated, renamed: "leftSquare")
  public var leftBracket: TokenSyntax {
    get {
      return leftSquare
    }
    set {
      leftSquare = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenLeftSquareAndArguments")
  public var unexpectedBetweenLeftBracketAndArgumentList: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenLeftSquareAndArguments
    }
    set {
      unexpectedBetweenLeftSquareAndArguments = newValue
    }
  }
  
  @available(*, deprecated, renamed: "arguments")
  public var argumentList: LabeledExprListSyntax {
    get {
      return arguments
    }
    set {
      arguments = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenArgumentsAndRightSquare")
  public var unexpectedBetweenArgumentListAndRightBracket: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenArgumentsAndRightSquare
    }
    set {
      unexpectedBetweenArgumentsAndRightSquare = newValue
    }
  }
  
  @available(*, deprecated, renamed: "rightSquare")
  public var rightBracket: TokenSyntax {
    get {
      return rightSquare
    }
    set {
      rightSquare = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterRightSquare")
  public var unexpectedAfterRightBracket: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterRightSquare
    }
    set {
      unexpectedAfterRightSquare = newValue
    }
  }
  
  @available(*, deprecated, renamed: "KeyPathSubscriptComponentSyntax(leadingTrivia:_:leftSquare:_:arguments:_:rightSquare:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeLeftBracket: UnexpectedNodesSyntax? = nil,
      leftBracket: TokenSyntax = .leftSquareToken(),
      _ unexpectedBetweenLeftBracketAndArgumentList: UnexpectedNodesSyntax? = nil,
      argumentList: LabeledExprListSyntax,
      _ unexpectedBetweenArgumentListAndRightBracket: UnexpectedNodesSyntax? = nil,
      rightBracket: TokenSyntax = .rightSquareToken(),
      _ unexpectedAfterRightBracket: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeLeftBracket, 
        leftSquare: leftBracket, 
        unexpectedBetweenLeftBracketAndArgumentList, 
        arguments: argumentList, 
        unexpectedBetweenArgumentListAndRightBracket, 
        rightSquare: rightBracket, 
        unexpectedAfterRightBracket, 
        trailingTrivia: trailingTrivia
      )
  }
}
