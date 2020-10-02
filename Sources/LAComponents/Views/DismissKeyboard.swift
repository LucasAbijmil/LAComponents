//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS)
fileprivate extension UIApplication {

  /// Forces the first responder to resign its status in its window.
  func dismissKeyboard() {
    sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}

extension View {

  /// Forces the first responder to hide the keyboard by sending the action to the shared application.
  ///
  /// You should call this function to hide the keyboard when the user clicks outside the *Textfield*.
  ///
  /// To do this, create a *ZStack* with a transparent color and add the *TapGesture* modifier and call this function.
  public func dismissKeyboard() {
      UIApplication.shared.dismissKeyboard()
  }
}
#endif
