//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension String {

  /// ``String`` with spaces and new lines removed at both ends of the string.
  ///
  /// • "Hello World_____________________\n".trimmed –> "Hello World"
  var trimmed: String {
    return trimmingCharacters(in: .whitespacesAndNewlines)
  }

  /// Convert a ``String`` to a ``Date?`` in the format you provide.
  ///
  /// • dateString = "10/10/2020"
  ///
  /// • format = "MM/dd/yyyy"
  ///
  /// • dateString.toDate(format: format) –> Date(timeIntervalSince1970: 1602280800)
  ///
  /// Take a look there : https://nsdateformatter.com/
  ///
  /// - Parameters:
  ///     - format: Format in which you want to convert a *String* to a *Date*.
  func toDate(format: String) -> Date? {
    let df = DateFormatter()
    df.dateFormat = format

    return df.date(from: self)
  }
}
