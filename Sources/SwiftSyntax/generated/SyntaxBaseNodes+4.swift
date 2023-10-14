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

// MARK: - TypeSyntax

/// Protocol to which all ``TypeSyntax`` nodes conform.
///
/// Extension point to add common methods to all ``TypeSyntax`` nodes.
///
///  - Warning: Do not conform to this protocol yourself.
public protocol TypeSyntaxProtocol: SyntaxProtocol {}

/// Extension of ``TypeSyntaxProtocol`` to provide casting methods.
///
/// These methods enable casting between syntax node types within the same
/// base node protocol hierarchy (e.g., ``DeclSyntaxProtocol``).
///
/// While ``SyntaxProtocol`` offers general casting methods (``SyntaxProtocol.as(_:)``,
/// ``SyntaxProtocol.is(_:)``, and ``SyntaxProtocol.cast(_:)``), these often aren't
/// appropriate for use on types conforming to a specific base node protocol
/// like ``TypeSyntaxProtocol``. That's because at this level,
/// we know that the cast to another base node type (e.g., ``DeclSyntaxProtocol``
/// when working with ``ExprSyntaxProtocol``) is guaranteed to fail.
///
/// To guide developers toward correct usage, this extension provides overloads
/// of these casting methods that are restricted to the same base node type.
/// Furthermore, it marks the inherited casting methods from ``SyntaxProtocol`` as
/// deprecated, indicating that they will always fail when used in this context.
extension TypeSyntaxProtocol {
  /// Checks if the current syntax node can be cast to a given specialized syntax type.
  ///
  /// - Returns: `true` if the node can be cast, `false` otherwise.
  public func `is`<S: TypeSyntaxProtocol>(_ syntaxType: S.Type) -> Bool {
    return self.as(syntaxType) != nil
  }
  

  /// Attempts to cast the current syntax node to a given specialized syntax type.
  ///
  /// - Returns: An instance of the specialized type, or `nil` if the cast fails.
  public func `as`<S: TypeSyntaxProtocol>(_ syntaxType: S.Type) -> S? {
    return S.init(self)
  }
  

  /// Force-casts the current syntax node to a given specialized syntax type.
  ///
  /// - Returns: An instance of the specialized type.
  /// - Warning: This function will crash if the cast is not possible. Use `as` to safely attempt a cast.
  public func cast<S: TypeSyntaxProtocol>(_ syntaxType: S.Type) -> S {
    return self.as(S.self)!
  }
  

  /// Checks if the current syntax node can be upcast to its base node type (``TypeSyntax``).
  ///
  /// - Returns: `true` since the node can always be upcast to its base node.
  ///
  /// - Note: This method overloads the general `is` method and is marked deprecated to produce a warning
  ///         informing the user that the upcast will always succeed.
  @available(*, deprecated, message: "This cast will always succeed")
  public func `is`(_ syntaxType: TypeSyntax.Type) -> Bool {
    return true
  }
  

  /// Attempts to upcast the current syntax node to its base node type (``TypeSyntax``).
  ///
  /// - Returns: The base node created from the current syntax node, as the node can always be upcast to its base type.
  ///
  /// - Note: This method overloads the general `as` method and is marked deprecated to produce a warning
  ///         informing the user the upcast should be performed using the target base node's initializer.
  @available(*, deprecated, message: "Use `TypeSyntax.init` for upcasting")
  public func `as`(_ syntaxType: TypeSyntax.Type) -> TypeSyntax? {
    return TypeSyntax(self)
  }
  

  /// Force-upcast the current syntax node to its base node type (``TypeSyntax``).
  ///
  /// - Returns: The base node created from the current syntax node, as the node can always be upcast to its base type.
  ///
  /// - Note: This method overloads the general `as` method and is marked deprecated to produce a warning
  ///         informing the user the upcast should be performed using the target base node's initializer.
  @available(*, deprecated, message: "Use `TypeSyntax.init` for upcasting")
  public func cast(_ syntaxType: TypeSyntax.Type) -> TypeSyntax {
    return TypeSyntax(self)
  }
  

  /// Checks if the current syntax node can be cast to a given node type from the different base node protocol hierarchy than ``TypeSyntaxProtocol``.
  ///
  /// - Returns: `false` since the node can not be cast to the node type from different base node protocol hierarchy than ``TypeSyntaxProtocol``.
  ///
  /// - Note: This method overloads the general `is` method and is marked as deprecated to produce a warning,
  ///         informing the user that the cast will always fail.
  @available(*, deprecated, message: "This cast will always fail")
  public func `is`<S: SyntaxProtocol>(_ syntaxType: S.Type) -> Bool {
    return false
  }
  

  /// Attempts to cast the current syntax node to a given node type from the different base node protocol hierarchy than ``TypeSyntaxProtocol``.
  ///
  /// - Returns: `nil` since the node can not be cast to the node type from different base node protocol hierarchy than ``TypeSyntaxProtocol``.
  ///
  /// - Note: This method overloads the general `as` method and is marked as deprecated to produce a warning,
  ///         informing the user that the cast will always fail.
  @available(*, deprecated, message: "This cast will always fail")
  public func `as`<S: SyntaxProtocol>(_ syntaxType: S.Type) -> S? {
    return nil
  }
  

  /// Force-casts the current syntax node to a given node type from the different base node protocol hierarchy than ``TypeSyntaxProtocol``.
  ///
  /// - Returns: This method will always trigger a runtime crash and never return.
  ///
  /// - Note: This method overloads the general `cast` method and is marked as deprecated to produce a warning,
  ///         informing the user that the cast will always fail.
  /// - Warning: Invoking this method will lead to a fatal error.
  @available(*, deprecated, message: "This cast will always fail")
  public func cast<S: SyntaxProtocol>(_ syntaxType: S.Type) -> S {
    fatalError("\(Self.self) cannot be cast to \(S.self)")
  }
}

public extension Syntax {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// TypeSyntaxProtocol.
  ///
  ///  - Note:  This will incur an existential conversion.
  func isProtocol(_: TypeSyntaxProtocol.Protocol) -> Bool {
    return self.asProtocol(TypeSyntaxProtocol.self) != nil
  }
  
  /// Return the non-type erased version of this syntax node if it conforms to
  /// TypeSyntaxProtocol. Otherwise return nil.
  ///
  ///  - Note:  This will incur an existential conversion.
  func asProtocol(_: TypeSyntaxProtocol.Protocol) -> TypeSyntaxProtocol? {
    return self.asProtocol(SyntaxProtocol.self) as? TypeSyntaxProtocol
  }
}

/// ### Subtypes
/// 
/// - ``ArrayTypeSyntax``
/// - ``AttributedTypeSyntax``
/// - ``ClassRestrictionTypeSyntax``
/// - ``CompositionTypeSyntax``
/// - ``DictionaryTypeSyntax``
/// - ``FunctionTypeSyntax``
/// - ``IdentifierTypeSyntax``
/// - ``ImplicitlyUnwrappedOptionalTypeSyntax``
/// - ``MemberTypeSyntax``
/// - ``MetatypeTypeSyntax``
/// - ``MissingTypeSyntax``
/// - ``NamedOpaqueReturnTypeSyntax``
/// - ``OptionalTypeSyntax``
/// - ``PackElementTypeSyntax``
/// - ``PackExpansionTypeSyntax``
/// - ``SomeOrAnyTypeSyntax``
/// - ``SuppressedTypeSyntax``
/// - ``TupleTypeSyntax``
public struct TypeSyntax: TypeSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax
  
  /// Create a ``TypeSyntax`` node from a specialized syntax node.
  public init(_ syntax: some TypeSyntaxProtocol) {
    // We know this cast is going to succeed. Go through init(_: SyntaxData)
    // to do a sanity check and verify the kind matches in debug builds and get
    // maximum performance in release builds.
    self = Syntax(syntax).cast(Self.self)
  }
  
  /// Create a ``TypeSyntax`` node from a specialized optional syntax node.
  public init?(_ syntax: (some TypeSyntaxProtocol)?) {
    guard let syntax = syntax else {
      return nil
    }
    self.init(syntax)
  }
  
  public init(fromProtocol syntax: TypeSyntaxProtocol) {
    // We know this cast is going to succeed. Go through init(_: SyntaxData)
    // to do a sanity check and verify the kind matches in debug builds and get
    // maximum performance in release builds.
    self = Syntax(syntax).cast(Self.self)
  }
  
  /// Create a ``TypeSyntax`` node from a specialized optional syntax node.
  public init?(fromProtocol syntax: TypeSyntaxProtocol?) {
    guard let syntax = syntax else {
      return nil
    }
    self.init(fromProtocol: syntax)
  }
  
  public init?(_ node: some SyntaxProtocol) {
    switch node.raw.kind {
    case .arrayType, .attributedType, .classRestrictionType, .compositionType, .dictionaryType, .functionType, .identifierType, .implicitlyUnwrappedOptionalType, .memberType, .metatypeType, .missingType, .namedOpaqueReturnType, .optionalType, .packElementType, .packExpansionType, .someOrAnyType, .suppressedType, .tupleType:
      self._syntaxNode = node._syntaxNode
    default:
      return nil
    }
  }
  
  /// Syntax nodes always conform to `TypeSyntaxProtocol`. This API is just
  /// added for consistency.
  ///
  ///  - Note:  This will incur an existential conversion.
  @available(*, deprecated, message: "Expression always evaluates to true")
  public func isProtocol(_: TypeSyntaxProtocol.Protocol) -> Bool {
    return true
  }
  
  /// Return the non-type erased version of this syntax node.
  ///
  ///  - Note:  This will incur an existential conversion.
  public func asProtocol(_: TypeSyntaxProtocol.Protocol) -> TypeSyntaxProtocol {
    return Syntax(self).asProtocol(TypeSyntaxProtocol.self)!
  }
  
  public static var structure: SyntaxNodeStructure {
    return .choices([
          .node(ArrayTypeSyntax.self),
          .node(AttributedTypeSyntax.self),
          .node(ClassRestrictionTypeSyntax.self),
          .node(CompositionTypeSyntax.self),
          .node(DictionaryTypeSyntax.self),
          .node(FunctionTypeSyntax.self),
          .node(IdentifierTypeSyntax.self),
          .node(ImplicitlyUnwrappedOptionalTypeSyntax.self),
          .node(MemberTypeSyntax.self),
          .node(MetatypeTypeSyntax.self),
          .node(MissingTypeSyntax.self),
          .node(NamedOpaqueReturnTypeSyntax.self),
          .node(OptionalTypeSyntax.self),
          .node(PackElementTypeSyntax.self),
          .node(PackExpansionTypeSyntax.self),
          .node(SomeOrAnyTypeSyntax.self),
          .node(SuppressedTypeSyntax.self),
          .node(TupleTypeSyntax.self)
        ])
  }
}

/// Protocol that syntax nodes conform to if they don't have any semantic subtypes.
/// These are syntax nodes that are not considered base nodes for other syntax types.
///
/// Syntax nodes conforming to this protocol have their inherited casting methods
/// deprecated to prevent incorrect casting.
public protocol _LeafTypeSyntaxNodeProtocol: TypeSyntaxProtocol {}

public extension _LeafTypeSyntaxNodeProtocol {
  /// Checks if the current leaf syntax node can be cast to a different specified type.
  ///
  /// - Returns: `false` since the leaf node cannot be cast to a different specified type.
  ///
  /// - Note: This method overloads the general `is` method and is marked as deprecated to produce a warning,
  ///         informing the user that the cast will always fail.
  @available(*, deprecated, message: "This cast will always fail")
  func `is`<S: TypeSyntaxProtocol>(_ syntaxType: S.Type) -> Bool {
    return false
  }
  

  /// Attempts to cast the current leaf syntax node to a different specified type.
  ///
  /// - Returns: `nil` since the leaf node cannot be cast to a different specified type.
  ///
  /// - Note: This method overloads the general `as` method and is marked as deprecated to produce a warning,
  ///         informing the user that the cast will always fail.
  @available(*, deprecated, message: "This cast will always fail")
  func `as`<S: TypeSyntaxProtocol>(_ syntaxType: S.Type) -> S? {
    return nil
  }
  

  /// Force-casts the current leaf syntax node to a different specified type.
  ///
  /// - Returns: This method will always trigger a runtime crash and never return.
  ///
  /// - Note: This method overloads the general `cast` method and is marked as deprecated to produce a warning,
  ///         informing the user that the cast will always fail.
  /// - Warning: Invoking this method will lead to a fatal error.
  @available(*, deprecated, message: "This cast will always fail")
  func cast<S: TypeSyntaxProtocol>(_ syntaxType: S.Type) -> S {
    fatalError("\(Self.self) cannot be cast to \(S.self)")
  }
}
