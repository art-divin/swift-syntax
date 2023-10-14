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

extension DifferentiabilityWithRespectToArgumentSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenColonAndArguments")
  public var unexpectedBetweenColonAndParameters: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenColonAndArguments
    }
    set {
      unexpectedBetweenColonAndArguments = newValue
    }
  }
  
  @available(*, deprecated, renamed: "arguments")
  public var parameters: Arguments {
    get {
      return arguments
    }
    set {
      arguments = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterArguments")
  public var unexpectedAfterParameters: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterArguments
    }
    set {
      unexpectedAfterArguments = newValue
    }
  }
  
  @available(*, deprecated, renamed: "DifferentiabilityWithRespectToArgumentSyntax(leadingTrivia:_:wrtLabel:_:colon:_:arguments:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeWrtLabel: UnexpectedNodesSyntax? = nil,
      wrtLabel: TokenSyntax = .keyword(.wrt),
      _ unexpectedBetweenWrtLabelAndColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax = .colonToken(),
      _ unexpectedBetweenColonAndParameters: UnexpectedNodesSyntax? = nil,
      parameters: Arguments,
      _ unexpectedAfterParameters: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeWrtLabel, 
        wrtLabel: wrtLabel, 
        unexpectedBetweenWrtLabelAndColon, 
        colon: colon, 
        unexpectedBetweenColonAndParameters, 
        arguments: parameters, 
        unexpectedAfterParameters, 
        trailingTrivia: trailingTrivia
      )
  }
}
