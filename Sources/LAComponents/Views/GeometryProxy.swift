//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

public extension GeometryProxy {

  /// A handy contraction of ``size.width``.
  var width: CGFloat {
    return size.width
  }

  /// A handy contraction of ``size.height``.
  var height: CGFloat {
    return size.height
  }

  /// A handy contraction of ``safeAreaInsets.top``.
  var safeTop: CGFloat {
    return safeAreaInsets.top
  }

  /// A handy contraction of ``safeAreaInsets.bottom``.
  var safeBottom: CGFloat {
    return safeAreaInsets.bottom
  }
}
