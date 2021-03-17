//
//
//  Copyright (c) 2021 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension Image {

  /// A delegating initializer for instantiate a SFSymbol more easily.
  ///
  /// - Parameters:
  ///   - SFSymbol: The SFSymbol to be displayed.
  init(SFSymbol: SFSymbol) {
    self.init(systemName: SFSymbol.rawValue)
  }
}
