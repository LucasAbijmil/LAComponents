//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

extension View {

  /// A color considered as a *View* to use it as background.
  ///
  /// - Parameters:
  ///     - color: The color used as a background.
  public func backgroundColor(with color: Color) -> some View {
    self.background(color)
  }

  /// A color with an opacity considered as *View* to use it as background.
  ///
  /// - Parameters:
  ///     - color: The color used as a background.
  ///     - opacity: An opacity between 0 and 1.
  public func backgroundColor(with color: Color, at opacity: Double) -> some View {
    self.background(color.opacity(opacity))
  }
}
