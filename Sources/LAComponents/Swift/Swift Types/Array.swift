//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Array {

  /// Insert an ``Element`` at the beginning of the given ``Array``.
  ///
  /// The ``Array`` must be a variable :
  ///
  /// • [1, 2, 3, 4, 5].prepend(0) –> [0, 1, 2, 3, 4, 5]
  ///
  /// - Parameters:
  ///     - element: The element whose to be inserted.
  mutating func prepend(_ element: Element) {
    insert(element, at: 0)
  }
}

public extension Array where Element: Equatable {

  /// Delete all duplicate elements in a given ``Array``.
  ///
  /// The ``Array`` must be a variable :
  ///
  /// • [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5].removeDuplicate() –> [1, 2, 3, 4, 5]
  mutating func removeDuplicate() -> [Element] {
    self = reduce(into: [Element]()) {
      if !$0.contains($1) { $0.append($1) }
    }

    return self
  }

  /// Delete all occurrences of an ``Element`` in a given ``Array``.
  ///
  /// The ``Array`` must be a variable :
  ///
  /// • [1, 2, 3, 4, 5, 5, 5, 5, 5].removeAll(5) –> [1, 2, 3, 4]
  ///
  /// - Parameters:
  ///     - item: The element whose occurrences must be removed.
  mutating func removeAll(_ item: Element) -> [Element] {
    removeAll { $0 == item }
    return self
  }

  /// Delete all occurrences of the elements in the ``Array`` passed as parameters.
  ///
  /// The ``Array`` must be a variable :
  ///
  /// • [1, 2, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5].removeAll([4, 5]) –> [1, 2, 3]
  ///
  /// - Parameters:
  ///     - items: The elements whose occurrences must be removed.
  mutating func removeAll(_ items: [Element]) -> [Element] {
    guard !items.isEmpty else { return self }
    removeAll { items.contains($0) }

    return self
  }
}
