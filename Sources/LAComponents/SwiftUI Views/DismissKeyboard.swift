//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS) || os(tvOS)
@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
private extension UIApplication {

  /// Forces the first responder to resign its status in its window.
  func dismissKeyboard() {
    sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public extension View {

  /// Forces the first responder to hide the keyboard by sending the action to the shared application.
  ///
  /// For example you can call this function in the `onCommit` closure of a `TextField`
  func dismissKeyboard() {
      UIApplication.shared.dismissKeyboard()
  }
}
#endif
