//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
extension ContentSizeCategory {

  /// A `String` that describes the `ContentSizeCategory` of each case.
  var previewName: String {
    switch self {
    case .extraSmall:
      return "ExtraSmall"
    case .small:
      return "Small"
    case .medium:
      return "Medium"
    case .large:
      return "Large"
    case .extraLarge:
      return "ExtraLarge"
    case .extraExtraLarge:
      return "ExtraExtraLarge"
    case .extraExtraExtraLarge:
      return "ExtraExtraExtraLarge"
    case .accessibilityMedium:
      return "AccessibilityMedium"
    case .accessibilityLarge:
      return "AccessibilityLarge"
    case .accessibilityExtraLarge:
      return "AccessibilityExtraLarge"
    case .accessibilityExtraExtraLarge:
      return "AccessibilityExtraExtraLarge"
    case .accessibilityExtraExtraExtraLarge:
      return "AccessibilityExtraExtraExtraLarge"
    @unknown default:
      return "Uknown ContentSizeCategory"
    }
  }
}
