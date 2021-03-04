//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS)
/// A struct that create a heads-up display (HUD).
@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
fileprivate struct HUD<Content: View>: View {

  @Environment(\.colorScheme) var colorScheme
  let content: Content

  // TO DO : Remove me in 5.4 and add @ViewBuilder before let content: Content
  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }

  var body: some View {
    content
      .padding(.horizontal, 10)
      .padding()
      .background(colorScheme == .dark ? Color(UIColor.secondarySystemBackground) : .white) // TO DO : rework me
      .clipShape(Capsule())
      .shadow(color: Color.black.opacity(0.15), radius: 15, x: 0, y: 5) // TO DO : rework me
      .animation(.default)
  }
}

@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public extension View {

  /// Presents a heads-up display (HUD) when a given condition is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to whether the heads-up display is presented.
  ///   - content: A closure returning the content of the heads-up display.
  func hud<Content: View>(isPresented: Binding<Bool>, @ViewBuilder content: () -> Content) -> some View {
    ZStack(alignment: .top) {
      self

      if isPresented.wrappedValue {
        HUD(content: content)
          .transition(AnyTransition.move(edge: .top).combined(with: .opacity))
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              withAnimation { isPresented.wrappedValue = false }
            }
          }
          .zIndex(999)
      }
    }
  }

  /// Presents a heads-up display (HUD) using the given item as a data source for the heads-up display's content.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the heads-up display. When representing a non-`nil` item, the system uses `content` to create a heads-up display representation of the item.
  ///     If the identity changes, the system dismisses a currently-presented heads-up display and replaces it with a new heads-up display.
  ///   - content: A closure returning the content of the heads-up display.
  func hud<Item: Identifiable, Content: View>(item: Binding<Item?>, @ViewBuilder content: () -> Content) -> some View {
    ZStack(alignment: .top) {
      self

      if let _ = item.wrappedValue {
        HUD(content: content)
          .transition(AnyTransition.move(edge: .top).combined(with: .opacity))
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              withAnimation { item.wrappedValue = nil }
            }
          }
          .zIndex(999)
      }
    }
  }
}
#endif
