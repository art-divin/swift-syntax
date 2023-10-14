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

extension PrecedenceGroupAssignmentSyntax {
  @available(*, deprecated, renamed: "unexpectedBeforeAssignmentLabel")
  public var unexpectedBeforeAssignmentKeyword: UnexpectedNodesSyntax? {
    get {
      return unexpectedBeforeAssignmentLabel
    }
    set {
      unexpectedBeforeAssignmentLabel = newValue
    }
  }
  
  @available(*, deprecated, renamed: "assignmentLabel")
  public var assignmentKeyword: TokenSyntax {
    get {
      return assignmentLabel
    }
    set {
      assignmentLabel = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenAssignmentLabelAndColon")
  public var unexpectedBetweenAssignmentKeywordAndColon: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenAssignmentLabelAndColon
    }
    set {
      unexpectedBetweenAssignmentLabelAndColon = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenColonAndValue")
  public var unexpectedBetweenColonAndFlag: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenColonAndValue
    }
    set {
      unexpectedBetweenColonAndValue = newValue
    }
  }
  
  @available(*, deprecated, renamed: "value")
  public var flag: TokenSyntax {
    get {
      return value
    }
    set {
      value = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterValue")
  public var unexpectedAfterFlag: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterValue
    }
    set {
      unexpectedAfterValue = newValue
    }
  }
  
  @available(*, deprecated, renamed: "PrecedenceGroupAssignmentSyntax(leadingTrivia:_:assignmentLabel:_:colon:_:value:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeAssignmentKeyword: UnexpectedNodesSyntax? = nil,
      assignmentKeyword: TokenSyntax = .keyword(.assignment),
      _ unexpectedBetweenAssignmentKeywordAndColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax = .colonToken(),
      _ unexpectedBetweenColonAndFlag: UnexpectedNodesSyntax? = nil,
      flag: TokenSyntax,
      _ unexpectedAfterFlag: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeAssignmentKeyword, 
        assignmentLabel: assignmentKeyword, 
        unexpectedBetweenAssignmentKeywordAndColon, 
        colon: colon, 
        unexpectedBetweenColonAndFlag, 
        value: flag, 
        unexpectedAfterFlag, 
        trailingTrivia: trailingTrivia
      )
  }
}
