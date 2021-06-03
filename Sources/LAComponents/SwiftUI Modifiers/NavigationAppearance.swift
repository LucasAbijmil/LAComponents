//
//
//  Copyright (c) 2021 Lucas Abijmil.

import SwiftUI

#if os(iOS) || os(tvOS)
struct NavigationAppearanceModifier: ViewModifier {

  /// TODO: should use this modifier at the root of the NavigationView
  /// - Parameters:
  ///   - backgroundColor: backgroundColor of the navigationBar (inline / large)
  ///   - foregroundColor: foregroundColor of the navigationTitle
  ///   - hideSeparator: A boolean that indicates if the separator is visible or not
  init(backgroundColor: UIColor, foregroundColor: UIColor, hideSeparator: Bool) {
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.titleTextAttributes = [.foregroundColor: foregroundColor]
    navBarAppearance.largeTitleTextAttributes = [.foregroundColor: foregroundColor]
    navBarAppearance.backgroundColor = backgroundColor
    UINavigationBar.appearance().standardAppearance = navBarAppearance
    UINavigationBar.appearance().compactAppearance = navBarAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    if hideSeparator {
      navBarAppearance.shadowColor = .clear
    }
  }

  func body(content: Content) -> some View {
    content
  }
}

// FIXME: Should be Color & not UIColor
extension View {
  func navigationAppearance(backgroundColor: UIColor, foregroundColor: UIColor, hideSeparator: Bool = false) -> some View {
    self
      .modifier(NavigationAppearanceModifier(backgroundColor: backgroundColor, foregroundColor: foregroundColor, hideSeparator: hideSeparator))
  }
}
#endif
