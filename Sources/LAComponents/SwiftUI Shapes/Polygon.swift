//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

/// A polygonal shape aligned inside the frame of the view containing it.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Polygon: Shape {

  private var sides: Int

  /// Create a polygonal shape with the number of sides passed as a parameter.
  ///
  /// - Parameters:
  ///   - sides: The number of sides.
  ///
  /// If the number of faces is less than 3 then the polygon will have 3 faces. Note that the greater the number of sides (~50) the more the polygon will look like a `Circle`.
  public init(sides: Int) {
    self.sides = sides < 3 ? 3 : sides
  }

  public func path(in rect: CGRect) -> Path {

    let hypothenuse = Double(min(rect.size.width, rect.size.height)) / 2.0
    let center = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
    var path = Path()

    for side in 0..<sides {
      let angle = (Double(side) * (360.0 / Double(sides))) * Double.pi / 180.0
      let vertexPosition = CGPoint(x: center.x + CGFloat(cos(angle) * hypothenuse),
                                   y: center.y + CGFloat(sin(angle) * hypothenuse))
      if side == 0 {
        path.move(to: vertexPosition)
      } else {
        path.addLine(to: vertexPosition)
      }
    }

    path.closeSubpath()

    return path
  }
}
