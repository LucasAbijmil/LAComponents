//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
extension ColorScheme {

  /// A `String` that describes the `ColorScheme` of each case.
  var previewName: String {
    switch self {
    case .dark:
      return "Dark"
    case .light:
      return "Light"
    @unknown default:
      return "Uknown ColorScheme"
    }
  }
}
