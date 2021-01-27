//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Date {

  /// Convert a `Date` to a `String` in the format you provide.
  ///
  /// All the formats are available here : https://nsdateformatter.com/
  ///
  /// - Parameters:
  ///   - format: The format of the date that will be converted into a string.
  func string(format: String) -> String {
    let df = DateFormatter()
    df.dateFormat = format

    return df.string(from: self)
  }
}
