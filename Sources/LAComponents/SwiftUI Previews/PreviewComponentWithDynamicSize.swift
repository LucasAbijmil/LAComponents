//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(OSX 11.0, *)
public extension View {

  /// A method that allows you to preview a component with all `ContentSizeCategory`.
  /// - Parameters:
  ///    - colorScheme: The color scheme of the component (light or dark).
  func previewComponentWithSizeCategory(colorScheme: ColorScheme) -> some View {
    ComponentDynamicSizePreview(component: self, colorScheme: colorScheme)
  }
}

private extension ContentSizeCategory {

  /// A `String` that describes the sizeCategory of each case.
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

/// A `struct` that loop over each `ContentSizeCategory` case.
@available(OSX 11.0, *)
private struct ComponentDynamicSizePreview<Component: View>: View {

  var component: Component
  var colorScheme: ColorScheme

  var body: some View {
    ForEach(ContentSizeCategory.allCases, id: \.self) { sizeCategory in
      component
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(colorScheme)
        .environment(\.sizeCategory, sizeCategory)
        .previewDisplayName("\(sizeCategory.previewName)")
    }
  }
}
