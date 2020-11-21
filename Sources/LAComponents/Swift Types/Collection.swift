//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Collection {

  /// Custom subscript to avoid crashing the app when you try to access an index that is not contained in the ``Collection``.
  ///
  /// If the index is contained then the returned value is optional, otherwise it will be nil.
  ///
  /// You should use this subscript when you're not sure if the index is in the collection.
  ///
  /// - Parameters:
  ///     - index: The index to be accessed.
  subscript(safe index: Index) -> Element? {
    return indices.contains(index) ? self[index] : nil
  }
}
