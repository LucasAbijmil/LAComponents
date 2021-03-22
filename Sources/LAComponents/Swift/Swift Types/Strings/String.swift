//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension String {

  /// An empty `String`.
  static let empty = ""

  /// A computed property that returns a new string that removes spaces and new lines at both ends of the String.
  var trimmed: String {
    return trimmingCharacters(in: .whitespacesAndNewlines)
  }

  /// Convert a `String` to a `Date?` in the format you provide.
  ///
  /// All the formats are available here : https://nsdateformatter.com/
  ///
  /// - Parameters:
  ///   - format: Format of the desired date.
  func date(format: String) -> Date? {
    let df = DateFormatter()
    df.dateFormat = format

    return df.date(from: self)
  }
}
