//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Adds a custom reason to apply a redaction to this view hierarchy.
  func redacted(reason: RedactionReasons) -> some View {
    self
      .modifier(Redacted(reason: reason))
  }
}

/// Our custom reasons to apply a redaction to data displayed on screen.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public enum RedactionReasons {

  /// Displayed data is blurred with the radius you provide.
  case blurred(radius: CGFloat)
  /// Data displayed is covered by the color you provide.
  case overlay(color: Color)
}

/// A struct that applies the correct ViewModifier based on the RedactionReason.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
fileprivate struct Redacted: ViewModifier {

  let reason: RedactionReasons

  @ViewBuilder
  func body(content: Content) -> some View {
    switch reason {
    case .blurred(let radius):
      content
        .modifier(BlurredRedaction(radius: radius))
    case .overlay(let color):
      content
        .modifier(OverlayRedaction(color: color))
    }
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
fileprivate struct BlurredRedaction: ViewModifier {

  let radius: CGFloat

  func body(content: Content) -> some View {
    content
      .accessibility(label: Text("Data is blurred"))
      .blur(radius: radius)
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
fileprivate struct OverlayRedaction: ViewModifier {

  let color: Color

  func body(content: Content) -> some View {
    content
      .accessibility(label: Text("Data is covered"))
      .overlay(color)
  }
}
