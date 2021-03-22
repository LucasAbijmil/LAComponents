//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Optional where Wrapped == String {

  /// A computed property, that returns the optional `String` unwrap or an empty one if the value is nil.
  var orEmpty: String {
    switch self {
    case .some(let value):
      return value
    case .none:
      return .empty
    }
  }
}
