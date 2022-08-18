//// Automatically Generated From SyntaxNodes.swift.gyb.
//// Do Not Edit Directly!
//===------------ SyntaxNodes.swift - Syntax Node definitions -------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//


// MARK: - UnknownStmtSyntax

public struct UnknownStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `UnknownStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .unknownStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `UnknownStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .unknownStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
  ) {
    let layout: [RawSyntax?] = [
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.unknownStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }
}

extension UnknownStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
    ])
  }
}

// MARK: - MissingStmtSyntax

public struct MissingStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `MissingStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .missingStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `MissingStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .missingStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
  ) {
    let layout: [RawSyntax?] = [
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.missingStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }
}

extension MissingStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
    ])
  }
}

// MARK: - LabeledStmtSyntax

public struct LabeledStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeLabelName
    case labelName
    case unexpectedBetweenLabelNameAndLabelColon
    case labelColon
    case unexpectedBetweenLabelColonAndStatement
    case statement
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `LabeledStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .labeledStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `LabeledStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .labeledStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeLabelName: UnexpectedNodesSyntax? = nil,
    labelName: TokenSyntax,
    _ unexpectedBetweenLabelNameAndLabelColon: UnexpectedNodesSyntax? = nil,
    labelColon: TokenSyntax,
    _ unexpectedBetweenLabelColonAndStatement: UnexpectedNodesSyntax? = nil,
    statement: StmtSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeLabelName?.raw,
      labelName.raw,
      unexpectedBetweenLabelNameAndLabelColon?.raw,
      labelColon.raw,
      unexpectedBetweenLabelColonAndStatement?.raw,
      statement.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.labeledStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeLabelName: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeLabelName,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeLabelName(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeLabelName` replaced.
  /// - param newChild: The new `unexpectedBeforeLabelName` to replace the node's
  ///                   current `unexpectedBeforeLabelName`, if present.
  public func withUnexpectedBeforeLabelName(
    _ newChild: UnexpectedNodesSyntax?) -> LabeledStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeLabelName)
    return LabeledStmtSyntax(newData)
  }

  public var labelName: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.labelName,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withLabelName(value)
    }
  }

  /// Returns a copy of the receiver with its `labelName` replaced.
  /// - param newChild: The new `labelName` to replace the node's
  ///                   current `labelName`, if present.
  public func withLabelName(
    _ newChild: TokenSyntax?) -> LabeledStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.identifier(""), arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.labelName)
    return LabeledStmtSyntax(newData)
  }

  public var unexpectedBetweenLabelNameAndLabelColon: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenLabelNameAndLabelColon,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenLabelNameAndLabelColon(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenLabelNameAndLabelColon` replaced.
  /// - param newChild: The new `unexpectedBetweenLabelNameAndLabelColon` to replace the node's
  ///                   current `unexpectedBetweenLabelNameAndLabelColon`, if present.
  public func withUnexpectedBetweenLabelNameAndLabelColon(
    _ newChild: UnexpectedNodesSyntax?) -> LabeledStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenLabelNameAndLabelColon)
    return LabeledStmtSyntax(newData)
  }

  public var labelColon: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.labelColon,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withLabelColon(value)
    }
  }

  /// Returns a copy of the receiver with its `labelColon` replaced.
  /// - param newChild: The new `labelColon` to replace the node's
  ///                   current `labelColon`, if present.
  public func withLabelColon(
    _ newChild: TokenSyntax?) -> LabeledStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.colon, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.labelColon)
    return LabeledStmtSyntax(newData)
  }

  public var unexpectedBetweenLabelColonAndStatement: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenLabelColonAndStatement,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenLabelColonAndStatement(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenLabelColonAndStatement` replaced.
  /// - param newChild: The new `unexpectedBetweenLabelColonAndStatement` to replace the node's
  ///                   current `unexpectedBetweenLabelColonAndStatement`, if present.
  public func withUnexpectedBetweenLabelColonAndStatement(
    _ newChild: UnexpectedNodesSyntax?) -> LabeledStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenLabelColonAndStatement)
    return LabeledStmtSyntax(newData)
  }

  public var statement: StmtSyntax {
    get {
      let childData = data.child(at: Cursor.statement,
                                 parent: Syntax(self))
      return StmtSyntax(childData!)
    }
    set(value) {
      self = withStatement(value)
    }
  }

  /// Returns a copy of the receiver with its `statement` replaced.
  /// - param newChild: The new `statement` to replace the node's
  ///                   current `statement`, if present.
  public func withStatement(
    _ newChild: StmtSyntax?) -> LabeledStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingStmt, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.statement)
    return LabeledStmtSyntax(newData)
  }
}

extension LabeledStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeLabelName": unexpectedBeforeLabelName.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "labelName": Syntax(labelName).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLabelNameAndLabelColon": unexpectedBetweenLabelNameAndLabelColon.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "labelColon": Syntax(labelColon).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLabelColonAndStatement": unexpectedBetweenLabelColonAndStatement.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "statement": Syntax(statement).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - ContinueStmtSyntax

public struct ContinueStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeContinueKeyword
    case continueKeyword
    case unexpectedBetweenContinueKeywordAndLabel
    case label
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `ContinueStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .continueStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `ContinueStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .continueStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeContinueKeyword: UnexpectedNodesSyntax? = nil,
    continueKeyword: TokenSyntax,
    _ unexpectedBetweenContinueKeywordAndLabel: UnexpectedNodesSyntax? = nil,
    label: TokenSyntax?
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeContinueKeyword?.raw,
      continueKeyword.raw,
      unexpectedBetweenContinueKeywordAndLabel?.raw,
      label?.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.continueStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeContinueKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeContinueKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeContinueKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeContinueKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeContinueKeyword` to replace the node's
  ///                   current `unexpectedBeforeContinueKeyword`, if present.
  public func withUnexpectedBeforeContinueKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> ContinueStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeContinueKeyword)
    return ContinueStmtSyntax(newData)
  }

  public var continueKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.continueKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withContinueKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `continueKeyword` replaced.
  /// - param newChild: The new `continueKeyword` to replace the node's
  ///                   current `continueKeyword`, if present.
  public func withContinueKeyword(
    _ newChild: TokenSyntax?) -> ContinueStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.continueKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.continueKeyword)
    return ContinueStmtSyntax(newData)
  }

  public var unexpectedBetweenContinueKeywordAndLabel: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenContinueKeywordAndLabel,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenContinueKeywordAndLabel(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenContinueKeywordAndLabel` replaced.
  /// - param newChild: The new `unexpectedBetweenContinueKeywordAndLabel` to replace the node's
  ///                   current `unexpectedBetweenContinueKeywordAndLabel`, if present.
  public func withUnexpectedBetweenContinueKeywordAndLabel(
    _ newChild: UnexpectedNodesSyntax?) -> ContinueStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenContinueKeywordAndLabel)
    return ContinueStmtSyntax(newData)
  }

  public var label: TokenSyntax? {
    get {
      let childData = data.child(at: Cursor.label,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withLabel(value)
    }
  }

  /// Returns a copy of the receiver with its `label` replaced.
  /// - param newChild: The new `label` to replace the node's
  ///                   current `label`, if present.
  public func withLabel(
    _ newChild: TokenSyntax?) -> ContinueStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.label)
    return ContinueStmtSyntax(newData)
  }
}

extension ContinueStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeContinueKeyword": unexpectedBeforeContinueKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "continueKeyword": Syntax(continueKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenContinueKeywordAndLabel": unexpectedBetweenContinueKeywordAndLabel.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "label": label.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - WhileStmtSyntax

public struct WhileStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeWhileKeyword
    case whileKeyword
    case unexpectedBetweenWhileKeywordAndConditions
    case conditions
    case unexpectedBetweenConditionsAndBody
    case body
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `WhileStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .whileStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `WhileStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .whileStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeWhileKeyword: UnexpectedNodesSyntax? = nil,
    whileKeyword: TokenSyntax,
    _ unexpectedBetweenWhileKeywordAndConditions: UnexpectedNodesSyntax? = nil,
    conditions: ConditionElementListSyntax,
    _ unexpectedBetweenConditionsAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeWhileKeyword?.raw,
      whileKeyword.raw,
      unexpectedBetweenWhileKeywordAndConditions?.raw,
      conditions.raw,
      unexpectedBetweenConditionsAndBody?.raw,
      body.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.whileStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeWhileKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeWhileKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeWhileKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeWhileKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeWhileKeyword` to replace the node's
  ///                   current `unexpectedBeforeWhileKeyword`, if present.
  public func withUnexpectedBeforeWhileKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> WhileStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeWhileKeyword)
    return WhileStmtSyntax(newData)
  }

  public var whileKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.whileKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withWhileKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `whileKeyword` replaced.
  /// - param newChild: The new `whileKeyword` to replace the node's
  ///                   current `whileKeyword`, if present.
  public func withWhileKeyword(
    _ newChild: TokenSyntax?) -> WhileStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.whileKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.whileKeyword)
    return WhileStmtSyntax(newData)
  }

  public var unexpectedBetweenWhileKeywordAndConditions: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenWhileKeywordAndConditions,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenWhileKeywordAndConditions(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenWhileKeywordAndConditions` replaced.
  /// - param newChild: The new `unexpectedBetweenWhileKeywordAndConditions` to replace the node's
  ///                   current `unexpectedBetweenWhileKeywordAndConditions`, if present.
  public func withUnexpectedBetweenWhileKeywordAndConditions(
    _ newChild: UnexpectedNodesSyntax?) -> WhileStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenWhileKeywordAndConditions)
    return WhileStmtSyntax(newData)
  }

  public var conditions: ConditionElementListSyntax {
    get {
      let childData = data.child(at: Cursor.conditions,
                                 parent: Syntax(self))
      return ConditionElementListSyntax(childData!)
    }
    set(value) {
      self = withConditions(value)
    }
  }

  /// Adds the provided `Condition` to the node's `conditions`
  /// collection.
  /// - param element: The new `Condition` to add to the node's
  ///                  `conditions` collection.
  /// - returns: A copy of the receiver with the provided `Condition`
  ///            appended to its `conditions` collection.
  public func addCondition(_ element: ConditionElementSyntax) -> WhileStmtSyntax {
    var collection: RawSyntax
    if let col = raw[Cursor.conditions] {
      collection = col.layoutView.appending(element.raw)
    } else {
      collection = RawSyntax.create(kind: SyntaxKind.conditionElementList,
        layout: [element.raw], length: element.raw.totalLength, presence: .present)
    }
    let newData = data.replacingChild(collection,
                                      at: Cursor.conditions)
    return WhileStmtSyntax(newData)
  }

  /// Returns a copy of the receiver with its `conditions` replaced.
  /// - param newChild: The new `conditions` to replace the node's
  ///                   current `conditions`, if present.
  public func withConditions(
    _ newChild: ConditionElementListSyntax?) -> WhileStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.conditionElementList, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.conditions)
    return WhileStmtSyntax(newData)
  }

  public var unexpectedBetweenConditionsAndBody: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenConditionsAndBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenConditionsAndBody(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenConditionsAndBody` replaced.
  /// - param newChild: The new `unexpectedBetweenConditionsAndBody` to replace the node's
  ///                   current `unexpectedBetweenConditionsAndBody`, if present.
  public func withUnexpectedBetweenConditionsAndBody(
    _ newChild: UnexpectedNodesSyntax?) -> WhileStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenConditionsAndBody)
    return WhileStmtSyntax(newData)
  }

  public var body: CodeBlockSyntax {
    get {
      let childData = data.child(at: Cursor.body,
                                 parent: Syntax(self))
      return CodeBlockSyntax(childData!)
    }
    set(value) {
      self = withBody(value)
    }
  }

  /// Returns a copy of the receiver with its `body` replaced.
  /// - param newChild: The new `body` to replace the node's
  ///                   current `body`, if present.
  public func withBody(
    _ newChild: CodeBlockSyntax?) -> WhileStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.codeBlock, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.body)
    return WhileStmtSyntax(newData)
  }
}

extension WhileStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeWhileKeyword": unexpectedBeforeWhileKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "whileKeyword": Syntax(whileKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenWhileKeywordAndConditions": unexpectedBetweenWhileKeywordAndConditions.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "conditions": Syntax(conditions).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenConditionsAndBody": unexpectedBetweenConditionsAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - DeferStmtSyntax

public struct DeferStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeDeferKeyword
    case deferKeyword
    case unexpectedBetweenDeferKeywordAndBody
    case body
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `DeferStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .deferStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `DeferStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .deferStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeDeferKeyword: UnexpectedNodesSyntax? = nil,
    deferKeyword: TokenSyntax,
    _ unexpectedBetweenDeferKeywordAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeDeferKeyword?.raw,
      deferKeyword.raw,
      unexpectedBetweenDeferKeywordAndBody?.raw,
      body.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.deferStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeDeferKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeDeferKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeDeferKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeDeferKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeDeferKeyword` to replace the node's
  ///                   current `unexpectedBeforeDeferKeyword`, if present.
  public func withUnexpectedBeforeDeferKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> DeferStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeDeferKeyword)
    return DeferStmtSyntax(newData)
  }

  public var deferKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.deferKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withDeferKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `deferKeyword` replaced.
  /// - param newChild: The new `deferKeyword` to replace the node's
  ///                   current `deferKeyword`, if present.
  public func withDeferKeyword(
    _ newChild: TokenSyntax?) -> DeferStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.deferKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.deferKeyword)
    return DeferStmtSyntax(newData)
  }

  public var unexpectedBetweenDeferKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenDeferKeywordAndBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenDeferKeywordAndBody(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenDeferKeywordAndBody` replaced.
  /// - param newChild: The new `unexpectedBetweenDeferKeywordAndBody` to replace the node's
  ///                   current `unexpectedBetweenDeferKeywordAndBody`, if present.
  public func withUnexpectedBetweenDeferKeywordAndBody(
    _ newChild: UnexpectedNodesSyntax?) -> DeferStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenDeferKeywordAndBody)
    return DeferStmtSyntax(newData)
  }

  public var body: CodeBlockSyntax {
    get {
      let childData = data.child(at: Cursor.body,
                                 parent: Syntax(self))
      return CodeBlockSyntax(childData!)
    }
    set(value) {
      self = withBody(value)
    }
  }

  /// Returns a copy of the receiver with its `body` replaced.
  /// - param newChild: The new `body` to replace the node's
  ///                   current `body`, if present.
  public func withBody(
    _ newChild: CodeBlockSyntax?) -> DeferStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.codeBlock, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.body)
    return DeferStmtSyntax(newData)
  }
}

extension DeferStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeDeferKeyword": unexpectedBeforeDeferKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "deferKeyword": Syntax(deferKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenDeferKeywordAndBody": unexpectedBetweenDeferKeywordAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - ExpressionStmtSyntax

public struct ExpressionStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeExpression
    case expression
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `ExpressionStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .expressionStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `ExpressionStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .expressionStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeExpression: UnexpectedNodesSyntax? = nil,
    expression: ExprSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeExpression?.raw,
      expression.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.expressionStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeExpression,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeExpression(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeExpression` replaced.
  /// - param newChild: The new `unexpectedBeforeExpression` to replace the node's
  ///                   current `unexpectedBeforeExpression`, if present.
  public func withUnexpectedBeforeExpression(
    _ newChild: UnexpectedNodesSyntax?) -> ExpressionStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeExpression)
    return ExpressionStmtSyntax(newData)
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: Cursor.expression,
                                 parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      self = withExpression(value)
    }
  }

  /// Returns a copy of the receiver with its `expression` replaced.
  /// - param newChild: The new `expression` to replace the node's
  ///                   current `expression`, if present.
  public func withExpression(
    _ newChild: ExprSyntax?) -> ExpressionStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingExpr, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.expression)
    return ExpressionStmtSyntax(newData)
  }
}

extension ExpressionStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeExpression": unexpectedBeforeExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - RepeatWhileStmtSyntax

public struct RepeatWhileStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeRepeatKeyword
    case repeatKeyword
    case unexpectedBetweenRepeatKeywordAndBody
    case body
    case unexpectedBetweenBodyAndWhileKeyword
    case whileKeyword
    case unexpectedBetweenWhileKeywordAndCondition
    case condition
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `RepeatWhileStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .repeatWhileStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `RepeatWhileStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .repeatWhileStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeRepeatKeyword: UnexpectedNodesSyntax? = nil,
    repeatKeyword: TokenSyntax,
    _ unexpectedBetweenRepeatKeywordAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedBetweenBodyAndWhileKeyword: UnexpectedNodesSyntax? = nil,
    whileKeyword: TokenSyntax,
    _ unexpectedBetweenWhileKeywordAndCondition: UnexpectedNodesSyntax? = nil,
    condition: ExprSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeRepeatKeyword?.raw,
      repeatKeyword.raw,
      unexpectedBetweenRepeatKeywordAndBody?.raw,
      body.raw,
      unexpectedBetweenBodyAndWhileKeyword?.raw,
      whileKeyword.raw,
      unexpectedBetweenWhileKeywordAndCondition?.raw,
      condition.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.repeatWhileStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeRepeatKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeRepeatKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeRepeatKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeRepeatKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeRepeatKeyword` to replace the node's
  ///                   current `unexpectedBeforeRepeatKeyword`, if present.
  public func withUnexpectedBeforeRepeatKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> RepeatWhileStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeRepeatKeyword)
    return RepeatWhileStmtSyntax(newData)
  }

  public var repeatKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.repeatKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withRepeatKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `repeatKeyword` replaced.
  /// - param newChild: The new `repeatKeyword` to replace the node's
  ///                   current `repeatKeyword`, if present.
  public func withRepeatKeyword(
    _ newChild: TokenSyntax?) -> RepeatWhileStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.repeatKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.repeatKeyword)
    return RepeatWhileStmtSyntax(newData)
  }

  public var unexpectedBetweenRepeatKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenRepeatKeywordAndBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenRepeatKeywordAndBody(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenRepeatKeywordAndBody` replaced.
  /// - param newChild: The new `unexpectedBetweenRepeatKeywordAndBody` to replace the node's
  ///                   current `unexpectedBetweenRepeatKeywordAndBody`, if present.
  public func withUnexpectedBetweenRepeatKeywordAndBody(
    _ newChild: UnexpectedNodesSyntax?) -> RepeatWhileStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenRepeatKeywordAndBody)
    return RepeatWhileStmtSyntax(newData)
  }

  public var body: CodeBlockSyntax {
    get {
      let childData = data.child(at: Cursor.body,
                                 parent: Syntax(self))
      return CodeBlockSyntax(childData!)
    }
    set(value) {
      self = withBody(value)
    }
  }

  /// Returns a copy of the receiver with its `body` replaced.
  /// - param newChild: The new `body` to replace the node's
  ///                   current `body`, if present.
  public func withBody(
    _ newChild: CodeBlockSyntax?) -> RepeatWhileStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.codeBlock, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.body)
    return RepeatWhileStmtSyntax(newData)
  }

  public var unexpectedBetweenBodyAndWhileKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenBodyAndWhileKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenBodyAndWhileKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenBodyAndWhileKeyword` replaced.
  /// - param newChild: The new `unexpectedBetweenBodyAndWhileKeyword` to replace the node's
  ///                   current `unexpectedBetweenBodyAndWhileKeyword`, if present.
  public func withUnexpectedBetweenBodyAndWhileKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> RepeatWhileStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenBodyAndWhileKeyword)
    return RepeatWhileStmtSyntax(newData)
  }

  public var whileKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.whileKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withWhileKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `whileKeyword` replaced.
  /// - param newChild: The new `whileKeyword` to replace the node's
  ///                   current `whileKeyword`, if present.
  public func withWhileKeyword(
    _ newChild: TokenSyntax?) -> RepeatWhileStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.whileKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.whileKeyword)
    return RepeatWhileStmtSyntax(newData)
  }

  public var unexpectedBetweenWhileKeywordAndCondition: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenWhileKeywordAndCondition,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenWhileKeywordAndCondition(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenWhileKeywordAndCondition` replaced.
  /// - param newChild: The new `unexpectedBetweenWhileKeywordAndCondition` to replace the node's
  ///                   current `unexpectedBetweenWhileKeywordAndCondition`, if present.
  public func withUnexpectedBetweenWhileKeywordAndCondition(
    _ newChild: UnexpectedNodesSyntax?) -> RepeatWhileStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenWhileKeywordAndCondition)
    return RepeatWhileStmtSyntax(newData)
  }

  public var condition: ExprSyntax {
    get {
      let childData = data.child(at: Cursor.condition,
                                 parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      self = withCondition(value)
    }
  }

  /// Returns a copy of the receiver with its `condition` replaced.
  /// - param newChild: The new `condition` to replace the node's
  ///                   current `condition`, if present.
  public func withCondition(
    _ newChild: ExprSyntax?) -> RepeatWhileStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingExpr, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.condition)
    return RepeatWhileStmtSyntax(newData)
  }
}

extension RepeatWhileStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeRepeatKeyword": unexpectedBeforeRepeatKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "repeatKeyword": Syntax(repeatKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenRepeatKeywordAndBody": unexpectedBetweenRepeatKeywordAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBodyAndWhileKeyword": unexpectedBetweenBodyAndWhileKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "whileKeyword": Syntax(whileKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenWhileKeywordAndCondition": unexpectedBetweenWhileKeywordAndCondition.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "condition": Syntax(condition).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - GuardStmtSyntax

public struct GuardStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeGuardKeyword
    case guardKeyword
    case unexpectedBetweenGuardKeywordAndConditions
    case conditions
    case unexpectedBetweenConditionsAndElseKeyword
    case elseKeyword
    case unexpectedBetweenElseKeywordAndBody
    case body
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `GuardStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .guardStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `GuardStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .guardStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeGuardKeyword: UnexpectedNodesSyntax? = nil,
    guardKeyword: TokenSyntax,
    _ unexpectedBetweenGuardKeywordAndConditions: UnexpectedNodesSyntax? = nil,
    conditions: ConditionElementListSyntax,
    _ unexpectedBetweenConditionsAndElseKeyword: UnexpectedNodesSyntax? = nil,
    elseKeyword: TokenSyntax,
    _ unexpectedBetweenElseKeywordAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeGuardKeyword?.raw,
      guardKeyword.raw,
      unexpectedBetweenGuardKeywordAndConditions?.raw,
      conditions.raw,
      unexpectedBetweenConditionsAndElseKeyword?.raw,
      elseKeyword.raw,
      unexpectedBetweenElseKeywordAndBody?.raw,
      body.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.guardStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeGuardKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeGuardKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeGuardKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeGuardKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeGuardKeyword` to replace the node's
  ///                   current `unexpectedBeforeGuardKeyword`, if present.
  public func withUnexpectedBeforeGuardKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> GuardStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeGuardKeyword)
    return GuardStmtSyntax(newData)
  }

  public var guardKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.guardKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withGuardKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `guardKeyword` replaced.
  /// - param newChild: The new `guardKeyword` to replace the node's
  ///                   current `guardKeyword`, if present.
  public func withGuardKeyword(
    _ newChild: TokenSyntax?) -> GuardStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.guardKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.guardKeyword)
    return GuardStmtSyntax(newData)
  }

  public var unexpectedBetweenGuardKeywordAndConditions: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenGuardKeywordAndConditions,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenGuardKeywordAndConditions(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenGuardKeywordAndConditions` replaced.
  /// - param newChild: The new `unexpectedBetweenGuardKeywordAndConditions` to replace the node's
  ///                   current `unexpectedBetweenGuardKeywordAndConditions`, if present.
  public func withUnexpectedBetweenGuardKeywordAndConditions(
    _ newChild: UnexpectedNodesSyntax?) -> GuardStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenGuardKeywordAndConditions)
    return GuardStmtSyntax(newData)
  }

  public var conditions: ConditionElementListSyntax {
    get {
      let childData = data.child(at: Cursor.conditions,
                                 parent: Syntax(self))
      return ConditionElementListSyntax(childData!)
    }
    set(value) {
      self = withConditions(value)
    }
  }

  /// Adds the provided `Condition` to the node's `conditions`
  /// collection.
  /// - param element: The new `Condition` to add to the node's
  ///                  `conditions` collection.
  /// - returns: A copy of the receiver with the provided `Condition`
  ///            appended to its `conditions` collection.
  public func addCondition(_ element: ConditionElementSyntax) -> GuardStmtSyntax {
    var collection: RawSyntax
    if let col = raw[Cursor.conditions] {
      collection = col.layoutView.appending(element.raw)
    } else {
      collection = RawSyntax.create(kind: SyntaxKind.conditionElementList,
        layout: [element.raw], length: element.raw.totalLength, presence: .present)
    }
    let newData = data.replacingChild(collection,
                                      at: Cursor.conditions)
    return GuardStmtSyntax(newData)
  }

  /// Returns a copy of the receiver with its `conditions` replaced.
  /// - param newChild: The new `conditions` to replace the node's
  ///                   current `conditions`, if present.
  public func withConditions(
    _ newChild: ConditionElementListSyntax?) -> GuardStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.conditionElementList, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.conditions)
    return GuardStmtSyntax(newData)
  }

  public var unexpectedBetweenConditionsAndElseKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenConditionsAndElseKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenConditionsAndElseKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenConditionsAndElseKeyword` replaced.
  /// - param newChild: The new `unexpectedBetweenConditionsAndElseKeyword` to replace the node's
  ///                   current `unexpectedBetweenConditionsAndElseKeyword`, if present.
  public func withUnexpectedBetweenConditionsAndElseKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> GuardStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenConditionsAndElseKeyword)
    return GuardStmtSyntax(newData)
  }

  public var elseKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.elseKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withElseKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `elseKeyword` replaced.
  /// - param newChild: The new `elseKeyword` to replace the node's
  ///                   current `elseKeyword`, if present.
  public func withElseKeyword(
    _ newChild: TokenSyntax?) -> GuardStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.elseKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.elseKeyword)
    return GuardStmtSyntax(newData)
  }

  public var unexpectedBetweenElseKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenElseKeywordAndBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenElseKeywordAndBody(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenElseKeywordAndBody` replaced.
  /// - param newChild: The new `unexpectedBetweenElseKeywordAndBody` to replace the node's
  ///                   current `unexpectedBetweenElseKeywordAndBody`, if present.
  public func withUnexpectedBetweenElseKeywordAndBody(
    _ newChild: UnexpectedNodesSyntax?) -> GuardStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenElseKeywordAndBody)
    return GuardStmtSyntax(newData)
  }

  public var body: CodeBlockSyntax {
    get {
      let childData = data.child(at: Cursor.body,
                                 parent: Syntax(self))
      return CodeBlockSyntax(childData!)
    }
    set(value) {
      self = withBody(value)
    }
  }

  /// Returns a copy of the receiver with its `body` replaced.
  /// - param newChild: The new `body` to replace the node's
  ///                   current `body`, if present.
  public func withBody(
    _ newChild: CodeBlockSyntax?) -> GuardStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.codeBlock, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.body)
    return GuardStmtSyntax(newData)
  }
}

extension GuardStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeGuardKeyword": unexpectedBeforeGuardKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "guardKeyword": Syntax(guardKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenGuardKeywordAndConditions": unexpectedBetweenGuardKeywordAndConditions.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "conditions": Syntax(conditions).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenConditionsAndElseKeyword": unexpectedBetweenConditionsAndElseKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "elseKeyword": Syntax(elseKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenElseKeywordAndBody": unexpectedBetweenElseKeywordAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - ForInStmtSyntax

public struct ForInStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeForKeyword
    case forKeyword
    case unexpectedBetweenForKeywordAndTryKeyword
    case tryKeyword
    case unexpectedBetweenTryKeywordAndAwaitKeyword
    case awaitKeyword
    case unexpectedBetweenAwaitKeywordAndCaseKeyword
    case caseKeyword
    case unexpectedBetweenCaseKeywordAndPattern
    case pattern
    case unexpectedBetweenPatternAndTypeAnnotation
    case typeAnnotation
    case unexpectedBetweenTypeAnnotationAndInKeyword
    case inKeyword
    case unexpectedBetweenInKeywordAndSequenceExpr
    case sequenceExpr
    case unexpectedBetweenSequenceExprAndWhereClause
    case whereClause
    case unexpectedBetweenWhereClauseAndBody
    case body
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `ForInStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .forInStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `ForInStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .forInStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeForKeyword: UnexpectedNodesSyntax? = nil,
    forKeyword: TokenSyntax,
    _ unexpectedBetweenForKeywordAndTryKeyword: UnexpectedNodesSyntax? = nil,
    tryKeyword: TokenSyntax?,
    _ unexpectedBetweenTryKeywordAndAwaitKeyword: UnexpectedNodesSyntax? = nil,
    awaitKeyword: TokenSyntax?,
    _ unexpectedBetweenAwaitKeywordAndCaseKeyword: UnexpectedNodesSyntax? = nil,
    caseKeyword: TokenSyntax?,
    _ unexpectedBetweenCaseKeywordAndPattern: UnexpectedNodesSyntax? = nil,
    pattern: PatternSyntax,
    _ unexpectedBetweenPatternAndTypeAnnotation: UnexpectedNodesSyntax? = nil,
    typeAnnotation: TypeAnnotationSyntax?,
    _ unexpectedBetweenTypeAnnotationAndInKeyword: UnexpectedNodesSyntax? = nil,
    inKeyword: TokenSyntax,
    _ unexpectedBetweenInKeywordAndSequenceExpr: UnexpectedNodesSyntax? = nil,
    sequenceExpr: ExprSyntax,
    _ unexpectedBetweenSequenceExprAndWhereClause: UnexpectedNodesSyntax? = nil,
    whereClause: WhereClauseSyntax?,
    _ unexpectedBetweenWhereClauseAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeForKeyword?.raw,
      forKeyword.raw,
      unexpectedBetweenForKeywordAndTryKeyword?.raw,
      tryKeyword?.raw,
      unexpectedBetweenTryKeywordAndAwaitKeyword?.raw,
      awaitKeyword?.raw,
      unexpectedBetweenAwaitKeywordAndCaseKeyword?.raw,
      caseKeyword?.raw,
      unexpectedBetweenCaseKeywordAndPattern?.raw,
      pattern.raw,
      unexpectedBetweenPatternAndTypeAnnotation?.raw,
      typeAnnotation?.raw,
      unexpectedBetweenTypeAnnotationAndInKeyword?.raw,
      inKeyword.raw,
      unexpectedBetweenInKeywordAndSequenceExpr?.raw,
      sequenceExpr.raw,
      unexpectedBetweenSequenceExprAndWhereClause?.raw,
      whereClause?.raw,
      unexpectedBetweenWhereClauseAndBody?.raw,
      body.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.forInStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeForKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeForKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeForKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeForKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeForKeyword` to replace the node's
  ///                   current `unexpectedBeforeForKeyword`, if present.
  public func withUnexpectedBeforeForKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeForKeyword)
    return ForInStmtSyntax(newData)
  }

  public var forKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.forKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withForKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `forKeyword` replaced.
  /// - param newChild: The new `forKeyword` to replace the node's
  ///                   current `forKeyword`, if present.
  public func withForKeyword(
    _ newChild: TokenSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.forKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.forKeyword)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenForKeywordAndTryKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenForKeywordAndTryKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenForKeywordAndTryKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenForKeywordAndTryKeyword` replaced.
  /// - param newChild: The new `unexpectedBetweenForKeywordAndTryKeyword` to replace the node's
  ///                   current `unexpectedBetweenForKeywordAndTryKeyword`, if present.
  public func withUnexpectedBetweenForKeywordAndTryKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenForKeywordAndTryKeyword)
    return ForInStmtSyntax(newData)
  }

  public var tryKeyword: TokenSyntax? {
    get {
      let childData = data.child(at: Cursor.tryKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withTryKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `tryKeyword` replaced.
  /// - param newChild: The new `tryKeyword` to replace the node's
  ///                   current `tryKeyword`, if present.
  public func withTryKeyword(
    _ newChild: TokenSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.tryKeyword)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenTryKeywordAndAwaitKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenTryKeywordAndAwaitKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenTryKeywordAndAwaitKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenTryKeywordAndAwaitKeyword` replaced.
  /// - param newChild: The new `unexpectedBetweenTryKeywordAndAwaitKeyword` to replace the node's
  ///                   current `unexpectedBetweenTryKeywordAndAwaitKeyword`, if present.
  public func withUnexpectedBetweenTryKeywordAndAwaitKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenTryKeywordAndAwaitKeyword)
    return ForInStmtSyntax(newData)
  }

  public var awaitKeyword: TokenSyntax? {
    get {
      let childData = data.child(at: Cursor.awaitKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withAwaitKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `awaitKeyword` replaced.
  /// - param newChild: The new `awaitKeyword` to replace the node's
  ///                   current `awaitKeyword`, if present.
  public func withAwaitKeyword(
    _ newChild: TokenSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.awaitKeyword)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenAwaitKeywordAndCaseKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenAwaitKeywordAndCaseKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenAwaitKeywordAndCaseKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenAwaitKeywordAndCaseKeyword` replaced.
  /// - param newChild: The new `unexpectedBetweenAwaitKeywordAndCaseKeyword` to replace the node's
  ///                   current `unexpectedBetweenAwaitKeywordAndCaseKeyword`, if present.
  public func withUnexpectedBetweenAwaitKeywordAndCaseKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenAwaitKeywordAndCaseKeyword)
    return ForInStmtSyntax(newData)
  }

  public var caseKeyword: TokenSyntax? {
    get {
      let childData = data.child(at: Cursor.caseKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withCaseKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `caseKeyword` replaced.
  /// - param newChild: The new `caseKeyword` to replace the node's
  ///                   current `caseKeyword`, if present.
  public func withCaseKeyword(
    _ newChild: TokenSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.caseKeyword)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenCaseKeywordAndPattern: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenCaseKeywordAndPattern,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenCaseKeywordAndPattern(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenCaseKeywordAndPattern` replaced.
  /// - param newChild: The new `unexpectedBetweenCaseKeywordAndPattern` to replace the node's
  ///                   current `unexpectedBetweenCaseKeywordAndPattern`, if present.
  public func withUnexpectedBetweenCaseKeywordAndPattern(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenCaseKeywordAndPattern)
    return ForInStmtSyntax(newData)
  }

  public var pattern: PatternSyntax {
    get {
      let childData = data.child(at: Cursor.pattern,
                                 parent: Syntax(self))
      return PatternSyntax(childData!)
    }
    set(value) {
      self = withPattern(value)
    }
  }

  /// Returns a copy of the receiver with its `pattern` replaced.
  /// - param newChild: The new `pattern` to replace the node's
  ///                   current `pattern`, if present.
  public func withPattern(
    _ newChild: PatternSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingPattern, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.pattern)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenPatternAndTypeAnnotation: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenPatternAndTypeAnnotation,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenPatternAndTypeAnnotation(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenPatternAndTypeAnnotation` replaced.
  /// - param newChild: The new `unexpectedBetweenPatternAndTypeAnnotation` to replace the node's
  ///                   current `unexpectedBetweenPatternAndTypeAnnotation`, if present.
  public func withUnexpectedBetweenPatternAndTypeAnnotation(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenPatternAndTypeAnnotation)
    return ForInStmtSyntax(newData)
  }

  public var typeAnnotation: TypeAnnotationSyntax? {
    get {
      let childData = data.child(at: Cursor.typeAnnotation,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TypeAnnotationSyntax(childData!)
    }
    set(value) {
      self = withTypeAnnotation(value)
    }
  }

  /// Returns a copy of the receiver with its `typeAnnotation` replaced.
  /// - param newChild: The new `typeAnnotation` to replace the node's
  ///                   current `typeAnnotation`, if present.
  public func withTypeAnnotation(
    _ newChild: TypeAnnotationSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.typeAnnotation)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenTypeAnnotationAndInKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenTypeAnnotationAndInKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenTypeAnnotationAndInKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenTypeAnnotationAndInKeyword` replaced.
  /// - param newChild: The new `unexpectedBetweenTypeAnnotationAndInKeyword` to replace the node's
  ///                   current `unexpectedBetweenTypeAnnotationAndInKeyword`, if present.
  public func withUnexpectedBetweenTypeAnnotationAndInKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenTypeAnnotationAndInKeyword)
    return ForInStmtSyntax(newData)
  }

  public var inKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.inKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withInKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `inKeyword` replaced.
  /// - param newChild: The new `inKeyword` to replace the node's
  ///                   current `inKeyword`, if present.
  public func withInKeyword(
    _ newChild: TokenSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.inKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.inKeyword)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenInKeywordAndSequenceExpr: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenInKeywordAndSequenceExpr,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenInKeywordAndSequenceExpr(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenInKeywordAndSequenceExpr` replaced.
  /// - param newChild: The new `unexpectedBetweenInKeywordAndSequenceExpr` to replace the node's
  ///                   current `unexpectedBetweenInKeywordAndSequenceExpr`, if present.
  public func withUnexpectedBetweenInKeywordAndSequenceExpr(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenInKeywordAndSequenceExpr)
    return ForInStmtSyntax(newData)
  }

  public var sequenceExpr: ExprSyntax {
    get {
      let childData = data.child(at: Cursor.sequenceExpr,
                                 parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      self = withSequenceExpr(value)
    }
  }

  /// Returns a copy of the receiver with its `sequenceExpr` replaced.
  /// - param newChild: The new `sequenceExpr` to replace the node's
  ///                   current `sequenceExpr`, if present.
  public func withSequenceExpr(
    _ newChild: ExprSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingExpr, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.sequenceExpr)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenSequenceExprAndWhereClause: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenSequenceExprAndWhereClause,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenSequenceExprAndWhereClause(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenSequenceExprAndWhereClause` replaced.
  /// - param newChild: The new `unexpectedBetweenSequenceExprAndWhereClause` to replace the node's
  ///                   current `unexpectedBetweenSequenceExprAndWhereClause`, if present.
  public func withUnexpectedBetweenSequenceExprAndWhereClause(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenSequenceExprAndWhereClause)
    return ForInStmtSyntax(newData)
  }

  public var whereClause: WhereClauseSyntax? {
    get {
      let childData = data.child(at: Cursor.whereClause,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return WhereClauseSyntax(childData!)
    }
    set(value) {
      self = withWhereClause(value)
    }
  }

  /// Returns a copy of the receiver with its `whereClause` replaced.
  /// - param newChild: The new `whereClause` to replace the node's
  ///                   current `whereClause`, if present.
  public func withWhereClause(
    _ newChild: WhereClauseSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.whereClause)
    return ForInStmtSyntax(newData)
  }

  public var unexpectedBetweenWhereClauseAndBody: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenWhereClauseAndBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenWhereClauseAndBody(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenWhereClauseAndBody` replaced.
  /// - param newChild: The new `unexpectedBetweenWhereClauseAndBody` to replace the node's
  ///                   current `unexpectedBetweenWhereClauseAndBody`, if present.
  public func withUnexpectedBetweenWhereClauseAndBody(
    _ newChild: UnexpectedNodesSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenWhereClauseAndBody)
    return ForInStmtSyntax(newData)
  }

  public var body: CodeBlockSyntax {
    get {
      let childData = data.child(at: Cursor.body,
                                 parent: Syntax(self))
      return CodeBlockSyntax(childData!)
    }
    set(value) {
      self = withBody(value)
    }
  }

  /// Returns a copy of the receiver with its `body` replaced.
  /// - param newChild: The new `body` to replace the node's
  ///                   current `body`, if present.
  public func withBody(
    _ newChild: CodeBlockSyntax?) -> ForInStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.codeBlock, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.body)
    return ForInStmtSyntax(newData)
  }
}

extension ForInStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeForKeyword": unexpectedBeforeForKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "forKeyword": Syntax(forKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenForKeywordAndTryKeyword": unexpectedBetweenForKeywordAndTryKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "tryKeyword": tryKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenTryKeywordAndAwaitKeyword": unexpectedBetweenTryKeywordAndAwaitKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "awaitKeyword": awaitKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenAwaitKeywordAndCaseKeyword": unexpectedBetweenAwaitKeywordAndCaseKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "caseKeyword": caseKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenCaseKeywordAndPattern": unexpectedBetweenCaseKeywordAndPattern.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "pattern": Syntax(pattern).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenPatternAndTypeAnnotation": unexpectedBetweenPatternAndTypeAnnotation.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "typeAnnotation": typeAnnotation.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenTypeAnnotationAndInKeyword": unexpectedBetweenTypeAnnotationAndInKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "inKeyword": Syntax(inKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenInKeywordAndSequenceExpr": unexpectedBetweenInKeywordAndSequenceExpr.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "sequenceExpr": Syntax(sequenceExpr).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenSequenceExprAndWhereClause": unexpectedBetweenSequenceExprAndWhereClause.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "whereClause": whereClause.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenWhereClauseAndBody": unexpectedBetweenWhereClauseAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - SwitchStmtSyntax

public struct SwitchStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeSwitchKeyword
    case switchKeyword
    case unexpectedBetweenSwitchKeywordAndExpression
    case expression
    case unexpectedBetweenExpressionAndLeftBrace
    case leftBrace
    case unexpectedBetweenLeftBraceAndCases
    case cases
    case unexpectedBetweenCasesAndRightBrace
    case rightBrace
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `SwitchStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .switchStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `SwitchStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .switchStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeSwitchKeyword: UnexpectedNodesSyntax? = nil,
    switchKeyword: TokenSyntax,
    _ unexpectedBetweenSwitchKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: ExprSyntax,
    _ unexpectedBetweenExpressionAndLeftBrace: UnexpectedNodesSyntax? = nil,
    leftBrace: TokenSyntax,
    _ unexpectedBetweenLeftBraceAndCases: UnexpectedNodesSyntax? = nil,
    cases: SwitchCaseListSyntax,
    _ unexpectedBetweenCasesAndRightBrace: UnexpectedNodesSyntax? = nil,
    rightBrace: TokenSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeSwitchKeyword?.raw,
      switchKeyword.raw,
      unexpectedBetweenSwitchKeywordAndExpression?.raw,
      expression.raw,
      unexpectedBetweenExpressionAndLeftBrace?.raw,
      leftBrace.raw,
      unexpectedBetweenLeftBraceAndCases?.raw,
      cases.raw,
      unexpectedBetweenCasesAndRightBrace?.raw,
      rightBrace.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.switchStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeSwitchKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeSwitchKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeSwitchKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeSwitchKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeSwitchKeyword` to replace the node's
  ///                   current `unexpectedBeforeSwitchKeyword`, if present.
  public func withUnexpectedBeforeSwitchKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeSwitchKeyword)
    return SwitchStmtSyntax(newData)
  }

  public var switchKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.switchKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withSwitchKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `switchKeyword` replaced.
  /// - param newChild: The new `switchKeyword` to replace the node's
  ///                   current `switchKeyword`, if present.
  public func withSwitchKeyword(
    _ newChild: TokenSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.switchKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.switchKeyword)
    return SwitchStmtSyntax(newData)
  }

  public var unexpectedBetweenSwitchKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenSwitchKeywordAndExpression,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenSwitchKeywordAndExpression(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenSwitchKeywordAndExpression` replaced.
  /// - param newChild: The new `unexpectedBetweenSwitchKeywordAndExpression` to replace the node's
  ///                   current `unexpectedBetweenSwitchKeywordAndExpression`, if present.
  public func withUnexpectedBetweenSwitchKeywordAndExpression(
    _ newChild: UnexpectedNodesSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenSwitchKeywordAndExpression)
    return SwitchStmtSyntax(newData)
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: Cursor.expression,
                                 parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      self = withExpression(value)
    }
  }

  /// Returns a copy of the receiver with its `expression` replaced.
  /// - param newChild: The new `expression` to replace the node's
  ///                   current `expression`, if present.
  public func withExpression(
    _ newChild: ExprSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingExpr, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.expression)
    return SwitchStmtSyntax(newData)
  }

  public var unexpectedBetweenExpressionAndLeftBrace: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenExpressionAndLeftBrace,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenExpressionAndLeftBrace(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenExpressionAndLeftBrace` replaced.
  /// - param newChild: The new `unexpectedBetweenExpressionAndLeftBrace` to replace the node's
  ///                   current `unexpectedBetweenExpressionAndLeftBrace`, if present.
  public func withUnexpectedBetweenExpressionAndLeftBrace(
    _ newChild: UnexpectedNodesSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenExpressionAndLeftBrace)
    return SwitchStmtSyntax(newData)
  }

  public var leftBrace: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.leftBrace,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withLeftBrace(value)
    }
  }

  /// Returns a copy of the receiver with its `leftBrace` replaced.
  /// - param newChild: The new `leftBrace` to replace the node's
  ///                   current `leftBrace`, if present.
  public func withLeftBrace(
    _ newChild: TokenSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.leftBrace, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.leftBrace)
    return SwitchStmtSyntax(newData)
  }

  public var unexpectedBetweenLeftBraceAndCases: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenLeftBraceAndCases,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenLeftBraceAndCases(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenLeftBraceAndCases` replaced.
  /// - param newChild: The new `unexpectedBetweenLeftBraceAndCases` to replace the node's
  ///                   current `unexpectedBetweenLeftBraceAndCases`, if present.
  public func withUnexpectedBetweenLeftBraceAndCases(
    _ newChild: UnexpectedNodesSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenLeftBraceAndCases)
    return SwitchStmtSyntax(newData)
  }

  public var cases: SwitchCaseListSyntax {
    get {
      let childData = data.child(at: Cursor.cases,
                                 parent: Syntax(self))
      return SwitchCaseListSyntax(childData!)
    }
    set(value) {
      self = withCases(value)
    }
  }

  /// Adds the provided `Case` to the node's `cases`
  /// collection.
  /// - param element: The new `Case` to add to the node's
  ///                  `cases` collection.
  /// - returns: A copy of the receiver with the provided `Case`
  ///            appended to its `cases` collection.
  public func addCase(_ element: Syntax) -> SwitchStmtSyntax {
    var collection: RawSyntax
    if let col = raw[Cursor.cases] {
      collection = col.layoutView.appending(element.raw)
    } else {
      collection = RawSyntax.create(kind: SyntaxKind.switchCaseList,
        layout: [element.raw], length: element.raw.totalLength, presence: .present)
    }
    let newData = data.replacingChild(collection,
                                      at: Cursor.cases)
    return SwitchStmtSyntax(newData)
  }

  /// Returns a copy of the receiver with its `cases` replaced.
  /// - param newChild: The new `cases` to replace the node's
  ///                   current `cases`, if present.
  public func withCases(
    _ newChild: SwitchCaseListSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.switchCaseList, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.cases)
    return SwitchStmtSyntax(newData)
  }

  public var unexpectedBetweenCasesAndRightBrace: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenCasesAndRightBrace,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenCasesAndRightBrace(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenCasesAndRightBrace` replaced.
  /// - param newChild: The new `unexpectedBetweenCasesAndRightBrace` to replace the node's
  ///                   current `unexpectedBetweenCasesAndRightBrace`, if present.
  public func withUnexpectedBetweenCasesAndRightBrace(
    _ newChild: UnexpectedNodesSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenCasesAndRightBrace)
    return SwitchStmtSyntax(newData)
  }

  public var rightBrace: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.rightBrace,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withRightBrace(value)
    }
  }

  /// Returns a copy of the receiver with its `rightBrace` replaced.
  /// - param newChild: The new `rightBrace` to replace the node's
  ///                   current `rightBrace`, if present.
  public func withRightBrace(
    _ newChild: TokenSyntax?) -> SwitchStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.rightBrace, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.rightBrace)
    return SwitchStmtSyntax(newData)
  }
}

extension SwitchStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeSwitchKeyword": unexpectedBeforeSwitchKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "switchKeyword": Syntax(switchKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenSwitchKeywordAndExpression": unexpectedBetweenSwitchKeywordAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenExpressionAndLeftBrace": unexpectedBetweenExpressionAndLeftBrace.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftBrace": Syntax(leftBrace).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLeftBraceAndCases": unexpectedBetweenLeftBraceAndCases.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "cases": Syntax(cases).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenCasesAndRightBrace": unexpectedBetweenCasesAndRightBrace.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightBrace": Syntax(rightBrace).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - DoStmtSyntax

public struct DoStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeDoKeyword
    case doKeyword
    case unexpectedBetweenDoKeywordAndBody
    case body
    case unexpectedBetweenBodyAndCatchClauses
    case catchClauses
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `DoStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .doStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `DoStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .doStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeDoKeyword: UnexpectedNodesSyntax? = nil,
    doKeyword: TokenSyntax,
    _ unexpectedBetweenDoKeywordAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedBetweenBodyAndCatchClauses: UnexpectedNodesSyntax? = nil,
    catchClauses: CatchClauseListSyntax?
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeDoKeyword?.raw,
      doKeyword.raw,
      unexpectedBetweenDoKeywordAndBody?.raw,
      body.raw,
      unexpectedBetweenBodyAndCatchClauses?.raw,
      catchClauses?.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.doStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeDoKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeDoKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeDoKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeDoKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeDoKeyword` to replace the node's
  ///                   current `unexpectedBeforeDoKeyword`, if present.
  public func withUnexpectedBeforeDoKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> DoStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeDoKeyword)
    return DoStmtSyntax(newData)
  }

  public var doKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.doKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withDoKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `doKeyword` replaced.
  /// - param newChild: The new `doKeyword` to replace the node's
  ///                   current `doKeyword`, if present.
  public func withDoKeyword(
    _ newChild: TokenSyntax?) -> DoStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.doKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.doKeyword)
    return DoStmtSyntax(newData)
  }

  public var unexpectedBetweenDoKeywordAndBody: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenDoKeywordAndBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenDoKeywordAndBody(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenDoKeywordAndBody` replaced.
  /// - param newChild: The new `unexpectedBetweenDoKeywordAndBody` to replace the node's
  ///                   current `unexpectedBetweenDoKeywordAndBody`, if present.
  public func withUnexpectedBetweenDoKeywordAndBody(
    _ newChild: UnexpectedNodesSyntax?) -> DoStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenDoKeywordAndBody)
    return DoStmtSyntax(newData)
  }

  public var body: CodeBlockSyntax {
    get {
      let childData = data.child(at: Cursor.body,
                                 parent: Syntax(self))
      return CodeBlockSyntax(childData!)
    }
    set(value) {
      self = withBody(value)
    }
  }

  /// Returns a copy of the receiver with its `body` replaced.
  /// - param newChild: The new `body` to replace the node's
  ///                   current `body`, if present.
  public func withBody(
    _ newChild: CodeBlockSyntax?) -> DoStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.codeBlock, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.body)
    return DoStmtSyntax(newData)
  }

  public var unexpectedBetweenBodyAndCatchClauses: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenBodyAndCatchClauses,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenBodyAndCatchClauses(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenBodyAndCatchClauses` replaced.
  /// - param newChild: The new `unexpectedBetweenBodyAndCatchClauses` to replace the node's
  ///                   current `unexpectedBetweenBodyAndCatchClauses`, if present.
  public func withUnexpectedBetweenBodyAndCatchClauses(
    _ newChild: UnexpectedNodesSyntax?) -> DoStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenBodyAndCatchClauses)
    return DoStmtSyntax(newData)
  }

  public var catchClauses: CatchClauseListSyntax? {
    get {
      let childData = data.child(at: Cursor.catchClauses,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return CatchClauseListSyntax(childData!)
    }
    set(value) {
      self = withCatchClauses(value)
    }
  }

  /// Adds the provided `CatchClause` to the node's `catchClauses`
  /// collection.
  /// - param element: The new `CatchClause` to add to the node's
  ///                  `catchClauses` collection.
  /// - returns: A copy of the receiver with the provided `CatchClause`
  ///            appended to its `catchClauses` collection.
  public func addCatchClause(_ element: CatchClauseSyntax) -> DoStmtSyntax {
    var collection: RawSyntax
    if let col = raw[Cursor.catchClauses] {
      collection = col.layoutView.appending(element.raw)
    } else {
      collection = RawSyntax.create(kind: SyntaxKind.catchClauseList,
        layout: [element.raw], length: element.raw.totalLength, presence: .present)
    }
    let newData = data.replacingChild(collection,
                                      at: Cursor.catchClauses)
    return DoStmtSyntax(newData)
  }

  /// Returns a copy of the receiver with its `catchClauses` replaced.
  /// - param newChild: The new `catchClauses` to replace the node's
  ///                   current `catchClauses`, if present.
  public func withCatchClauses(
    _ newChild: CatchClauseListSyntax?) -> DoStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.catchClauses)
    return DoStmtSyntax(newData)
  }
}

extension DoStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeDoKeyword": unexpectedBeforeDoKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "doKeyword": Syntax(doKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenDoKeywordAndBody": unexpectedBetweenDoKeywordAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBodyAndCatchClauses": unexpectedBetweenBodyAndCatchClauses.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "catchClauses": catchClauses.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - ReturnStmtSyntax

public struct ReturnStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeReturnKeyword
    case returnKeyword
    case unexpectedBetweenReturnKeywordAndExpression
    case expression
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `ReturnStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .returnStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `ReturnStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .returnStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeReturnKeyword: UnexpectedNodesSyntax? = nil,
    returnKeyword: TokenSyntax,
    _ unexpectedBetweenReturnKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: ExprSyntax?
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeReturnKeyword?.raw,
      returnKeyword.raw,
      unexpectedBetweenReturnKeywordAndExpression?.raw,
      expression?.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.returnStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeReturnKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeReturnKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeReturnKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeReturnKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeReturnKeyword` to replace the node's
  ///                   current `unexpectedBeforeReturnKeyword`, if present.
  public func withUnexpectedBeforeReturnKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> ReturnStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeReturnKeyword)
    return ReturnStmtSyntax(newData)
  }

  public var returnKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.returnKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withReturnKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `returnKeyword` replaced.
  /// - param newChild: The new `returnKeyword` to replace the node's
  ///                   current `returnKeyword`, if present.
  public func withReturnKeyword(
    _ newChild: TokenSyntax?) -> ReturnStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.returnKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.returnKeyword)
    return ReturnStmtSyntax(newData)
  }

  public var unexpectedBetweenReturnKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenReturnKeywordAndExpression,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenReturnKeywordAndExpression(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenReturnKeywordAndExpression` replaced.
  /// - param newChild: The new `unexpectedBetweenReturnKeywordAndExpression` to replace the node's
  ///                   current `unexpectedBetweenReturnKeywordAndExpression`, if present.
  public func withUnexpectedBetweenReturnKeywordAndExpression(
    _ newChild: UnexpectedNodesSyntax?) -> ReturnStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenReturnKeywordAndExpression)
    return ReturnStmtSyntax(newData)
  }

  public var expression: ExprSyntax? {
    get {
      let childData = data.child(at: Cursor.expression,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return ExprSyntax(childData!)
    }
    set(value) {
      self = withExpression(value)
    }
  }

  /// Returns a copy of the receiver with its `expression` replaced.
  /// - param newChild: The new `expression` to replace the node's
  ///                   current `expression`, if present.
  public func withExpression(
    _ newChild: ExprSyntax?) -> ReturnStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.expression)
    return ReturnStmtSyntax(newData)
  }
}

extension ReturnStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeReturnKeyword": unexpectedBeforeReturnKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "returnKeyword": Syntax(returnKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenReturnKeywordAndExpression": unexpectedBetweenReturnKeywordAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": expression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - YieldStmtSyntax

public struct YieldStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeYieldKeyword
    case yieldKeyword
    case unexpectedBetweenYieldKeywordAndYields
    case yields
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `YieldStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .yieldStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `YieldStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .yieldStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeYieldKeyword: UnexpectedNodesSyntax? = nil,
    yieldKeyword: TokenSyntax,
    _ unexpectedBetweenYieldKeywordAndYields: UnexpectedNodesSyntax? = nil,
    yields: Syntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeYieldKeyword?.raw,
      yieldKeyword.raw,
      unexpectedBetweenYieldKeywordAndYields?.raw,
      yields.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.yieldStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeYieldKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeYieldKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeYieldKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeYieldKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeYieldKeyword` to replace the node's
  ///                   current `unexpectedBeforeYieldKeyword`, if present.
  public func withUnexpectedBeforeYieldKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> YieldStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeYieldKeyword)
    return YieldStmtSyntax(newData)
  }

  public var yieldKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.yieldKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withYieldKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `yieldKeyword` replaced.
  /// - param newChild: The new `yieldKeyword` to replace the node's
  ///                   current `yieldKeyword`, if present.
  public func withYieldKeyword(
    _ newChild: TokenSyntax?) -> YieldStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.yield, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.yieldKeyword)
    return YieldStmtSyntax(newData)
  }

  public var unexpectedBetweenYieldKeywordAndYields: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenYieldKeywordAndYields,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenYieldKeywordAndYields(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenYieldKeywordAndYields` replaced.
  /// - param newChild: The new `unexpectedBetweenYieldKeywordAndYields` to replace the node's
  ///                   current `unexpectedBetweenYieldKeywordAndYields`, if present.
  public func withUnexpectedBetweenYieldKeywordAndYields(
    _ newChild: UnexpectedNodesSyntax?) -> YieldStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenYieldKeywordAndYields)
    return YieldStmtSyntax(newData)
  }

  public var yields: Syntax {
    get {
      let childData = data.child(at: Cursor.yields,
                                 parent: Syntax(self))
      return Syntax(childData!)
    }
    set(value) {
      self = withYields(value)
    }
  }

  /// Returns a copy of the receiver with its `yields` replaced.
  /// - param newChild: The new `yields` to replace the node's
  ///                   current `yields`, if present.
  public func withYields(
    _ newChild: Syntax?) -> YieldStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.unknown, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.yields)
    return YieldStmtSyntax(newData)
  }
}

extension YieldStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeYieldKeyword": unexpectedBeforeYieldKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "yieldKeyword": Syntax(yieldKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenYieldKeywordAndYields": unexpectedBetweenYieldKeywordAndYields.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "yields": Syntax(yields).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - FallthroughStmtSyntax

public struct FallthroughStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeFallthroughKeyword
    case fallthroughKeyword
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `FallthroughStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .fallthroughStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `FallthroughStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .fallthroughStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeFallthroughKeyword: UnexpectedNodesSyntax? = nil,
    fallthroughKeyword: TokenSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeFallthroughKeyword?.raw,
      fallthroughKeyword.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.fallthroughStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeFallthroughKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeFallthroughKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeFallthroughKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeFallthroughKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeFallthroughKeyword` to replace the node's
  ///                   current `unexpectedBeforeFallthroughKeyword`, if present.
  public func withUnexpectedBeforeFallthroughKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> FallthroughStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeFallthroughKeyword)
    return FallthroughStmtSyntax(newData)
  }

  public var fallthroughKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.fallthroughKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withFallthroughKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `fallthroughKeyword` replaced.
  /// - param newChild: The new `fallthroughKeyword` to replace the node's
  ///                   current `fallthroughKeyword`, if present.
  public func withFallthroughKeyword(
    _ newChild: TokenSyntax?) -> FallthroughStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.fallthroughKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.fallthroughKeyword)
    return FallthroughStmtSyntax(newData)
  }
}

extension FallthroughStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeFallthroughKeyword": unexpectedBeforeFallthroughKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "fallthroughKeyword": Syntax(fallthroughKeyword).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - BreakStmtSyntax

public struct BreakStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeBreakKeyword
    case breakKeyword
    case unexpectedBetweenBreakKeywordAndLabel
    case label
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `BreakStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .breakStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `BreakStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .breakStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeBreakKeyword: UnexpectedNodesSyntax? = nil,
    breakKeyword: TokenSyntax,
    _ unexpectedBetweenBreakKeywordAndLabel: UnexpectedNodesSyntax? = nil,
    label: TokenSyntax?
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeBreakKeyword?.raw,
      breakKeyword.raw,
      unexpectedBetweenBreakKeywordAndLabel?.raw,
      label?.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.breakStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeBreakKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeBreakKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeBreakKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeBreakKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeBreakKeyword` to replace the node's
  ///                   current `unexpectedBeforeBreakKeyword`, if present.
  public func withUnexpectedBeforeBreakKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> BreakStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeBreakKeyword)
    return BreakStmtSyntax(newData)
  }

  public var breakKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.breakKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withBreakKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `breakKeyword` replaced.
  /// - param newChild: The new `breakKeyword` to replace the node's
  ///                   current `breakKeyword`, if present.
  public func withBreakKeyword(
    _ newChild: TokenSyntax?) -> BreakStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.breakKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.breakKeyword)
    return BreakStmtSyntax(newData)
  }

  public var unexpectedBetweenBreakKeywordAndLabel: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenBreakKeywordAndLabel,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenBreakKeywordAndLabel(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenBreakKeywordAndLabel` replaced.
  /// - param newChild: The new `unexpectedBetweenBreakKeywordAndLabel` to replace the node's
  ///                   current `unexpectedBetweenBreakKeywordAndLabel`, if present.
  public func withUnexpectedBetweenBreakKeywordAndLabel(
    _ newChild: UnexpectedNodesSyntax?) -> BreakStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenBreakKeywordAndLabel)
    return BreakStmtSyntax(newData)
  }

  public var label: TokenSyntax? {
    get {
      let childData = data.child(at: Cursor.label,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withLabel(value)
    }
  }

  /// Returns a copy of the receiver with its `label` replaced.
  /// - param newChild: The new `label` to replace the node's
  ///                   current `label`, if present.
  public func withLabel(
    _ newChild: TokenSyntax?) -> BreakStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.label)
    return BreakStmtSyntax(newData)
  }
}

extension BreakStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeBreakKeyword": unexpectedBeforeBreakKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "breakKeyword": Syntax(breakKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBreakKeywordAndLabel": unexpectedBetweenBreakKeywordAndLabel.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "label": label.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - DeclarationStmtSyntax

public struct DeclarationStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeDeclaration
    case declaration
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `DeclarationStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .declarationStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `DeclarationStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .declarationStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeDeclaration: UnexpectedNodesSyntax? = nil,
    declaration: DeclSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeDeclaration?.raw,
      declaration.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.declarationStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeDeclaration: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeDeclaration,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeDeclaration(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeDeclaration` replaced.
  /// - param newChild: The new `unexpectedBeforeDeclaration` to replace the node's
  ///                   current `unexpectedBeforeDeclaration`, if present.
  public func withUnexpectedBeforeDeclaration(
    _ newChild: UnexpectedNodesSyntax?) -> DeclarationStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeDeclaration)
    return DeclarationStmtSyntax(newData)
  }

  public var declaration: DeclSyntax {
    get {
      let childData = data.child(at: Cursor.declaration,
                                 parent: Syntax(self))
      return DeclSyntax(childData!)
    }
    set(value) {
      self = withDeclaration(value)
    }
  }

  /// Returns a copy of the receiver with its `declaration` replaced.
  /// - param newChild: The new `declaration` to replace the node's
  ///                   current `declaration`, if present.
  public func withDeclaration(
    _ newChild: DeclSyntax?) -> DeclarationStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingDecl, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.declaration)
    return DeclarationStmtSyntax(newData)
  }
}

extension DeclarationStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeDeclaration": unexpectedBeforeDeclaration.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "declaration": Syntax(declaration).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - ThrowStmtSyntax

public struct ThrowStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeThrowKeyword
    case throwKeyword
    case unexpectedBetweenThrowKeywordAndExpression
    case expression
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `ThrowStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .throwStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `ThrowStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .throwStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeThrowKeyword: UnexpectedNodesSyntax? = nil,
    throwKeyword: TokenSyntax,
    _ unexpectedBetweenThrowKeywordAndExpression: UnexpectedNodesSyntax? = nil,
    expression: ExprSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeThrowKeyword?.raw,
      throwKeyword.raw,
      unexpectedBetweenThrowKeywordAndExpression?.raw,
      expression.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.throwStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeThrowKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeThrowKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeThrowKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeThrowKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeThrowKeyword` to replace the node's
  ///                   current `unexpectedBeforeThrowKeyword`, if present.
  public func withUnexpectedBeforeThrowKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> ThrowStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeThrowKeyword)
    return ThrowStmtSyntax(newData)
  }

  public var throwKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.throwKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withThrowKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `throwKeyword` replaced.
  /// - param newChild: The new `throwKeyword` to replace the node's
  ///                   current `throwKeyword`, if present.
  public func withThrowKeyword(
    _ newChild: TokenSyntax?) -> ThrowStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.throwKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.throwKeyword)
    return ThrowStmtSyntax(newData)
  }

  public var unexpectedBetweenThrowKeywordAndExpression: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenThrowKeywordAndExpression,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenThrowKeywordAndExpression(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenThrowKeywordAndExpression` replaced.
  /// - param newChild: The new `unexpectedBetweenThrowKeywordAndExpression` to replace the node's
  ///                   current `unexpectedBetweenThrowKeywordAndExpression`, if present.
  public func withUnexpectedBetweenThrowKeywordAndExpression(
    _ newChild: UnexpectedNodesSyntax?) -> ThrowStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenThrowKeywordAndExpression)
    return ThrowStmtSyntax(newData)
  }

  public var expression: ExprSyntax {
    get {
      let childData = data.child(at: Cursor.expression,
                                 parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      self = withExpression(value)
    }
  }

  /// Returns a copy of the receiver with its `expression` replaced.
  /// - param newChild: The new `expression` to replace the node's
  ///                   current `expression`, if present.
  public func withExpression(
    _ newChild: ExprSyntax?) -> ThrowStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingExpr, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.expression)
    return ThrowStmtSyntax(newData)
  }
}

extension ThrowStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeThrowKeyword": unexpectedBeforeThrowKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "throwKeyword": Syntax(throwKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenThrowKeywordAndExpression": unexpectedBetweenThrowKeywordAndExpression.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "expression": Syntax(expression).asProtocol(SyntaxProtocol.self),
    ])
  }
}

// MARK: - IfStmtSyntax

public struct IfStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforeIfKeyword
    case ifKeyword
    case unexpectedBetweenIfKeywordAndConditions
    case conditions
    case unexpectedBetweenConditionsAndBody
    case body
    case unexpectedBetweenBodyAndElseKeyword
    case elseKeyword
    case unexpectedBetweenElseKeywordAndElseBody
    case elseBody
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `IfStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .ifStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `IfStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .ifStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeIfKeyword: UnexpectedNodesSyntax? = nil,
    ifKeyword: TokenSyntax,
    _ unexpectedBetweenIfKeywordAndConditions: UnexpectedNodesSyntax? = nil,
    conditions: ConditionElementListSyntax,
    _ unexpectedBetweenConditionsAndBody: UnexpectedNodesSyntax? = nil,
    body: CodeBlockSyntax,
    _ unexpectedBetweenBodyAndElseKeyword: UnexpectedNodesSyntax? = nil,
    elseKeyword: TokenSyntax?,
    _ unexpectedBetweenElseKeywordAndElseBody: UnexpectedNodesSyntax? = nil,
    elseBody: Syntax?
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeIfKeyword?.raw,
      ifKeyword.raw,
      unexpectedBetweenIfKeywordAndConditions?.raw,
      conditions.raw,
      unexpectedBetweenConditionsAndBody?.raw,
      body.raw,
      unexpectedBetweenBodyAndElseKeyword?.raw,
      elseKeyword?.raw,
      unexpectedBetweenElseKeywordAndElseBody?.raw,
      elseBody?.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.ifStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforeIfKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforeIfKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeIfKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeIfKeyword` replaced.
  /// - param newChild: The new `unexpectedBeforeIfKeyword` to replace the node's
  ///                   current `unexpectedBeforeIfKeyword`, if present.
  public func withUnexpectedBeforeIfKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforeIfKeyword)
    return IfStmtSyntax(newData)
  }

  public var ifKeyword: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.ifKeyword,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withIfKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `ifKeyword` replaced.
  /// - param newChild: The new `ifKeyword` to replace the node's
  ///                   current `ifKeyword`, if present.
  public func withIfKeyword(
    _ newChild: TokenSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.ifKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.ifKeyword)
    return IfStmtSyntax(newData)
  }

  public var unexpectedBetweenIfKeywordAndConditions: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenIfKeywordAndConditions,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenIfKeywordAndConditions(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenIfKeywordAndConditions` replaced.
  /// - param newChild: The new `unexpectedBetweenIfKeywordAndConditions` to replace the node's
  ///                   current `unexpectedBetweenIfKeywordAndConditions`, if present.
  public func withUnexpectedBetweenIfKeywordAndConditions(
    _ newChild: UnexpectedNodesSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenIfKeywordAndConditions)
    return IfStmtSyntax(newData)
  }

  public var conditions: ConditionElementListSyntax {
    get {
      let childData = data.child(at: Cursor.conditions,
                                 parent: Syntax(self))
      return ConditionElementListSyntax(childData!)
    }
    set(value) {
      self = withConditions(value)
    }
  }

  /// Adds the provided `Condition` to the node's `conditions`
  /// collection.
  /// - param element: The new `Condition` to add to the node's
  ///                  `conditions` collection.
  /// - returns: A copy of the receiver with the provided `Condition`
  ///            appended to its `conditions` collection.
  public func addCondition(_ element: ConditionElementSyntax) -> IfStmtSyntax {
    var collection: RawSyntax
    if let col = raw[Cursor.conditions] {
      collection = col.layoutView.appending(element.raw)
    } else {
      collection = RawSyntax.create(kind: SyntaxKind.conditionElementList,
        layout: [element.raw], length: element.raw.totalLength, presence: .present)
    }
    let newData = data.replacingChild(collection,
                                      at: Cursor.conditions)
    return IfStmtSyntax(newData)
  }

  /// Returns a copy of the receiver with its `conditions` replaced.
  /// - param newChild: The new `conditions` to replace the node's
  ///                   current `conditions`, if present.
  public func withConditions(
    _ newChild: ConditionElementListSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.conditionElementList, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.conditions)
    return IfStmtSyntax(newData)
  }

  public var unexpectedBetweenConditionsAndBody: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenConditionsAndBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenConditionsAndBody(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenConditionsAndBody` replaced.
  /// - param newChild: The new `unexpectedBetweenConditionsAndBody` to replace the node's
  ///                   current `unexpectedBetweenConditionsAndBody`, if present.
  public func withUnexpectedBetweenConditionsAndBody(
    _ newChild: UnexpectedNodesSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenConditionsAndBody)
    return IfStmtSyntax(newData)
  }

  public var body: CodeBlockSyntax {
    get {
      let childData = data.child(at: Cursor.body,
                                 parent: Syntax(self))
      return CodeBlockSyntax(childData!)
    }
    set(value) {
      self = withBody(value)
    }
  }

  /// Returns a copy of the receiver with its `body` replaced.
  /// - param newChild: The new `body` to replace the node's
  ///                   current `body`, if present.
  public func withBody(
    _ newChild: CodeBlockSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.codeBlock, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.body)
    return IfStmtSyntax(newData)
  }

  public var unexpectedBetweenBodyAndElseKeyword: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenBodyAndElseKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenBodyAndElseKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenBodyAndElseKeyword` replaced.
  /// - param newChild: The new `unexpectedBetweenBodyAndElseKeyword` to replace the node's
  ///                   current `unexpectedBetweenBodyAndElseKeyword`, if present.
  public func withUnexpectedBetweenBodyAndElseKeyword(
    _ newChild: UnexpectedNodesSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenBodyAndElseKeyword)
    return IfStmtSyntax(newData)
  }

  public var elseKeyword: TokenSyntax? {
    get {
      let childData = data.child(at: Cursor.elseKeyword,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withElseKeyword(value)
    }
  }

  /// Returns a copy of the receiver with its `elseKeyword` replaced.
  /// - param newChild: The new `elseKeyword` to replace the node's
  ///                   current `elseKeyword`, if present.
  public func withElseKeyword(
    _ newChild: TokenSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.elseKeyword)
    return IfStmtSyntax(newData)
  }

  public var unexpectedBetweenElseKeywordAndElseBody: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenElseKeywordAndElseBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenElseKeywordAndElseBody(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenElseKeywordAndElseBody` replaced.
  /// - param newChild: The new `unexpectedBetweenElseKeywordAndElseBody` to replace the node's
  ///                   current `unexpectedBetweenElseKeywordAndElseBody`, if present.
  public func withUnexpectedBetweenElseKeywordAndElseBody(
    _ newChild: UnexpectedNodesSyntax?) -> IfStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenElseKeywordAndElseBody)
    return IfStmtSyntax(newData)
  }

  public var elseBody: Syntax? {
    get {
      let childData = data.child(at: Cursor.elseBody,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return Syntax(childData!)
    }
    set(value) {
      self = withElseBody(value)
    }
  }

  /// Returns a copy of the receiver with its `elseBody` replaced.
  /// - param newChild: The new `elseBody` to replace the node's
  ///                   current `elseBody`, if present.
  public func withElseBody(
    _ newChild: Syntax?) -> IfStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.elseBody)
    return IfStmtSyntax(newData)
  }
}

extension IfStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeIfKeyword": unexpectedBeforeIfKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "ifKeyword": Syntax(ifKeyword).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenIfKeywordAndConditions": unexpectedBetweenIfKeywordAndConditions.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "conditions": Syntax(conditions).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenConditionsAndBody": unexpectedBetweenConditionsAndBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "body": Syntax(body).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenBodyAndElseKeyword": unexpectedBetweenBodyAndElseKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "elseKeyword": elseKeyword.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenElseKeywordAndElseBody": unexpectedBetweenElseKeywordAndElseBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "elseBody": elseBody.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
    ])
  }
}

// MARK: - PoundAssertStmtSyntax

public struct PoundAssertStmtSyntax: StmtSyntaxProtocol, SyntaxHashable {
  enum Cursor: Int {
    case unexpectedBeforePoundAssert
    case poundAssert
    case unexpectedBetweenPoundAssertAndLeftParen
    case leftParen
    case unexpectedBetweenLeftParenAndCondition
    case condition
    case unexpectedBetweenConditionAndComma
    case comma
    case unexpectedBetweenCommaAndMessage
    case message
    case unexpectedBetweenMessageAndRightParen
    case rightParen
  }

  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `PoundAssertStmtSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .poundAssertStmt else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `PoundAssertStmtSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .poundAssertStmt)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforePoundAssert: UnexpectedNodesSyntax? = nil,
    poundAssert: TokenSyntax,
    _ unexpectedBetweenPoundAssertAndLeftParen: UnexpectedNodesSyntax? = nil,
    leftParen: TokenSyntax,
    _ unexpectedBetweenLeftParenAndCondition: UnexpectedNodesSyntax? = nil,
    condition: ExprSyntax,
    _ unexpectedBetweenConditionAndComma: UnexpectedNodesSyntax? = nil,
    comma: TokenSyntax?,
    _ unexpectedBetweenCommaAndMessage: UnexpectedNodesSyntax? = nil,
    message: TokenSyntax?,
    _ unexpectedBetweenMessageAndRightParen: UnexpectedNodesSyntax? = nil,
    rightParen: TokenSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforePoundAssert?.raw,
      poundAssert.raw,
      unexpectedBetweenPoundAssertAndLeftParen?.raw,
      leftParen.raw,
      unexpectedBetweenLeftParenAndCondition?.raw,
      condition.raw,
      unexpectedBetweenConditionAndComma?.raw,
      comma?.raw,
      unexpectedBetweenCommaAndMessage?.raw,
      message?.raw,
      unexpectedBetweenMessageAndRightParen?.raw,
      rightParen.raw,
    ]
    let raw = RawSyntax.createAndCalcLength(kind: SyntaxKind.poundAssertStmt,
      layout: layout, presence: SourcePresence.present)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var syntaxNodeType: SyntaxProtocol.Type {
    return Swift.type(of: self)
  }

  public var unexpectedBeforePoundAssert: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBeforePoundAssert,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforePoundAssert(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforePoundAssert` replaced.
  /// - param newChild: The new `unexpectedBeforePoundAssert` to replace the node's
  ///                   current `unexpectedBeforePoundAssert`, if present.
  public func withUnexpectedBeforePoundAssert(
    _ newChild: UnexpectedNodesSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBeforePoundAssert)
    return PoundAssertStmtSyntax(newData)
  }

  public var poundAssert: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.poundAssert,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withPoundAssert(value)
    }
  }

  /// Returns a copy of the receiver with its `poundAssert` replaced.
  /// - param newChild: The new `poundAssert` to replace the node's
  ///                   current `poundAssert`, if present.
  public func withPoundAssert(
    _ newChild: TokenSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.poundAssertKeyword, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.poundAssert)
    return PoundAssertStmtSyntax(newData)
  }

  public var unexpectedBetweenPoundAssertAndLeftParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenPoundAssertAndLeftParen,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenPoundAssertAndLeftParen(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenPoundAssertAndLeftParen` replaced.
  /// - param newChild: The new `unexpectedBetweenPoundAssertAndLeftParen` to replace the node's
  ///                   current `unexpectedBetweenPoundAssertAndLeftParen`, if present.
  public func withUnexpectedBetweenPoundAssertAndLeftParen(
    _ newChild: UnexpectedNodesSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenPoundAssertAndLeftParen)
    return PoundAssertStmtSyntax(newData)
  }

  public var leftParen: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.leftParen,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withLeftParen(value)
    }
  }

  /// Returns a copy of the receiver with its `leftParen` replaced.
  /// - param newChild: The new `leftParen` to replace the node's
  ///                   current `leftParen`, if present.
  public func withLeftParen(
    _ newChild: TokenSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.leftParen, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.leftParen)
    return PoundAssertStmtSyntax(newData)
  }

  public var unexpectedBetweenLeftParenAndCondition: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenLeftParenAndCondition,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenLeftParenAndCondition(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenLeftParenAndCondition` replaced.
  /// - param newChild: The new `unexpectedBetweenLeftParenAndCondition` to replace the node's
  ///                   current `unexpectedBetweenLeftParenAndCondition`, if present.
  public func withUnexpectedBetweenLeftParenAndCondition(
    _ newChild: UnexpectedNodesSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenLeftParenAndCondition)
    return PoundAssertStmtSyntax(newData)
  }

  /// The assertion condition.
  public var condition: ExprSyntax {
    get {
      let childData = data.child(at: Cursor.condition,
                                 parent: Syntax(self))
      return ExprSyntax(childData!)
    }
    set(value) {
      self = withCondition(value)
    }
  }

  /// Returns a copy of the receiver with its `condition` replaced.
  /// - param newChild: The new `condition` to replace the node's
  ///                   current `condition`, if present.
  public func withCondition(
    _ newChild: ExprSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.missingExpr, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.condition)
    return PoundAssertStmtSyntax(newData)
  }

  public var unexpectedBetweenConditionAndComma: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenConditionAndComma,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenConditionAndComma(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenConditionAndComma` replaced.
  /// - param newChild: The new `unexpectedBetweenConditionAndComma` to replace the node's
  ///                   current `unexpectedBetweenConditionAndComma`, if present.
  public func withUnexpectedBetweenConditionAndComma(
    _ newChild: UnexpectedNodesSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenConditionAndComma)
    return PoundAssertStmtSyntax(newData)
  }

  /// The comma after the assertion condition.
  public var comma: TokenSyntax? {
    get {
      let childData = data.child(at: Cursor.comma,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withComma(value)
    }
  }

  /// Returns a copy of the receiver with its `comma` replaced.
  /// - param newChild: The new `comma` to replace the node's
  ///                   current `comma`, if present.
  public func withComma(
    _ newChild: TokenSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.comma)
    return PoundAssertStmtSyntax(newData)
  }

  public var unexpectedBetweenCommaAndMessage: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenCommaAndMessage,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenCommaAndMessage(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenCommaAndMessage` replaced.
  /// - param newChild: The new `unexpectedBetweenCommaAndMessage` to replace the node's
  ///                   current `unexpectedBetweenCommaAndMessage`, if present.
  public func withUnexpectedBetweenCommaAndMessage(
    _ newChild: UnexpectedNodesSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenCommaAndMessage)
    return PoundAssertStmtSyntax(newData)
  }

  /// The assertion message.
  public var message: TokenSyntax? {
    get {
      let childData = data.child(at: Cursor.message,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withMessage(value)
    }
  }

  /// Returns a copy of the receiver with its `message` replaced.
  /// - param newChild: The new `message` to replace the node's
  ///                   current `message`, if present.
  public func withMessage(
    _ newChild: TokenSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.message)
    return PoundAssertStmtSyntax(newData)
  }

  public var unexpectedBetweenMessageAndRightParen: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: Cursor.unexpectedBetweenMessageAndRightParen,
                                 parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenMessageAndRightParen(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenMessageAndRightParen` replaced.
  /// - param newChild: The new `unexpectedBetweenMessageAndRightParen` to replace the node's
  ///                   current `unexpectedBetweenMessageAndRightParen`, if present.
  public func withUnexpectedBetweenMessageAndRightParen(
    _ newChild: UnexpectedNodesSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: Cursor.unexpectedBetweenMessageAndRightParen)
    return PoundAssertStmtSyntax(newData)
  }

  public var rightParen: TokenSyntax {
    get {
      let childData = data.child(at: Cursor.rightParen,
                                 parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withRightParen(value)
    }
  }

  /// Returns a copy of the receiver with its `rightParen` replaced.
  /// - param newChild: The new `rightParen` to replace the node's
  ///                   current `rightParen`, if present.
  public func withRightParen(
    _ newChild: TokenSyntax?) -> PoundAssertStmtSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.rightParen, arena: .default)
    let newData = data.replacingChild(raw, at: Cursor.rightParen)
    return PoundAssertStmtSyntax(newData)
  }
}

extension PoundAssertStmtSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforePoundAssert": unexpectedBeforePoundAssert.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "poundAssert": Syntax(poundAssert).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenPoundAssertAndLeftParen": unexpectedBetweenPoundAssertAndLeftParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "leftParen": Syntax(leftParen).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLeftParenAndCondition": unexpectedBetweenLeftParenAndCondition.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "condition": Syntax(condition).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenConditionAndComma": unexpectedBetweenConditionAndComma.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "comma": comma.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenCommaAndMessage": unexpectedBetweenCommaAndMessage.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "message": message.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "unexpectedBetweenMessageAndRightParen": unexpectedBetweenMessageAndRightParen.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "rightParen": Syntax(rightParen).asProtocol(SyntaxProtocol.self),
    ])
  }
}

