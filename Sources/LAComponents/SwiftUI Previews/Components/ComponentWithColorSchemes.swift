//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {
  
  /// A method that allows you to preview a component with each case of `ColorScheme`.
  func previewComponentWithColorSchemes() -> some View {
    ComponentWithColorSchemes(component: self)
  }
}

/// A `struct` that loop over each `ColorScheme` case.
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
fileprivate struct ComponentWithColorSchemes<Component: View>: View {
  
  let component: Component
  
  var body: some View {
    ForEach(ColorScheme.allCases, id: \.self) { colorScheme in
      component
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(colorScheme)
        .previewDisplayName("\(colorScheme.previewName)")
    }
  }
}
