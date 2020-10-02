//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if !os(macOS)
struct RoundedCorner: Shape {

  var corners: UIRectCorner = .allCorners
  var radius: CGFloat = .infinity

  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))

    return Path(path.cgPath)
  }
}

extension View {

  /// Apply a radius to the corners specified.
  /// 
  /// - Parameters:
  ///     - radius: Value of the radius.
  ///     - corners: Corners affected by the radius.
  public func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    clipShape(RoundedCorner(corners: corners, radius: radius))
  }
}
#endif
