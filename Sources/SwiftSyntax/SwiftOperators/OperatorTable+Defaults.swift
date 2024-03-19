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

import SwiftSyntax

/// Prefabricated operator precedence graphs.
extension OperatorTable {
  /// ExpressionOperator precedence graph for the logical operators '&&' and '||', for
  /// example as it is used in `#if` processing.
  public static var logicalOperators: OperatorTable {
    let precedenceGroups: [PrecedenceGroup] = [
      PrecedenceGroup(
        name: "LogicalConjunctionPrecedence",
        associativity: .left,
        assignment: false,
        relations: [.higherThan("LogicalDisjunctionPrecedence")]
      ),
      PrecedenceGroup(
        name: "LogicalDisjunctionPrecedence",
        associativity: .left,
        assignment: false,
        relations: []
      ),
    ]

    let operators: [ExpressionOperator] = [
      ExpressionOperator(kind: .prefix, name: "!"),
      ExpressionOperator(
        kind: .infix,
        name: "&&",
        precedenceGroup: "LogicalConjunctionPrecedence"
      ),
      ExpressionOperator(
        kind: .infix,
        name: "||",
        precedenceGroup: "LogicalDisjunctionPrecedence"
      ),
    ]

    return try! OperatorTable(
      precedenceGroups: precedenceGroups,
      operators: operators
    )
  }

  /// ExpressionOperator precedence graph for the Swift standard library.
  ///
  /// This describes the operators within the Swift standard library at the
  /// type of this writing. It can be used to approximate the behavior one
  /// would get from parsing the actual Swift standard library's operators
  /// without requiring access to the standard library source code. However,
  /// because it does not incorporate user-defined operators, it will only
  /// ever be useful for a quick approximation.
  public static var standardOperators: OperatorTable {
    let precedenceGroups: [PrecedenceGroup] = [
      PrecedenceGroup(
        name: "AssignmentPrecedence",
        associativity: .right,
        assignment: true
      ),

      PrecedenceGroup(
        name: "FunctionArrowPrecedence",
        associativity: .right,
        relations: [.higherThan("AssignmentPrecedence")]
      ),

      PrecedenceGroup(
        name: "TernaryPrecedence",
        associativity: .right,
        relations: [.higherThan("FunctionArrowPrecedence")]
      ),

      PrecedenceGroup(
        name: "DefaultPrecedence",
        relations: [.higherThan("TernaryPrecedence")]
      ),

      PrecedenceGroup(
        name: "LogicalDisjunctionPrecedence",
        associativity: .left,
        relations: [.higherThan("TernaryPrecedence")]
      ),

      PrecedenceGroup(
        name: "LogicalConjunctionPrecedence",
        associativity: .left,
        relations: [.higherThan("LogicalDisjunctionPrecedence")]
      ),

      PrecedenceGroup(
        name: "ComparisonPrecedence",
        relations: [.higherThan("LogicalConjunctionPrecedence")]
      ),

      PrecedenceGroup(
        name: "NilCoalescingPrecedence",
        associativity: .right,
        relations: [.higherThan("ComparisonPrecedence")]
      ),

      PrecedenceGroup(
        name: "CastingPrecedence",
        relations: [.higherThan("NilCoalescingPrecedence")]
      ),

      PrecedenceGroup(
        name: "RangeFormationPrecedence",
        relations: [.higherThan("CastingPrecedence")]
      ),

      PrecedenceGroup(
        name: "AdditionPrecedence",
        associativity: .left,
        relations: [.higherThan("RangeFormationPrecedence")]
      ),

      PrecedenceGroup(
        name: "MultiplicationPrecedence",
        associativity: .left,
        relations: [.higherThan("AdditionPrecedence")]
      ),

      PrecedenceGroup(
        name: "BitwiseShiftPrecedence",
        relations: [.higherThan("MultiplicationPrecedence")]
      ),
    ]

    let operators: [ExpressionOperator] = [
      // Standard postfix operators.
      ExpressionOperator(kind: .postfix, name: "++"),
      ExpressionOperator(kind: .postfix, name: "--"),
      ExpressionOperator(kind: .postfix, name: "..."),

      // Standard prefix operators.
      ExpressionOperator(kind: .prefix, name: "++"),
      ExpressionOperator(kind: .prefix, name: "--"),
      ExpressionOperator(kind: .prefix, name: "!"),
      ExpressionOperator(kind: .prefix, name: "~"),
      ExpressionOperator(kind: .prefix, name: "+"),
      ExpressionOperator(kind: .prefix, name: "-"),
      ExpressionOperator(kind: .prefix, name: "..."),
      ExpressionOperator(kind: .prefix, name: "..<"),

      // "Exponentiative"
      ExpressionOperator(
        kind: .infix,
        name: "<<",
        precedenceGroup: "BitwiseShiftPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&<<",
        precedenceGroup: "BitwiseShiftPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: ">>",
        precedenceGroup: "BitwiseShiftPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&>>",
        precedenceGroup: "BitwiseShiftPrecedence"
      ),

      // "Multiplicative"
      ExpressionOperator(
        kind: .infix,
        name: "*",
        precedenceGroup: "MultiplicationPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&*",
        precedenceGroup: "MultiplicationPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "/",
        precedenceGroup: "MultiplicationPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "%",
        precedenceGroup: "MultiplicationPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&",
        precedenceGroup: "MultiplicationPrecedence"
      ),

      // "Additive"
      ExpressionOperator(
        kind: .infix,
        name: "+",
        precedenceGroup: "AdditionPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&+",
        precedenceGroup: "AdditionPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "-",
        precedenceGroup: "AdditionPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&-",
        precedenceGroup: "AdditionPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "|",
        precedenceGroup: "AdditionPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "^",
        precedenceGroup: "AdditionPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "...",
        precedenceGroup: "RangeFormationPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "..<",
        precedenceGroup: "RangeFormationPrecedence"
      ),

      // "Coalescing"
      ExpressionOperator(
        kind: .infix,
        name: "??",
        precedenceGroup: "NilCoalescingPrecedence"
      ),

      // "Comparative"
      ExpressionOperator(
        kind: .infix,
        name: "<",
        precedenceGroup: "ComparisonPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "<=",
        precedenceGroup: "ComparisonPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: ">",
        precedenceGroup: "ComparisonPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: ">=",
        precedenceGroup: "ComparisonPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "==",
        precedenceGroup: "ComparisonPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "!=",
        precedenceGroup: "ComparisonPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "===",
        precedenceGroup: "ComparisonPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "!==",
        precedenceGroup: "ComparisonPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "~=",
        precedenceGroup: "ComparisonPrecedence"
      ),

      // "Conjunctive"
      ExpressionOperator(
        kind: .infix,
        name: "&&",
        precedenceGroup: "LogicalConjunctionPrecedence"
      ),

      // "Disjunctive"
      ExpressionOperator(
        kind: .infix,
        name: "||",
        precedenceGroup: "LogicalDisjunctionPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "*=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&*=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "/=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "%=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "+=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&+=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "-=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&-=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "<<=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&<<=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: ">>=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&>>=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "&=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "^=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "|=",
        precedenceGroup: "AssignmentPrecedence"
      ),

      ExpressionOperator(
        kind: .infix,
        name: "~>"
      ),
    ]

    return try! OperatorTable(
      precedenceGroups: precedenceGroups,
      operators: operators
    )
  }
}
