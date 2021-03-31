//
//
//  Copyright (c) 2021 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Executes a closure depending on a `Binding<Bool>` to apply a `ViewModifier` on a `View`.
  ///
  /// - Parameters:
  ///   - condition: `Binding<Bool>`.
  ///   - transform: The transformation to be applied to the `View` passed as a parameter to the closure if the `condition` is true.
  @ViewBuilder func `if`<Content: View>(_ condition: Binding<Bool>, _ transform: (Self) -> Content) -> some View {
    if condition.wrappedValue {
      transform(self)
    } else {
      self
    }
  }

  /// Executes a closure depending on a `Bool` to apply a `ViewModifier` on a `View`.
  ///
  /// - Parameters:
  ///   - condition: `Bool`.
  ///   - transform: The transformation to be applied to the `View` passed as a parameter to the closure if the `condition` is true.
  @ViewBuilder func `if`<Content: View>(_ condition: Bool, _ transform: (Self) -> Content) -> some View {
    if condition {
      transform(self)
    } else {
      self
    }
  }

  /// Executes one closure or another depending on a `Binding<Bool>` to apply a `ViewModifier` on a `View`.
  ///
  /// - Parameters:
  ///   - condition: `Binding<Bool>`.
  ///   - ifTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `condition` is true.
  ///   - elseTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `condition` is false.
  @ViewBuilder func `if`<IfContent: View, ElseContent: View>(_ condition: Binding<Bool>, _ ifTransform: (Self) -> IfContent, else elseTransform: (Self) -> ElseContent) -> some View {
    if condition.wrappedValue {
      ifTransform(self)
    } else {
      elseTransform(self)
    }
  }

  /// Executes one closure or another depending on a `Bool` to apply a `ViewModifier` on a `View`.
  ///
  /// - Parameters:
  ///   - condition: `Binding<Bool>`.
  ///   - ifTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `condition` is true.
  ///   - elseTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `condition` is false.
  @ViewBuilder func `if`<IfContent: View, ElseContent: View>(_ condition: Bool, _ ifTransform: (Self) -> IfContent, else elseTransform: (Self) -> ElseContent) -> some View {
    if condition {
      ifTransform(self)
    } else {
      elseTransform(self)
    }
  }
}
