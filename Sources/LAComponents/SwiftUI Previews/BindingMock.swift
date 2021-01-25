//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension Binding {

  /// A convenient `Binding` for creating fully dynamic mocks.
  static func mock(_ value: Value) -> Self {
    var value = value

    return Binding(get: { value },
                   set: { value = $0 })
  }
}
