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

extension AsExprSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenExpressionAndAsKeyword")
  public var unexpectedBetweenExpressionAndAsTok: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenExpressionAndAsKeyword
    }
    set {
      unexpectedBetweenExpressionAndAsKeyword = newValue
    }
  }
  
  @available(*, deprecated, renamed: "asKeyword")
  public var asTok: TokenSyntax {
    get {
      return asKeyword
    }
    set {
      asKeyword = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenAsKeywordAndQuestionOrExclamationMark")
  public var unexpectedBetweenAsTokAndQuestionOrExclamationMark: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenAsKeywordAndQuestionOrExclamationMark
    }
    set {
      unexpectedBetweenAsKeywordAndQuestionOrExclamationMark = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenQuestionOrExclamationMarkAndType")
  public var unexpectedBetweenQuestionOrExclamationMarkAndTypeName: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenQuestionOrExclamationMarkAndType
    }
    set {
      unexpectedBetweenQuestionOrExclamationMarkAndType = newValue
    }
  }
  
  @available(*, deprecated, renamed: "type")
  public var typeName: TypeSyntax {
    get {
      return type
    }
    set {
      type = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterType")
  public var unexpectedAfterTypeName: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterType
    }
    set {
      unexpectedAfterType = newValue
    }
  }
  
  @available(*, deprecated, renamed: "AsExprSyntax(leadingTrivia:_:expression:_:asKeyword:_:questionOrExclamationMark:_:type:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
      expression: some ExprSyntaxProtocol,
      _ unexpectedBetweenExpressionAndAsTok: UnexpectedNodesSyntax? = nil,
      asTok: TokenSyntax = .keyword(.as),
      _ unexpectedBetweenAsTokAndQuestionOrExclamationMark: UnexpectedNodesSyntax? = nil,
      questionOrExclamationMark: TokenSyntax? = nil,
      _ unexpectedBetweenQuestionOrExclamationMarkAndTypeName: UnexpectedNodesSyntax? = nil,
      typeName: some TypeSyntaxProtocol,
      _ unexpectedAfterTypeName: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeExpression, 
        expression: expression, 
        unexpectedBetweenExpressionAndAsTok, 
        asKeyword: asTok, 
        unexpectedBetweenAsTokAndQuestionOrExclamationMark, 
        questionOrExclamationMark: questionOrExclamationMark, 
        unexpectedBetweenQuestionOrExclamationMarkAndTypeName, 
        type: typeName, 
        unexpectedAfterTypeName, 
        trailingTrivia: trailingTrivia
      )
  }
}
