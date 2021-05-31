//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// A color considered as a `View` to use it as a background.
  ///
  /// - Parameters:
  ///   - color: The color used as a background.
  func backgroundColor(_ color: Color) -> some View {
    self
      .background(color)
  }
}
