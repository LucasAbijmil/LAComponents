//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// Apply a struct modifier to a *if case* depending on a ``Binding Bool``.
  ///
  /// - Parameters:
  ///     - condition: ``Binding Bool``.
  ///     - modifier: A ``ViewModifier`` struct apply to the *if case*.
  func ifModifier<T>(for condition: Binding<Bool>, with modifier: T) -> some View where T: ViewModifier {
    Group {
      if condition.wrappedValue {
        self.modifier(modifier)
      } else {
        self
      }
    }
  }

  /// Apply a struct modifier to a *if case* depending on a ``Bool``.
  /// 
  /// - Parameters:
  ///     - condition : ``Bool``.
  ///     - modifier: A ``ViewModifier`` structapply to the *if case*.
  func ifModifier<T>(for condition: Bool, with modifier: T) -> some View where T: ViewModifier {
    Group {
      if condition {
        self.modifier(modifier)
      } else {
        self
      }
    }
  }
}
