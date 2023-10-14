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

extension PostfixOperatorExprSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenExpressionAndOperator")
  public var unexpectedBetweenExpressionAndOperatorToken: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenExpressionAndOperator
    }
    set {
      unexpectedBetweenExpressionAndOperator = newValue
    }
  }
  
  @available(*, deprecated, renamed: "operator")
  public var operatorToken: TokenSyntax {
    get {
      return `operator`
    }
    set {
      `operator` = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterOperator")
  public var unexpectedAfterOperatorToken: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterOperator
    }
    set {
      unexpectedAfterOperator = newValue
    }
  }
  
  @available(*, deprecated, renamed: "PostfixOperatorExprSyntax(leadingTrivia:_:expression:_:operator:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
      expression: some ExprSyntaxProtocol,
      _ unexpectedBetweenExpressionAndOperatorToken: UnexpectedNodesSyntax? = nil,
      operatorToken: TokenSyntax,
      _ unexpectedAfterOperatorToken: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeExpression, 
        expression: expression, 
        unexpectedBetweenExpressionAndOperatorToken, 
        operator: operatorToken, 
        unexpectedAfterOperatorToken, 
        trailingTrivia: trailingTrivia
      )
  }
}
