//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS) || os(watchOS)
public struct CheckBoxToggleStyle: ToggleStyle {

  private let frame: CGFloat
  private let colorOn: Color
  private let colorOff: Color

  /// A toggle style that displays a checkbox.
  ///
  /// - Parameters:
  ///     - frame: Frame of the *View*.
  ///     - colorOn: The color of the **checked** value.
  ///     - colorOff: The color of the **unchecked** value.
  public init(frame: CGFloat, on colorOn: Color, off colorOff: Color) {
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
#endif
