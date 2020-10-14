//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Date {

  /// Convert a ``Date`` to a ``String`` in the format you provide.
  ///
  /// • date = Date(timeIntervalSince1970: 1602280800)
  ///
  /// • format = "MM/dd/yyyy"
  ///
  /// • date.toString(format: format) –> "10/10/2020"
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
