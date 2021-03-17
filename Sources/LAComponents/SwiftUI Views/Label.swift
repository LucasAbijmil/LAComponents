//
//
//  Copyright (c) 2021 Lucas Abijmil.

import SwiftUI

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension Label where Title == Text, Icon == Image {

  /// A delegating initializer for instantiate a `Label` with a title generated from a String and a SFSymbol.
  ///
  /// - Parameters:
  ///   - title: A string to used as the label's title.
  ///   - SFSymbol: The SFSymbol to be used as an image.
  init(_ title: String, SFSymbol: SFSymbol) {
    self.init(title, systemImage: SFSymbol.rawValue)
  }
}
