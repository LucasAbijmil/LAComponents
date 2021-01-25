//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

public extension Binding {

  /// A convenient `Binding` for creating fully dynamic mocks.
  static func mock(_ value: Value) -> Self {
    var value = value

    return Binding(get: { value },
                   set: { value = $0 })
  }
}
