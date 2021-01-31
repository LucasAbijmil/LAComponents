//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

/// A `ToggleStyle` that displays a checkbox.
///
/// To apply this style to a toggle, or to a view that contains toggles, use the `toggleStyle(_:)` modifier.
@available(iOS 13.0, macOS 11.0, watchOS 6.0, *)
@available(tvOS, unavailable)
public struct CheckBoxToggleStyle: ToggleStyle {

  public let frame: CGFloat?
  public let colorOn: Color
  public let colorOff: Color

  /// Creates a checkbox with the colors and frame provided.
  ///
  /// - Parameters:
  ///   - frame: Frame of the `View`.
  ///   - colorOn: The color of the checked value.
  ///   - colorOff: The color of the unchecked value.
  public init(frame: CGFloat? = nil, colorOn: Color, colorOff: Color) {
    self.frame = frame
    self.colorOn = colorOn
    self.colorOff = colorOff
  }

  public func makeBody(configuration: Self.Configuration) -> some View {
    return HStack {

      configuration.label

      Spacer()

      Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
        .resizable()
        .frame(width: frame, height: frame)
        .foregroundColor(configuration.isOn ? colorOn : colorOff)
        .font(.system(size: 20, weight: .bold, design: .default))
        .onTapGesture { configuration.isOn.toggle() }
    }
  }
}
