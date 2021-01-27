//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Collection {

  /// Custom subscript to avoid a crash when you try to access an index that is not necessarily contained in a `Collection`.
  ///
  /// If the index is contained then the returned value is optional, otherwise it will be nil.
  ///
  /// You should use this subscript when you're not sure if the index is contained in the collection.
  ///
  /// - Parameters:
  ///   - index: The index to be accessed.
  subscript(safe index: Index) -> Element? {
    return indices.contains(index) ? self[index] : nil
  }
}
