//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

public extension Double {

  /// Cast a `Double` as an Int`.
  var castInt: Int {
    return Int(self)
  }

  /// Cast a `Double` rounded as an `Int`.
  var castRoundedInt: Int {
    return Int(self.rounded())
  }

  /// Cast a `Double` as a `Float`.
  var castFloat: Float {
    return Float(self)
  }

  /// Cast a `Double` as a `CGFloat`.
  var castCGFloat: CGFloat {
    return CGFloat(self)
  }
}
