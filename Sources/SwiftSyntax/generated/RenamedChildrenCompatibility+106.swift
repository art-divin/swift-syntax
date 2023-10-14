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

extension UnresolvedIsExprSyntax {
  @available(*, deprecated, renamed: "unexpectedBeforeIsKeyword")
  public var unexpectedBeforeIsTok: UnexpectedNodesSyntax? {
    get {
      return unexpectedBeforeIsKeyword
    }
    set {
      unexpectedBeforeIsKeyword = newValue
    }
  }
  
  @available(*, deprecated, renamed: "isKeyword")
  public var isTok: TokenSyntax {
    get {
      return isKeyword
    }
    set {
      isKeyword = newValue
    }
  }
  
  @available(*, deprecated, renamed: "unexpectedAfterIsKeyword")
  public var unexpectedAfterIsTok: UnexpectedNodesSyntax? {
    get {
      return unexpectedAfterIsKeyword
    }
    set {
      unexpectedAfterIsKeyword = newValue
    }
  }
  
  @available(*, deprecated, renamed: "UnresolvedIsExprSyntax(leadingTrivia:_:isKeyword:_:trailingTrivia:)")
  @_disfavoredOverload
  public init(
      leadingTrivia: Trivia? = nil,
      _ unexpectedBeforeIsTok: UnexpectedNodesSyntax? = nil,
      isTok: TokenSyntax = .keyword(.is),
      _ unexpectedAfterIsTok: UnexpectedNodesSyntax? = nil,
      trailingTrivia: Trivia? = nil
    
  ) {
    self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeIsTok, 
        isKeyword: isTok, 
        unexpectedAfterIsTok, 
        trailingTrivia: trailingTrivia
      )
  }
}
