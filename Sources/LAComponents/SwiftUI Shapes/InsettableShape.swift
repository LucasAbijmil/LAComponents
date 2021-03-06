//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension InsettableShape {

  /// Fills the background of the `Shape` and strokes it halfway from the inside and outside.
  ///
  /// Therefore if you define a size to the `Shape`, it will increase its frame if you increase the width of the line.
  ///
  /// - Parameters:
  ///   - color: The color to fill the shape.
  ///   - strokeColor: The color of the edge.
  ///   - lineWidth: The width of the edge.
  func fillInnerOutterStroke(color: Color, strokeColor: Color, lineWidth: CGFloat) -> some View {
    self
      .fill(color)
      .overlay(self.stroke(strokeColor, lineWidth: lineWidth))
  }

  /// Fills the background of the `Shape` and strokes it from the inside.
  ///
  /// Therefore if you define a size to the `Shape`, it won't increase its frame even if you increase the line width.
  ///
  /// - Parameters:
  ///   - color: The color to fill the shape.
  ///   - strokeColor: The color of the edge.
  ///   - lineWidth: The width of the edge.
  func fillInnerStroke(color: Color, strokeColor: Color, lineWidth: CGFloat) -> some View {
    self
      .fill(color)
      .overlay(self.strokeBorder(strokeColor, lineWidth: lineWidth))
  }
}
