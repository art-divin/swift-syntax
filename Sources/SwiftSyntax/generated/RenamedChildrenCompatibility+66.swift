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

extension MetatypeTypeSyntax {
  @available(*, deprecated, renamed: "unexpectedBetweenPeriodAndMetatypeSpecifier")
  public var unexpectedBetweenPeriodAndTypeOrProtocol: UnexpectedNodesSyntax? {
    get {
      return unexpectedBetweenPeriodAndMetatypeSpecifier
    }
    set {
      unexpectedBetweenPeriodAndMetatypeSpecifier = newValue
    }
  }
  
  @available(*, deprecated, renamed: "metatypeSpecifier")
  public var typeOrProtocol: TokenSyntax {
    get {
      return metatypeSpecifier
    }
    set {
      metatypeSpecifier = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterMetatypeSpecifier")
  public var unexpectedAfterTypeOrProtocol: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterMetatypeSpecifier
    }
    set {
      unexpectedAfterMetatypeSpecifier = newValue
    }
  }
  
  @available(*, deprecated, renamed: "MetatypeTypeSyntax(leadingTrivia:_:baseType:_:period:_:metatypeSpecifier:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeBaseType: UnexpectedNodesSyntax? = nil,
      baseType: some TypeSyntaxProtocol,
      _ unexpectedBetweenBaseTypeAndPeriod: UnexpectedNodesSyntax? = nil,
      period: TokenSyntax = .periodToken(),
      _ unexpectedBetweenPeriodAndTypeOrProtocol: UnexpectedNodesSyntax? = nil,
      typeOrProtocol: TokenSyntax,
      _ unexpectedAfterTypeOrProtocol: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeBaseType, 
        baseType: baseType, 
        unexpectedBetweenBaseTypeAndPeriod, 
        period: period, 
        unexpectedBetweenPeriodAndTypeOrProtocol, 
        metatypeSpecifier: typeOrProtocol, 
        unexpectedAfterTypeOrProtocol, 
        trailingTrivia: trailingTrivia
      )
  }
}
