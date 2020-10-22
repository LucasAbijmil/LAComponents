//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if !os(tvOS)
/// A ``ToggleStyle`` that displays a radio button.
///
/// To apply this style to a toggle, or to a view that contains toggles, use the ``toggleStyle(_:)`` modifier.
public struct RadioToggleStyle: ToggleStyle {

  public let radio: Color
  public let stroke: Color
  public let lineWidth: CGFloat
  public let background: Color
  public let frame: CGFloat
  public let radioFrame: CGFloat

  /// Create a radio button, with the properties that you provides.
  ///
  /// - Parameters:
  ///     - radio: The color of the inner circle when the value of the ``Toggle`` is true.
  ///     - stroke: The color of the edge of the radio. If you don't provide this value then the color is the same as the radio one.
  ///     - lineWidth: The width of the edge.
  ///     - background: The radio's background. If you don't provide this value, the background is set to clear by default.
  ///     - frame: The frame of the toggle.
  ///     - radioFrame: The frame of the radio (= inner circle).
  public init(radio: Color, stroke: Color? = nil, lineWidth: CGFloat, background: Color = .clear, frame: CGFloat, radioFrame: CGFloat) {
    self.radio = radio
    self.stroke = stroke ?? radio
    self.lineWidth = lineWidth
    self.background = background
    self.frame = frame
    self.radioFrame = radioFrame
  }

  public func makeBody(configuration: Configuration) -> some View {
    return HStack {

      configuration.label

      Spacer()

      ZStack {
        background
        Circle()
          .fill(configuration.isOn ? radio : .clear)
          .frame(width: radioFrame, height: radioFrame)
          .overlay(
            Circle()
              .stroke(stroke, lineWidth: lineWidth)
              .background(Color.black.opacity(0.000000001))
              .frame(width: frame, height: frame)
              .onTapGesture { configuration.isOn.toggle() }
          )
      }
      .clipShape(Circle())
      .frame(width: frame, height: frame)
    }
  }
}
#endif