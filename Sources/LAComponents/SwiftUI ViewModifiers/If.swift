//
//
//  Copyright (c) 2021 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Apply a modifier to a if case depending on a `Binding<Bool>`.
  ///
  /// - Parameters:
  ///   - condition: `Binding<Bool>`.
  ///   - transform: The transformation closure to be applied to the `View` passed as a parameter to this closure.
  @ViewBuilder func `if`<Content: View>(_ condition: Binding<Bool>, transform: (Self) -> Content) -> some View {
    if condition.wrappedValue {
      transform(self)
    } else {
      self
    }
  }

  /// Apply a modifier to a if case depending on a `Bool`.
  ///
  /// - Parameters:
  ///   - condition: `Bool`.
  ///   - transform: The transformation closure to be applied to the `View` passed as a parameter to this closure.
  @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
    if condition {
      transform(self)
    } else {
      self
    }
  }
}
