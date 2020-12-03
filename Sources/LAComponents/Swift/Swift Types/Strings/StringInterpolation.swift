//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension String.StringInterpolation {

  /// A custom String Interpolation which allows to use a localized string with parameters more easily.
  ///
  /// In a ``SwiftUI View`` : ``Text(String(localized: "welcome.user", user.name))``
  ///
  /// - Parameters:
  ///   - key: The key of the localized string.
  ///   - args: parameters of the localized string.
  mutating func appendInterpolation(localized key: String, _ args: CVarArg...) {
    let localized = String(format: NSLocalizedString(key, comment: ""), arguments: args)
    appendLiteral(localized)
  }
}
