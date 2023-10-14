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

extension ForStmtSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenInKeywordAndSequence")
  public var unexpectedBetweenInKeywordAndSequenceExpr: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenInKeywordAndSequence
    }
    set {
      unexpectedBetweenInKeywordAndSequence = newValue
    }
  }
  
  @available(*, deprecated, renamed: "sequence")
  public var sequenceExpr: ExprSyntax {
    get {
      return sequence
    }
    set {
      sequence = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenSequenceAndWhereClause")
  public var unexpectedBetweenSequenceExprAndWhereClause: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenSequenceAndWhereClause
    }
    set {
      unexpectedBetweenSequenceAndWhereClause = newValue
    }
  }
  
  @available(*, deprecated, renamed: "ForStmtSyntax(leadingTrivia:_:forKeyword:_:tryKeyword:_:awaitKeyword:_:caseKeyword:_:pattern:_:typeAnnotation:_:inKeyword:_:sequence:_:whereClause:_:body:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeForKeyword: UnexpectedNodesSyntax? = nil,
      forKeyword: TokenSyntax = .keyword(.for),
      _ unexpectedBetweenForKeywordAndTryKeyword: UnexpectedNodesSyntax? = nil,
      tryKeyword: TokenSyntax? = nil,
      _ unexpectedBetweenTryKeywordAndAwaitKeyword: UnexpectedNodesSyntax? = nil,
      awaitKeyword: TokenSyntax? = nil,
      _ unexpectedBetweenAwaitKeywordAndCaseKeyword: UnexpectedNodesSyntax? = nil,
      caseKeyword: TokenSyntax? = nil,
      _ unexpectedBetweenCaseKeywordAndPattern: UnexpectedNodesSyntax? = nil,
      pattern: some PatternSyntaxProtocol,
      _ unexpectedBetweenPatternAndTypeAnnotation: UnexpectedNodesSyntax? = nil,
      typeAnnotation: TypeAnnotationSyntax? = nil,
      _ unexpectedBetweenTypeAnnotationAndInKeyword: UnexpectedNodesSyntax? = nil,
      inKeyword: TokenSyntax = .keyword(.in),
      _ unexpectedBetweenInKeywordAndSequenceExpr: UnexpectedNodesSyntax? = nil,
      sequenceExpr: some ExprSyntaxProtocol,
      _ unexpectedBetweenSequenceExprAndWhereClause: UnexpectedNodesSyntax? = nil,
      whereClause: WhereClauseSyntax? = nil,
      _ unexpectedBetweenWhereClauseAndBody: UnexpectedNodesSyntax? = nil,
      body: CodeBlockSyntax,
      _ unexpectedAfterBody: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeForKeyword, 
        forKeyword: forKeyword, 
        unexpectedBetweenForKeywordAndTryKeyword, 
        tryKeyword: tryKeyword, 
        unexpectedBetweenTryKeywordAndAwaitKeyword, 
        awaitKeyword: awaitKeyword, 
        unexpectedBetweenAwaitKeywordAndCaseKeyword, 
        caseKeyword: caseKeyword, 
        unexpectedBetweenCaseKeywordAndPattern, 
        pattern: pattern, 
        unexpectedBetweenPatternAndTypeAnnotation, 
        typeAnnotation: typeAnnotation, 
        unexpectedBetweenTypeAnnotationAndInKeyword, 
        inKeyword: inKeyword, 
        unexpectedBetweenInKeywordAndSequenceExpr, 
        sequence: sequenceExpr, 
        unexpectedBetweenSequenceExprAndWhereClause, 
        whereClause: whereClause, 
        unexpectedBetweenWhereClauseAndBody, 
        body: body, 
        unexpectedAfterBody, 
        trailingTrivia: trailingTrivia
      )
  }
}
