//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

public extension Binding {

  /// A method equivalent to ``onChange(of: perform:)`` but which can be attached to the ``Binding`` itself.
  ///
  /// The common approach : Slider(value: $myBinding).onChange(of: myBinding) { value in myFunction() }
  ///
  /// New approach(more compact) : Slider(value: $myBinding.onChange(myFunction))
  ///
  /// - Parameters:
  ///     - completion: Function called when ``Binding`` changes value
  func onChange(_ completion: @escaping (Value) -> Void) -> Binding<Value> {
    Binding(
      get: { self.wrappedValue },
      set: { newValue in
        self.wrappedValue = newValue
        completion(newValue)
      }
    )
  }
}