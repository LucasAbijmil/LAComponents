//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// A method that allows you to preview a content with each case of `ColorScheme`.
  func previewWithColorSchemes() -> some View {
    ContentWithColorSchemes(content: self)
  }
}

/// A `struct` that loop over each `ColorScheme` case.
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
fileprivate struct ContentWithColorSchemes<Content: View>: View {

  let content: Content

  var body: some View {
    ForEach(ColorScheme.allCases, id: \.self) { colorScheme in
      content
        .preferredColorScheme(colorScheme)
        .previewDisplayName("\(colorScheme.previewName)")
    }
  }
}
