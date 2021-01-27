//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// A method that allows you to preview a content with each case of `ContentSizeCategory`.
  ///
  /// - Parameters:
  ///   - colorScheme: The color scheme of the content (light or dark).
  func previewWithDynamicTypes(colorScheme: ColorScheme) -> some View {
    ContentWithDynamicTypes(content: self, colorScheme: colorScheme)
  }
}

/// A `struct` that loop over each `ContentSizeCategory` case.
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
fileprivate struct ContentWithDynamicTypes<Content: View>: View {

  let content: Content
  let colorScheme: ColorScheme

  var body: some View {
    ForEach(ContentSizeCategory.allCases, id: \.self) { sizeCategory in
      content
        .preferredColorScheme(colorScheme)
        .environment(\.sizeCategory, sizeCategory)
        .previewDisplayName("\(sizeCategory.previewName)")
    }
  }
}
