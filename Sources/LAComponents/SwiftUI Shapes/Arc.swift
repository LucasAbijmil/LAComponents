//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

/// An arc centered on the frame of the view containing it.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Arc: InsettableShape {

  private let startAngle: Angle
  private let endAngle: Angle
  private let clockwise: Bool
  private var insetAmount: CGFloat

  /// Creates an arc that starts and ends at the angles passed in parameters, clockwise or counterclockwise.
  ///
  /// - Parameters:
  ///   - startAngle: The starting angle of the arc.
  ///   - endAngle: The end angle of the arc.
  ///   - clockwise: Clockwise (`true`) or counter-clockwise (`false`).
  public init(startAngle: Angle, endAngle: Angle, clockwise: Bool) {
    self.startAngle = startAngle
    self.endAngle = endAngle
    self.clockwise = clockwise
    self.insetAmount = 0
  }

  public func path(in rect: CGRect) -> Path {
    let rotationAdjustment = Angle(degrees: 90)
    let startAngleAdjusted = startAngle - rotationAdjustment
    let endAngleAdjusted = endAngle - rotationAdjustment
    var path = Path()

    path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount,
                startAngle: startAngleAdjusted, endAngle: endAngleAdjusted, clockwise: !clockwise)

    return path
  }

  public func inset(by amount: CGFloat) -> some InsettableShape {
    var arc = self
    arc.insetAmount += amount

    return arc
  }
}
