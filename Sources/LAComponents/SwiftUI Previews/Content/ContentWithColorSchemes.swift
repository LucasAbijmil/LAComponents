//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {

  func previewWithColorSchemes() -> some View {
    ContentWithColorSchemes(content: self)
  }
}

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
