//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Execute a closure that allows to apply a `modifier` on a `View` only for tvOS.
  ///
  /// - Parameters:
  ///   - modifier: The transformation to be applied to the `View` passed as a parameter to the closure if the os is tvOS.
  func tvOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
    #if os(tvOS)
    return modifier(self)
    #else
    return self
    #endif
  }

  /// Apply a `ViewModifier` on a `View` only for tvOS.
  ///
  /// - Parameters:
  ///   - modifier: A `ViewModifier` applied if the os is tvOS.
  func tvOS<T: ViewModifier>(_ modifier: T) -> some View {
    #if os(tvOS)
    return self
      .modifier(modifier)
    #else
    return self
    #endif
  }
}
