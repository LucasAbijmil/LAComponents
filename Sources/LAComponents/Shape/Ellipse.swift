//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

public extension Ellipse {

  /// Fills the background of the ``Ellipse`` and strokes it halfway from the inside and outside. Therefore if you define a size to the ``Ellipse``, it will increase its frame if you increase the width of the line.
  ///
  /// - Parameters:
  ///     - color: The color to fill the ellipse.
  ///     - strokeColor: The color of the edge.
  ///     - lineWidth: The width of the edge.
  func fillInnerOutterStroke(color: Color, strokeColor: Color, lineWidth: CGFloat = 2) -> some View {
    self
      .fill(color)
      .overlay(self.stroke(strokeColor, lineWidth: lineWidth))
  }

  /// Fills the background of the ``Ellipse`` and strokes it from the inside. Therefore if you define a size to the ``Ellipse``, it won't increase its frame even if you increase the line width.
  ///
  /// - Parameters:
  ///     - color: The color to fill the ellipse.
  ///     - strokeColor: The color of the edge.
  ///     - lineWidth: The width of the edge.
  func fillInnerStroke(color: Color, strokeColor: Color, lineWidth: CGFloat = 2) -> some View {
    self
      .fill(color)
      .overlay(self.strokeBorder(strokeColor, lineWidth: lineWidth))
  }
}
