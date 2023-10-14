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

extension EnumCaseParameterSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenTypeAndDefaultValue")
  public var unexpectedBetweenTypeAndDefaultArgument: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenTypeAndDefaultValue
    }
    set {
      unexpectedBetweenTypeAndDefaultValue = newValue
    }
  }
  
  @available(*, deprecated, renamed: "defaultValue")
  public var defaultArgument: InitializerClauseSyntax? {
    get {
      return defaultValue
    }
    set {
      defaultValue = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedBetweenDefaultValueAndTrailingComma")
  public var unexpectedBetweenDefaultArgumentAndTrailingComma: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenDefaultValueAndTrailingComma
    }
    set {
      unexpectedBetweenDefaultValueAndTrailingComma = newValue
    }
  }
  
  @available(*, deprecated, renamed: "EnumCaseParameterSyntax(leadingTrivia:_:modifiers:_:firstName:_:secondName:_:colon:_:type:_:defaultValue:_:trailingComma:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeModifiers: UnexpectedNodesSyntax? = nil,
      modifiers: DeclModifierListSyntax = [],
      _ unexpectedBetweenModifiersAndFirstName: UnexpectedNodesSyntax? = nil,
      firstName: TokenSyntax? = nil,
      _ unexpectedBetweenFirstNameAndSecondName: UnexpectedNodesSyntax? = nil,
      secondName: TokenSyntax? = nil,
      _ unexpectedBetweenSecondNameAndColon: UnexpectedNodesSyntax? = nil,
      colon: TokenSyntax? = nil,
      _ unexpectedBetweenColonAndType: UnexpectedNodesSyntax? = nil,
      type: some TypeSyntaxProtocol,
      _ unexpectedBetweenTypeAndDefaultArgument: UnexpectedNodesSyntax? = nil,
      defaultArgument: InitializerClauseSyntax? = nil,
      _ unexpectedBetweenDefaultArgumentAndTrailingComma: UnexpectedNodesSyntax? = nil,
      trailingComma: TokenSyntax? = nil,
      _ unexpectedAfterTrailingComma: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeModifiers, 
        modifiers: modifiers, 
        unexpectedBetweenModifiersAndFirstName, 
        firstName: firstName, 
        unexpectedBetweenFirstNameAndSecondName, 
        secondName: secondName, 
        unexpectedBetweenSecondNameAndColon, 
        colon: colon, 
        unexpectedBetweenColonAndType, 
        type: type, 
        unexpectedBetweenTypeAndDefaultArgument, 
        defaultValue: defaultArgument, 
        unexpectedBetweenDefaultArgumentAndTrailingComma, 
        trailingComma: trailingComma, 
        unexpectedAfterTrailingComma, 
        trailingTrivia: trailingTrivia
      )
  }
}
