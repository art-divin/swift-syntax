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

extension DictionaryElementSyntax {
  @available(*, deprecated, renamed: "unexpectedBeforeKey")
  public var unexpectedBeforeKeyExpression: UnexpectedNodesSyntax? {
    get {
      return unexpectedBeforeKey
    }
    set {
      unexpectedBeforeKey = newValue
    }
  }
  
  @available(*, deprecated, renamed: "key")
  public var keyExpression: ExprSyntax {
    get {
      return key
    }
    set {
      key = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenKeyAndColon")
  public var unexpectedBetweenKeyExpressionAndColon: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenKeyAndColon
    }
    set {
      unexpectedBetweenKeyAndColon = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenColonAndValue")
  public var unexpectedBetweenColonAndValueExpression: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenColonAndValue
    }
    set {
      unexpectedBetweenColonAndValue = newValue
    }
  }
  
  @available(*, deprecated, renamed: "value")
  public var valueExpression: ExprSyntax {
    get {
      return value
    }
    set {
      value = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenValueAndTrailingComma")
  public var unexpectedBetweenValueExpressionAndTrailingComma: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenValueAndTrailingComma
    }
    set {
      unexpectedBetweenValueAndTrailingComma = newValue
    }
  }
  
  @available(*, deprecated, renamed: "DictionaryElementSyntax(leadingTrivia:_:key:_:colon:_:value:_:trailingComma:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeKeyExpression: UnexpectedNodesSyntax? = nil,
      keyExpression: some ExprSyntaxProtocol,
      _ unexpectedBetweenKeyExpressionAndColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax = .colonToken(),
      _ unexpectedBetweenColonAndValueExpression: UnexpectedNodesSyntax? = nil,
      valueExpression: some ExprSyntaxProtocol,
      _ unexpectedBetweenValueExpressionAndTrailingComma: UnexpectedNodesSyntax? = nil,
      trailingComma: TokenSyntax? = nil,
      _ unexpectedAfterTrailingComma: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeKeyExpression, 
        key: keyExpression, 
        unexpectedBetweenKeyExpressionAndColon, 
        colon: colon, 
        unexpectedBetweenColonAndValueExpression, 
        value: valueExpression, 
        unexpectedBetweenValueExpressionAndTrailingComma, 
        trailingComma: trailingComma, 
        unexpectedAfterTrailingComma, 
        trailingTrivia: trailingTrivia
      )
  }
}
