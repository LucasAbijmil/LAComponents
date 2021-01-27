//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Array {

  /// Insert an `Element` at the beginning of the given `Array`.
  ///
  /// - Example : [1, 2, 3, 4, 5].prepend(0) –> [0, 1, 2, 3, 4, 5]
  ///
  /// - Parameters:
  ///   - element: The element to be inserted.
  mutating func prepend(_ element: Element) {
    insert(element, at: 0)
  }
}

public extension Array where Element: Equatable {

  /// Delete all duplicate elements in a given `Array`.
  ///
  /// - Example : [1, 2, 2, 3, 3, 3].removeDuplicate() –> [1, 2, 3]
  mutating func removeDuplicate() -> [Element] {
    self = reduce(into: [Element]()) {
      if !$0.contains($1) { $0.append($1) }
    }

    return self
  }

  /// Delete all occurrences of an `Element` in a given `Array`.
  ///
  /// - Example : [1, 2, 3, 3, 3].removeAll(3) –> [1, 2]
  ///
  /// - Parameters:
  ///   - element: The element whose occurrences must be removed.
  mutating func removeAll(_ element: Element) -> [Element] {
    removeAll { $0 == element }
    return self
  }

  /// Delete all occurrences of the elements in the `Array` passed as parameters.
  ///
  /// – Example : [1, 2, 2, 3, 3, 3].removeAll([2, 3]) –> [1]
  ///
  /// - Parameters:
  ///   - elements: The elements whose occurrences must be removed.
  mutating func removeAll(_ elements: [Element]) -> [Element] {
    guard !elements.isEmpty else { return self }
    removeAll { elements.contains($0) }

    return self
  }
}
