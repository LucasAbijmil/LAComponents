//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Date {

  /// Convert a *Date* to a *String* in the format you provide.
  ///
  /// Take a look there : https://nsdateformatter.com/
  ///
  /// - Parameters:
  ///     - format: Format in which you want to convert a *Date* to a *String*.
  func toString(format: String) -> String {
    let df = DateFormatter()
    df.dateFormat = format

    return df.string(from: self)
  }
}
