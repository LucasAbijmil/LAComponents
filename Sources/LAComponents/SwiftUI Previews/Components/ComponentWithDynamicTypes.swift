//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {
  
  /// A method that allows you to preview a component with all `ContentSizeCategory`.
  /// - Parameters:
  ///    - colorScheme: The color scheme of the component (light or dark).
  func previewComponentWithDynamicTypes(colorScheme: ColorScheme) -> some View {
    ComponentWithDynamicTypes(component: self, colorScheme: colorScheme)
  }
}

/// A `struct` that loop over each `ContentSizeCategory` case.
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
fileprivate struct ComponentWithDynamicTypes<Component: View>: View {
  
  let component: Component
  let colorScheme: ColorScheme
  
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
