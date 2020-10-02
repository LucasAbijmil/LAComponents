//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension String {

  /// Convert a *String* to a *Date* in the format you provide.
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
