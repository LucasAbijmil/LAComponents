//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Executes a closure that allows to apply a `ViewModifier` on a `View` only for iOS.
  ///
  /// - Parameters:
  ///   - modifier: The transformation to be applied to the `View` passed as a parameter to the closure if the os is iOS.
  func iOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
    #if os(iOS)
    return modifier(self)
    #else
    return self
    #endif
  }
}
