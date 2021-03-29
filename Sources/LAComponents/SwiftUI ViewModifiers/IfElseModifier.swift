//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Apply a struct modifier to the if case or to the else case depending on a `Binding<Bool>`.
  ///
  /// - Parameters:
  ///   - condition: `Binding<Bool>`.
  ///   - trueModifier: A `ViewModifier` struct apply to the if case.
  ///   - falseModifier: A `ViewModifier` struct apply to the else case.
  @ViewBuilder func ifElseModifier<T: ViewModifier, U: ViewModifier>(_ condition: Binding<Bool>, if trueModifier: T, else falseModifier: U) -> some View {
    if condition.wrappedValue {
      self
        .modifier(trueModifier)
    } else {
      self
        .modifier(falseModifier)
    }
  }

  /// Apply a struct modifier to the if case or to the else case depending on a `Bool`.
  /// 
  /// - Parameters:
  ///   - condition: `Bool`.
  ///   - trueModifier: A `ViewModifier` struct apply to the if case.
  ///   - falseModifier: A `ViewModifier` struct apply to the else case.
  @ViewBuilder func ifElseModifier<T: ViewModifier, U: ViewModifier>(_ condition: Bool, if trueModifier: T, else falseModifier: U) -> some View {
    if condition {
      self
        .modifier(trueModifier)
    } else {
      self
        .modifier(falseModifier)
    }
  }
}
