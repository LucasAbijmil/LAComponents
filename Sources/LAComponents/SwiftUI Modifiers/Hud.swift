//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS)
@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public extension View {

  /// Presents a heads-up display (HUD) when a given condition is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to whether the heads-up display is presented.
  ///   - timer: The display duration in seconds of the heads-up display.
  ///   - onDismiss: A closure executed when the heads-up display dismisses.
  ///   - content: A closure returning the content of the heads-up display.
  func hud<Content: View>(isPresented: Binding<Bool>, timer: Double, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    ZStack(alignment: .top) {
      self
        .frame(maxWidth: .infinity, maxHeight: .infinity)

      if isPresented.wrappedValue {
        HUD(content: content, onDismiss: onDismiss)
          .transition(.asymmetric(insertion: .move(edge: .top).combined(with: .opacity),
                                  removal: .offset(x: 0.0, y: -500)))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
              withAnimation { isPresented.wrappedValue = false }
            }
          }
      }
    }
  }

  /// Presents a heads-up display (HUD) using the given item as a data source for the heads-up display's content.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the heads-up display. When representing a non-`nil` item, the system uses `content` to create a heads-up display representation of the item.
  ///     If the identity changes, the system dismisses a currently-presented heads-up display and replaces it with a new heads-up display.
  ///   - timer: The display duration in seconds of the heads-up display.
  ///   - onDismiss: A closure executed when the heads-up display dismisses.
  ///   - content: A closure returning the content of the heads-up display.
  func hud<Item: Identifiable, Content: View>(item: Binding<Item?>, timer: Double, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View {
    ZStack(alignment: .top) {
      self
        .frame(maxWidth: .infinity, maxHeight: .infinity)

      if let wrappedValue = item.wrappedValue {
        HUDItem(content: content, item: wrappedValue, onDismiss: onDismiss)
          .transition(.asymmetric(insertion: .move(edge: .top).combined(with: .opacity),
                                  removal: .offset(x: 0.0, y: -500)))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
              withAnimation { item.wrappedValue = nil }
            }
          }
      }
    }
  }
}

/// A struct that creates a heads-up display (HUD).
@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
fileprivate struct HUD<Content: View>: View {

  @ViewBuilder let content: Content
  let onDismiss: (() -> Void)?

  var body: some View {
    content
      .padding(.horizontal, 10)
      .padding()
      .background(BlurView(style: .systemMaterial))
      .clipShape(Capsule())
      .shadow(color: .black.opacity(0.20), radius: 20, x: 0, y: 5)
      .animation(.default)
      .onDisappear(perform: onDismiss)
  }
}

/// A struct that creates a heads-up display (HUD).
@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
fileprivate struct HUDItem<Item: Identifiable, Content: View>: View {

  let content: Content
  let onDismiss: (() -> Void)?

  init(@ViewBuilder content: @escaping (Item) -> Content, item: Item, onDismiss: (() -> Void)?) {
    self.content = content(item)
    self.onDismiss = onDismiss
  }

  var body: some View {
    content
      .padding(.horizontal, 10)
      .padding()
      .background(BlurView(style: .systemMaterial))
      .clipShape(Capsule())
      .shadow(color: .black.opacity(0.20), radius: 20, x: 0, y: 5)
      .animation(.default)
      .onDisappear(perform: onDismiss)
  }
}
#endif
