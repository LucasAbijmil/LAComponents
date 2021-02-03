//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// A method that allows to apply modifiers only for macOS.
  func macOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
    #if os(macOS)
    return modifier(self)
    #else
    return self
    #endif
  }
}
