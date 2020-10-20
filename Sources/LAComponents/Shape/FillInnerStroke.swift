//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

public extension Capsule {

  /// Fills the entire edge within a ``Capsule``. If you define a size to the ``Capsule``, it won't increase its frame.
  ///
  /// - Parameters:
  ///     - color: The color to fill the capsule.
  ///     - strokeColor: The color of the edge.
  ///     - lineWidth: The width of the edge.
  func fillInnerStroke(color: Color, strokeColor: Color, lineWidth: CGFloat = 2) -> some View {
    self
      .fill(color)
      .overlay(self.strokeBorder(strokeColor, lineWidth: lineWidth))
  }
}

public extension Circle {

  /// Fills the entire edge within a ``Circle``. If you define a size to the ``Circle``, it won't increase its frame.
  ///
  /// - Parameters:
  ///     - color: The color to fill the circle.
  ///     - strokeColor: The color of the edge.
  ///     - lineWidth: The width of the edge.
  func fillInnerStroke(color: Color, strokeColor: Color, lineWidth: CGFloat = 2) -> some View {
    self
      .fill(color)
      .overlay(self.strokeBorder(strokeColor, lineWidth: lineWidth))
  }
}

#if os(iOS)
@available(iOS 14.0, *)
public extension ContainerRelativeShape {

  /// Fills the entire edge within a ``ContainerRelativeShape``. If you define a size to the ``ContainerRelativeShape``, it won't increase its frame.
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

public extension Ellipse {

  /// Fills the entire edge within a ``Ellipse``. If you define a size to the ``Ellipse``, it won't increase its frame.
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

public extension Rectangle {

  /// Fills the entire edge within a ``Rectangle``. If you define a size to the ``Rectangle``, it won't increase its frame.
  ///
  /// - Parameters:
  ///     - color: The color to fill the rectangle.
  ///     - strokeColor: The color of the edge.
  ///     - lineWidth: The width of the edge.
  func fillInnerStroke(color: Color, strokeColor: Color, lineWidth: CGFloat = 2) -> some View {
    self
      .fill(color)
      .overlay(self.strokeBorder(strokeColor, lineWidth: lineWidth))
  }
}

public extension RoundedRectangle {

  /// Fills the entire edge within a ``RoundedRectangle``. If you define a size to the ``RoundedRectangle``, it won't increase its frame.
  ///
  /// - Parameters:
  ///     - color: The color to fill the rounded rectangle.
  ///     - strokeColor: The color of the edge.
  ///     - lineWidth: The width of the edge.
  func fillInnerStroke(color: Color, strokeColor: Color, lineWidth: CGFloat = 2) -> some View {
    self
      .fill(color)
      .overlay(self.strokeBorder(strokeColor, lineWidth: lineWidth))
  }
}
