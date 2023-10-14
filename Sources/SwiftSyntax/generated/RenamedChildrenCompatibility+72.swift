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

extension PackExpansionExprSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenRepeatKeywordAndRepetitionPattern")
  public var unexpectedBetweenRepeatKeywordAndPatternExpr: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenRepeatKeywordAndRepetitionPattern
    }
    set {
      unexpectedBetweenRepeatKeywordAndRepetitionPattern = newValue
    }
  }
  
  @available(*, deprecated, renamed: "repetitionPattern")
  public var patternExpr: ExprSyntax {
    get {
      return repetitionPattern
    }
    set {
      repetitionPattern = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterRepetitionPattern")
  public var unexpectedAfterPatternExpr: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterRepetitionPattern
    }
    set {
      unexpectedAfterRepetitionPattern = newValue
    }
  }
  
  @available(*, deprecated, renamed: "PackExpansionExprSyntax(leadingTrivia:_:repeatKeyword:_:repetitionPattern:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeRepeatKeyword: UnexpectedNodesSyntax? = nil,
      repeatKeyword: TokenSyntax = .keyword(.repeat),
      _ unexpectedBetweenRepeatKeywordAndPatternExpr: UnexpectedNodesSyntax? = nil,
      patternExpr: some ExprSyntaxProtocol,
      _ unexpectedAfterPatternExpr: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeRepeatKeyword, 
        repeatKeyword: repeatKeyword, 
        unexpectedBetweenRepeatKeywordAndPatternExpr, 
        repetitionPattern: patternExpr, 
        unexpectedAfterPatternExpr, 
        trailingTrivia: trailingTrivia
      )
  }
}
