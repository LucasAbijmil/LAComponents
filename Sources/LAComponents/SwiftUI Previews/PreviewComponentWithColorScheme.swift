//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(OSX 11.0, *)
public extension View {

  /// A method that allows you to preview a component with all `ColorScheme`.
  func previewComponentWithColorScheme() -> some View {
    ComponentColorScheme(component: self)
  }
}

private extension ColorScheme {

  /// A `String` that describes the colorScheme of each case.
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

/// A `struct` that loop over each `ColorScheme` case.
@available(OSX 11.0, *)
private struct ComponentColorScheme<Component: View>: View {

  var component: Component

  var body: some View {
    ForEach(ColorScheme.allCases, id: \.self) { colorScheme in
      component
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(colorScheme)
        .previewDisplayName("\(colorScheme.previewName)")
    }
  }
}
