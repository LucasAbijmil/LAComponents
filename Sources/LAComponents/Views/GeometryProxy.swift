//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

extension GeometryProxy {

  /// A handy contraction of *size.width*.
  public var width: CGFloat {
    return size.width
  }

  /// A handy contraction of *size.height*.
  public var height: CGFloat {
    return size.height
  }

  /// A handy contraction of *safeAreaInsets.top*.
  public var safeTop: CGFloat {
    return safeAreaInsets.top
  }

  /// A handy contraction of *safeAreaInsets.bottom*.
  public var safeBottom: CGFloat {
    return safeAreaInsets.bottom
  }
}
