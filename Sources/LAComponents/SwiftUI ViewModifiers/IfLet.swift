//
//
//  Copyright (c) 2021 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Executes a closure depending on a `Binding<T?>` to apply a `ViewModifier` on a `View`.
  ///
  /// - Parameters:
  ///   - value: `Binding<T?>`.
  ///   - transform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is not `nil`.
  @ViewBuilder func ifLet<T, Content: View>(_ value: Binding<T?>, _ transform: (Self, T) -> Content) -> some View {
    if let value = value.wrappedValue {
      transform(self, value)
    } else {
      self
    }
  }

  /// Executes a closure depending on a `T?` to apply a `ViewModifier` on a `View`.
  ///
  /// - Parameters:
  ///   - value: `T?`.
  ///   - transform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is not `nil`.
  @ViewBuilder func ifLet<T, Content: View>(_ value: T?, _ transform: (Self, T) -> Content) -> some View {
    if let value = value {
      transform(self, value)
    } else {
      self
    }
  }

  /// Executes one closure or another depending on a `Binding<T?>` to apply a `ViewModifier` on a `View`.
  ///
  /// - Parameters:
  ///   - value: `Binding<T?>`.
  ///   - ifLetTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is not `nil`.
  ///   - elseTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is `nil`.
  @ViewBuilder func ifLet<T, IfLetContent: View, ElseContent: View>(_ value: Binding<T?>, _ ifLetTransform: (Self, T) -> IfLetContent, _ elseTransform: (Self) -> ElseContent) -> some View {
    if let value = value.wrappedValue {
      ifLetTransform(self, value)
    } else {
      elseTransform(self)
    }
  }

  /// Executes one closure or another depending on a `T?` to apply a `ViewModifier` on a `View`.
  ///
  /// - Parameters:
  ///   - value: `T?`.
  ///   - ifLetTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is not `nil`.
  ///   - elseTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is `nil`.
  @ViewBuilder func ifLet<T, IfLetContent: View, ElseContent: View>(_ value: T?, _ ifLetTransform: (Self, T) -> IfLetContent, _ elseTransform: (Self) -> ElseContent) -> some View {
    if let value = value {
      ifLetTransform(self, value)
    } else {
      elseTransform(self)
    }
  }
}
