@_spi(RawSyntax)
public struct RawAttributeSyntax: RawSyntaxNodeProtocol {
  public enum Arguments: RawSyntaxNodeProtocol {
    case `argumentList`(RawLabeledExprListSyntax)
    case `token`(RawTokenSyntax)
    case `string`(RawStringLiteralExprSyntax)
    case `availability`(RawAvailabilityArgumentListSyntax)
    case `specializeArguments`(RawSpecializeAttributeArgumentListSyntax)
    case `objCName`(RawObjCSelectorPieceListSyntax)
    case `implementsArguments`(RawImplementsAttributeArgumentsSyntax)
    case `differentiableArguments`(RawDifferentiableAttributeArgumentsSyntax)
    case `derivativeRegistrationArguments`(RawDerivativeAttributeArgumentsSyntax)
    case `backDeployedArguments`(RawBackDeployedAttributeArgumentsSyntax)
    case `conventionArguments`(RawConventionAttributeArgumentsSyntax)
    case `conventionWitnessMethodArguments`(RawConventionWitnessMethodAttributeArgumentsSyntax)
    case `opaqueReturnTypeOfAttributeArguments`(RawOpaqueReturnTypeOfAttributeArgumentsSyntax)
    case `exposeAttributeArguments`(RawExposeAttributeArgumentsSyntax)
    case `originallyDefinedInArguments`(RawOriginallyDefinedInAttributeArgumentsSyntax)
    case `underscorePrivateAttributeArguments`(RawUnderscorePrivateAttributeArgumentsSyntax)
    case `dynamicReplacementArguments`(RawDynamicReplacementAttributeArgumentsSyntax)
    case `unavailableFromAsyncArguments`(RawUnavailableFromAsyncAttributeArgumentsSyntax)
    case `effectsArguments`(RawEffectsAttributeArgumentListSyntax)
    case `documentationArguments`(RawDocumentationAttributeArgumentListSyntax)
    
    public static func isKindOf(_ raw: RawSyntax) -> Bool {
      return RawLabeledExprListSyntax.isKindOf(raw) || RawTokenSyntax.isKindOf(raw) || RawStringLiteralExprSyntax.isKindOf(raw) || RawAvailabilityArgumentListSyntax.isKindOf(raw) || RawSpecializeAttributeArgumentListSyntax.isKindOf(raw) || RawObjCSelectorPieceListSyntax.isKindOf(raw) || RawImplementsAttributeArgumentsSyntax.isKindOf(raw) || RawDifferentiableAttributeArgumentsSyntax.isKindOf(raw) || RawDerivativeAttributeArgumentsSyntax.isKindOf(raw) || RawBackDeployedAttributeArgumentsSyntax.isKindOf(raw) || RawConventionAttributeArgumentsSyntax.isKindOf(raw) || RawConventionWitnessMethodAttributeArgumentsSyntax.isKindOf(raw) || RawOpaqueReturnTypeOfAttributeArgumentsSyntax.isKindOf(raw) || RawExposeAttributeArgumentsSyntax.isKindOf(raw) || RawOriginallyDefinedInAttributeArgumentsSyntax.isKindOf(raw) || RawUnderscorePrivateAttributeArgumentsSyntax.isKindOf(raw) || RawDynamicReplacementAttributeArgumentsSyntax.isKindOf(raw) || RawUnavailableFromAsyncAttributeArgumentsSyntax.isKindOf(raw) || RawEffectsAttributeArgumentListSyntax.isKindOf(raw) || RawDocumentationAttributeArgumentListSyntax.isKindOf(raw)
    }
    
    public var raw: RawSyntax {
      switch self {
      case .argumentList(let node):
        return node.raw
      case .token(let node):
        return node.raw
      case .string(let node):
        return node.raw
      case .availability(let node):
        return node.raw
      case .specializeArguments(let node):
        return node.raw
      case .objCName(let node):
        return node.raw
      case .implementsArguments(let node):
        return node.raw
      case .differentiableArguments(let node):
        return node.raw
      case .derivativeRegistrationArguments(let node):
        return node.raw
      case .backDeployedArguments(let node):
        return node.raw
      case .conventionArguments(let node):
        return node.raw
      case .conventionWitnessMethodArguments(let node):
        return node.raw
      case .opaqueReturnTypeOfAttributeArguments(let node):
        return node.raw
      case .exposeAttributeArguments(let node):
        return node.raw
      case .originallyDefinedInArguments(let node):
        return node.raw
      case .underscorePrivateAttributeArguments(let node):
        return node.raw
      case .dynamicReplacementArguments(let node):
        return node.raw
      case .unavailableFromAsyncArguments(let node):
        return node.raw
      case .effectsArguments(let node):
        return node.raw
      case .documentationArguments(let node):
        return node.raw
      }
    }
    
    public init?(_ other: some RawSyntaxNodeProtocol) {
      if let node = RawLabeledExprListSyntax(other) {
        self = .argumentList(node)
        return
      }
      if let node = RawTokenSyntax(other) {
        self = .token(node)
        return
      }
      if let node = RawStringLiteralExprSyntax(other) {
        self = .string(node)
        return
      }
      if let node = RawAvailabilityArgumentListSyntax(other) {
        self = .availability(node)
        return
      }
      if let node = RawSpecializeAttributeArgumentListSyntax(other) {
        self = .specializeArguments(node)
        return
      }
      if let node = RawObjCSelectorPieceListSyntax(other) {
        self = .objCName(node)
        return
      }
      if let node = RawImplementsAttributeArgumentsSyntax(other) {
        self = .implementsArguments(node)
        return
      }
      if let node = RawDifferentiableAttributeArgumentsSyntax(other) {
        self = .differentiableArguments(node)
        return
      }
      if let node = RawDerivativeAttributeArgumentsSyntax(other) {
        self = .derivativeRegistrationArguments(node)
        return
      }
      if let node = RawBackDeployedAttributeArgumentsSyntax(other) {
        self = .backDeployedArguments(node)
        return
      }
      if let node = RawConventionAttributeArgumentsSyntax(other) {
        self = .conventionArguments(node)
        return
      }
      if let node = RawConventionWitnessMethodAttributeArgumentsSyntax(other) {
        self = .conventionWitnessMethodArguments(node)
        return
      }
      if let node = RawOpaqueReturnTypeOfAttributeArgumentsSyntax(other) {
        self = .opaqueReturnTypeOfAttributeArguments(node)
        return
      }
      if let node = RawExposeAttributeArgumentsSyntax(other) {
        self = .exposeAttributeArguments(node)
        return
      }
      if let node = RawOriginallyDefinedInAttributeArgumentsSyntax(other) {
        self = .originallyDefinedInArguments(node)
        return
      }
      if let node = RawUnderscorePrivateAttributeArgumentsSyntax(other) {
        self = .underscorePrivateAttributeArguments(node)
        return
      }
      if let node = RawDynamicReplacementAttributeArgumentsSyntax(other) {
        self = .dynamicReplacementArguments(node)
        return
      }
      if let node = RawUnavailableFromAsyncAttributeArgumentsSyntax(other) {
        self = .unavailableFromAsyncArguments(node)
        return
      }
      if let node = RawEffectsAttributeArgumentListSyntax(other) {
        self = .effectsArguments(node)
        return
      }
      if let node = RawDocumentationAttributeArgumentListSyntax(other) {
        self = .documentationArguments(node)
        return
      }
      return nil
    }
  }
  
  @_spi(RawSyntax)
  public var layoutView: RawSyntaxLayoutView {
    return raw.layoutView!
  }
  
  public static func isKindOf(_ raw: RawSyntax) -> Bool {
    return raw.kind == .attribute
  }
  
  public var raw: RawSyntax
  
  init(raw: RawSyntax) {
    precondition(Self.isKindOf(raw))
    self.raw = raw
  }
  
  private init(unchecked raw: RawSyntax) {
    self.raw = raw
  }
  
  public init?(_ other: some RawSyntaxNodeProtocol) {
    guard Self.isKindOf(other.raw) else {
      return nil
    }
    self.init(unchecked: other.raw)
  }
  
  public init(
      _ unexpectedBeforeAtSign: RawUnexpectedNodesSyntax? = nil, 
      atSign: RawTokenSyntax, 
      _ unexpectedBetweenAtSignAndAttributeName: RawUnexpectedNodesSyntax? = nil, 
      attributeName: RawTypeSyntax, 
      _ unexpectedBetweenAttributeNameAndLeftParen: RawUnexpectedNodesSyntax? = nil, 
      leftParen: RawTokenSyntax?, 
      _ unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? = nil, 
      arguments: Arguments?, 
      _ unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? = nil, 
      rightParen: RawTokenSyntax?, 
      _ unexpectedAfterRightParen: RawUnexpectedNodesSyntax? = nil, 
      arena: __shared SyntaxArena
    ) {
    let raw = RawSyntax.makeLayout(
      kind: .attribute, uninitializedCount: 11, arena: arena) { layout in
      layout.initialize(repeating: nil)
      layout[0] = unexpectedBeforeAtSign?.raw
      layout[1] = atSign.raw
      layout[2] = unexpectedBetweenAtSignAndAttributeName?.raw
      layout[3] = attributeName.raw
      layout[4] = unexpectedBetweenAttributeNameAndLeftParen?.raw
      layout[5] = leftParen?.raw
      layout[6] = unexpectedBetweenLeftParenAndArguments?.raw
      layout[7] = arguments?.raw
      layout[8] = unexpectedBetweenArgumentsAndRightParen?.raw
      layout[9] = rightParen?.raw
      layout[10] = unexpectedAfterRightParen?.raw
    }
    self.init(unchecked: raw)
  }
  
  public var unexpectedBeforeAtSign: RawUnexpectedNodesSyntax? {
    layoutView.children[0].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var atSign: RawTokenSyntax {
    layoutView.children[1].map(RawTokenSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAtSignAndAttributeName: RawUnexpectedNodesSyntax? {
    layoutView.children[2].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var attributeName: RawTypeSyntax {
    layoutView.children[3].map(RawTypeSyntax.init(raw:))!
  }
  
  public var unexpectedBetweenAttributeNameAndLeftParen: RawUnexpectedNodesSyntax? {
    layoutView.children[4].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var leftParen: RawTokenSyntax? {
    layoutView.children[5].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedBetweenLeftParenAndArguments: RawUnexpectedNodesSyntax? {
    layoutView.children[6].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var arguments: RawSyntax? {
    layoutView.children[7]
  }
  
  public var unexpectedBetweenArgumentsAndRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[8].map(RawUnexpectedNodesSyntax.init(raw:))
  }
  
  public var rightParen: RawTokenSyntax? {
    layoutView.children[9].map(RawTokenSyntax.init(raw:))
  }
  
  public var unexpectedAfterRightParen: RawUnexpectedNodesSyntax? {
    layoutView.children[10].map(RawUnexpectedNodesSyntax.init(raw:))
  }
}
