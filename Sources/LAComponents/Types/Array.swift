//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Array where Element: Equatable {

  /// Delete all duplicate elements in a given array.
  ///
  /// The array must be a variable.
  mutating func removeDuplicate() -> [Element] {
    self = reduce(into: [Element]()) {
      if !$0.contains($1) { $0.append($1) }
    }

    return self
  }

  /// Delete all occurrences of an element in a given array.
  ///
  /// The array must be a variable.
  ///
  /// - Parameters:
  ///     - item: The element whose occurrences must be removed.
  mutating func removeAll(_ item: Element) -> [Element] {
    removeAll { $0 == item }
    return self
  }

  /// Delete all occurrences of the elements in the array passed as parameters.
  ///
  /// The array must be a variable.
  ///
  /// - Parameters:
  ///     - items: The elements whose occurrences must be removed.
  mutating func removeAll(_ items: [Element]) -> [Element] {
    guard !items.isEmpty else { return self }
    removeAll { items.contains($0) }

    return self
  }
}
