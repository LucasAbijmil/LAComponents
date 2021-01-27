//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension GeometryProxy {

  /// A contraction of `size.width`.
  var width: CGFloat {
    return size.width
  }

  /// A contraction of `size.height`.
  var height: CGFloat {
    return size.height
  }

  /// A contraction of `safeAreaInsets.top`.
  var safeTop: CGFloat {
    return safeAreaInsets.top
  }

  /// A contraction of `safeAreaInsets.bottom`.
  var safeBottom: CGFloat {
    return safeAreaInsets.bottom
  }
}
