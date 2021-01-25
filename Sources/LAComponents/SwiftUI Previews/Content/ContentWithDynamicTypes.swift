//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {

  func previewWithDynamicTypes(colorScheme: ColorScheme) -> some View {
    ContentWithDynamicTypes(content: self, colorScheme: colorScheme)
  }
}

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
