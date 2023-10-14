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

extension SwitchExprSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenSwitchKeywordAndSubject")
  public var unexpectedBetweenSwitchKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenSwitchKeywordAndSubject
    }
    set {
      unexpectedBetweenSwitchKeywordAndSubject = newValue
    }
  }
  
  @available(*, deprecated, renamed: "subject")
  public var expression: ExprSyntax {
    get {
      return subject
    }
    set {
      subject = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenSubjectAndLeftBrace")
  public var unexpectedBetweenExpressionAndLeftBrace: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenSubjectAndLeftBrace
    }
    set {
      unexpectedBetweenSubjectAndLeftBrace = newValue
    }
  }
  
  @available(*, deprecated, renamed: "SwitchExprSyntax(leadingTrivia:_:switchKeyword:_:subject:_:leftBrace:_:cases:_:rightBrace:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeSwitchKeyword: UnexpectedNodesSyntax? = nil,
      switchKeyword: TokenSyntax = .keyword(.switch),
      _ unexpectedBetweenSwitchKeywordAndExpression: UnexpectedNodesSyntax? = nil,
      expression: some ExprSyntaxProtocol,
      _ unexpectedBetweenExpressionAndLeftBrace: UnexpectedNodesSyntax? = nil,
      leftBrace: TokenSyntax = .leftBraceToken(),
      _ unexpectedBetweenLeftBraceAndCases: UnexpectedNodesSyntax? = nil,
      cases: SwitchCaseListSyntax,
      _ unexpectedBetweenCasesAndRightBrace: UnexpectedNodesSyntax? = nil,
      rightBrace: TokenSyntax = .rightBraceToken(),
      _ unexpectedAfterRightBrace: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeSwitchKeyword, 
        switchKeyword: switchKeyword, 
        unexpectedBetweenSwitchKeywordAndExpression, 
        subject: expression, 
        unexpectedBetweenExpressionAndLeftBrace, 
        leftBrace: leftBrace, 
        unexpectedBetweenLeftBraceAndCases, 
        cases: cases, 
        unexpectedBetweenCasesAndRightBrace, 
        rightBrace: rightBrace, 
        unexpectedAfterRightBrace, 
        trailingTrivia: trailingTrivia
      )
  }
}
