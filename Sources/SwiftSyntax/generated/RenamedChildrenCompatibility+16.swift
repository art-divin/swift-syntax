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

extension ClosureCaptureSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenNameAndEqual")
  public var unexpectedBetweenNameAndAssignToken: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenNameAndEqual
    }
    set {
      unexpectedBetweenNameAndEqual = newValue
    }
  }
  
  @available(*, deprecated, renamed: "equal")
  public var assignToken: TokenSyntax? {
    get {
      return equal
    }
    set {
      equal = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenEqualAndExpression")
  public var unexpectedBetweenAssignTokenAndExpression: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenEqualAndExpression
    }
    set {
      unexpectedBetweenEqualAndExpression = newValue
    }
  }
  
  @available(*, deprecated, renamed: "ClosureCaptureSyntax(leadingTrivia:_:specifier:_:name:_:equal:_:expression:_:trailingComma:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeSpecifier: UnexpectedNodesSyntax? = nil,
      specifier: ClosureCaptureSpecifierSyntax? = nil,
      _ unexpectedBetweenSpecifierAndName: UnexpectedNodesSyntax? = nil,
      name: TokenSyntax? = nil,
      _ unexpectedBetweenNameAndAssignToken: UnexpectedNodesSyntax? = nil,
      assignToken: TokenSyntax? = nil,
      _ unexpectedBetweenAssignTokenAndExpression: UnexpectedNodesSyntax? = nil,
      expression: some ExprSyntaxProtocol,
      _ unexpectedBetweenExpressionAndTrailingComma: UnexpectedNodesSyntax? = nil,
      trailingComma: TokenSyntax? = nil,
      _ unexpectedAfterTrailingComma: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeSpecifier, 
        specifier: specifier, 
        unexpectedBetweenSpecifierAndName, 
        name: name, 
        unexpectedBetweenNameAndAssignToken, 
        equal: assignToken, 
        unexpectedBetweenAssignTokenAndExpression, 
        expression: expression, 
        unexpectedBetweenExpressionAndTrailingComma, 
        trailingComma: trailingComma, 
        unexpectedAfterTrailingComma, 
        trailingTrivia: trailingTrivia
      )
  }
}
