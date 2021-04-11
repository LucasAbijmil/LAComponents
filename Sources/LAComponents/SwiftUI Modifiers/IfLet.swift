//
//
//  Copyright (c) 2021 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Execute a closure depending on a `Binding<T?>` to apply a `modifier` on a `View`.
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

  /// Execute a closure depending on a `T?` to apply a `modifier` on a `View`.
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

  /// Execute one closure or another depending on a `Binding<T?>` to apply a `modifier` on a `View`.
  ///
  /// - Parameters:
  ///   - value: `Binding<T?>`.
  ///   - ifLetTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is not `nil`.
  ///   - elseTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is `nil`.
  @ViewBuilder func ifLet<T, IfLetContent: View, ElseContent: View>(_ value: Binding<T?>, _ ifLetTransform: (Self, T) -> IfLetContent, else elseTransform: (Self) -> ElseContent) -> some View {
    if let value = value.wrappedValue {
      ifLetTransform(self, value)
    } else {
      elseTransform(self)
    }
  }

  /// Execute one closure or another depending on a `T?` to apply a `modifier` on a `View`.
  ///
  /// - Parameters:
  ///   - value: `T?`.
  ///   - ifLetTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is not `nil`.
  ///   - elseTransform: The transformation to be applied to the `View` passed as a parameter to the closure if the `value` is `nil`.
  @ViewBuilder func ifLet<T, IfLetContent: View, ElseContent: View>(_ value: T?, _ ifLetTransform: (Self, T) -> IfLetContent, else elseTransform: (Self) -> ElseContent) -> some View {
    if let value = value {
      ifLetTransform(self, value)
    } else {
      elseTransform(self)
    }
  }

  /// Apply a `ViewModifier` if the `Binding<T?>` is not nil.
  ///
  /// - Parameters:
  ///   - value: `Binding<T?>`.
  ///   - modifier: A `ViewModifier` applied if the `value` is not `nil`.
  @ViewBuilder func ifLet<T, U: ViewModifier>(_ value: Binding<T?>, apply modifier: U) -> some View {
    if value.wrappedValue != nil {
      self
        .modifier(modifier)
    } else {
      self
    }
  }

  /// Apply a `ViewModifier` if the `T?` is not nil.
  ///
  /// - Parameters:
  ///   - value: `T?`.
  ///   - modifier: A `ViewModifier` applied if the `value` is not `nil`.
  @ViewBuilder func ifLet<T, U: ViewModifier>(_ value: T?, apply modifier: U) -> some View {
    if value != nil {
      self
        .modifier(modifier)
    } else {
      self
    }
  }

  /// Apply one `ViewModifier` or another depending on a `Binding<T?>`.
  ///
  /// - Parameters:
  ///   - value: `T?`.
  ///   - trueModifier: A `ViewModifier` applied if the `value` is not `nil`.
  ///   - falseModifier: A `ViewModifier` applied if the `value` is `nil`.
  @ViewBuilder func ifLet<T, U: ViewModifier, V: ViewModifier>(_ value: Binding<T?>, apply trueModifier: U, else falseModifier: V) -> some View {
    if value.wrappedValue != nil {
      self
        .modifier(trueModifier)
    } else {
      self
        .modifier(falseModifier)
    }
  }

  /// Apply one `ViewModifier` or another depending on a `T?`.
  ///
  /// - Parameters:
  ///   - value: `T?`.
  ///   - trueModifier: A `ViewModifier` applied if the `value` is not `nil`.
  ///   - falseModifier: A `ViewModifier` applied if the `value` is `nil`.
  @ViewBuilder func ifLet<T, U: ViewModifier, V: ViewModifier>(_ value: T?, apply trueModifier: U, else falseModifier: V) -> some View {
    if value != nil {
      self
        .modifier(trueModifier)
    } else {
      self
        .modifier(falseModifier)
    }
  }
}
