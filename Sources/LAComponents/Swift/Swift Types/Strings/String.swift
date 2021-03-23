//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension String {

  /// An empty `String`.
  static let empty = ""

  /// A computed property that returns a new `String` that removes spaces and new lines at both ends of the `String`.
  var trimmed: String {
    return trimmingCharacters(in: .whitespacesAndNewlines)
  }

  /// A computed property that returns the `String` with the first letter capitalized.
  var firstLetterCapitalized: String {
    return capitalizingFirstLetter()
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

  /// Transforms the first letter of the `String` into a capitalized letter.
  func capitalizingFirstLetter() -> String {
    return prefix(1).capitalized + dropFirst()
  }
}
