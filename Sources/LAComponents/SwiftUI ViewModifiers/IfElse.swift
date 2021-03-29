//
//
//  Copyright (c) 2021 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Apply a modifier to the if case or to the else case depending on a `Binding<Bool>`.
  ///
  /// - Parameters:
  ///   - condition: `Binding<Bool>`.
  ///   - ifTransform: The transformation closure to be applied to the `View` passed as a parameter to this closure if the `condition` is true.
  ///   - elseTransform: The transformation closure to be applied to the `View` passed as a parameter to this closure if the `condition` is false.
  @ViewBuilder func `if`<TrueContent: View, FalseContent: View>(_ condition: Binding<Bool>, if ifTransform: (Self) -> TrueContent, else elseTransform: (Self) -> FalseContent) -> some View {
    if condition.wrappedValue {
      ifTransform(self)
    } else {
      elseTransform(self)
    }
  }

  /// Apply a modifier to the if case or to the else case depending on a `Bool`.
  ///
  /// - Parameters:
  ///   - condition: `Binding<Bool>`.
  ///   - ifTransform: The transformation closure to be applied to the `View` passed as a parameter to this closure if the `condition` is true.
  ///   - elseTransform: The transformation closure to be applied to the `View` passed as a parameter to this closure if the `condition` is false.
  @ViewBuilder func `if`<TrueContent: View, FalseContent: View>(_ condition: Bool, if ifTransform: (Self) -> TrueContent, else elseTransform: (Self) -> FalseContent) -> some View {
    if condition {
      ifTransform(self)
    } else {
      elseTransform(self)
    }
  }
}
