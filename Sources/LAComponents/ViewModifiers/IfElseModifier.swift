//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

public extension View {

  /// Apply a struct modifier to the *if case* or to the *else case* depending on a ``Binding Bool``.
  ///
  /// - Parameters:
  ///     - condition: ``Binding Bool``.
  ///     - trueModifier: A ``ViewModifier`` struct apply to the *if case*.
  ///     - falseModifier: A ``ViewModifier`` struct apply to the *else case*.
  func ifElseModifier<M1, M2>(for condition: Binding<Bool>, if trueModifier: M1, else falseModifier: M2) -> some View where M1: ViewModifier, M2: ViewModifier {
    Group {
      if condition.wrappedValue {
        self.modifier(trueModifier)
      } else {
        self.modifier(falseModifier)
      }
    }
  }

  /// Apply a struct modifier to the *if case* or to the *else case* depending on a ``Bool``.
  /// 
  /// - Parameters:
  ///     - condition: ``Bool``.
  ///     - trueModifier: A ``ViewModifier`` struct apply to the *if case*.
  ///     - falseModifier: A ``ViewModifier`` struct apply to the *else case*.
  func ifElseModifier<M1, M2>(for condition: Bool, if trueModifier: M1, else falseModifier: M2) -> some View where M1: ViewModifier, M2: ViewModifier {
    Group {
      if condition {
        self.modifier(trueModifier)
      } else {
        self.modifier(falseModifier)
      }
    }
  }
}
