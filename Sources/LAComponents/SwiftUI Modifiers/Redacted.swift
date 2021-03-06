//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension View {

  /// Adds a custom reason to apply a redaction to this view hierarchy.
  func redacted(_ reason: RedactionReasons) -> some View {
    self
      .modifier(Redacted(reason: reason))
  }
}

/// Our custom reasons to apply a redaction to data displayed on screen.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public enum RedactionReasons {

  /// Displayed data will be automatically masked to appear as generic placeholders.
  case placeholder
  /// Displayed data is blurred with the radius you provide.
  case blurred(radius: CGFloat)
  /// Data displayed is covered by the color you provide.
  case overlay(color: Color)
}

/// A struct that applies the correct redacted modifier based on the RedactionReason.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
fileprivate struct Redacted: ViewModifier {

  let reason: RedactionReasons

  @ViewBuilder func body(content: Content) -> some View {
    switch reason {
    case .placeholder:
      content
        .redacted(reason: .placeholder)
    case .blurred(let radius):
      content
        .modifier(BlurredRedaction(radius: radius))
    case .overlay(let color):
      content
        .modifier(OverlayRedaction(color: color))
    }
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
fileprivate struct BlurredRedaction: ViewModifier {

  let radius: CGFloat

  func body(content: Content) -> some View {
    content
      .accessibilityLabel(Text("Data is blurred"))
      .blur(radius: radius)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
fileprivate struct OverlayRedaction: ViewModifier {

  let color: Color

  func body(content: Content) -> some View {
    content
      .accessibilityLabel(Text("Data is covered"))
      .overlay(color)
  }
}
