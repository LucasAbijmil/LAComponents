//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS)
@available(iOS 14.0, *)
public extension ContainerRelativeShape {

  /// Fills the background of the ``ContainerRelativeShape`` and strokes it halfway from the inside and outside. Therefore if you define a size to the ``ContainerRelativeShape``, it will increase its frame if you increase the width of the line.
  ///
  /// - Parameters:
  ///     - color: The color to fill the container relative shape.
  ///     - strokeColor: The color of the edge.
  ///     - lineWidth: The width of the edge.
  func fillInnerOutterStroke(color: Color, strokeColor: Color, lineWidth: CGFloat = 2) -> some View {
    self
      .fill(color)
      .overlay(self.stroke(strokeColor, lineWidth: lineWidth))
  }

  /// Fills the background of the ``ContainerRelativeShape`` and strokes it from the inside. Therefore if you define a size to the ``ContainerRelativeShape``, it won't increase its frame even if you increase the line width.
  ///
  /// - Parameters:
  ///     - color: The color to fill the container relative shape.
  ///     - strokeColor: The color of the edge.
  ///     - lineWidth: The width of the edge.
  func fillInnerStroke(color: Color, strokeColor: Color, lineWidth: CGFloat = 2) -> some View {
    self
      .fill(color)
      .overlay(self.strokeBorder(strokeColor, lineWidth: lineWidth))
  }
}
#endif
