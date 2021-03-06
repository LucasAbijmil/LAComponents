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

  /// Presents a custom dialog when a given condition is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to whether the dialog is presented.
  ///   - backgroundColor: The background color of the dialog.
  ///   - onDismiss: A closure executed when the dialog dismisses.
  ///   - content: A closure returning the content of the dialog.
  func dialog<Content: View>(isPresented: Binding<Bool>, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        Dialog(content: content, backgroundColor: backgroundColor, onDismiss: onDismiss) { withAnimation { isPresented.wrappedValue = false } }
          .transition(.move(edge: .bottom).combined(with: .opacity))
          .zIndex(999)
      }
    }
  }

  /// Presents a custom dialog using the given item as a data source for the dialog's content.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the dialog. When representing a non-`nil` item, the system uses `content` to create a dialog representation of the item.
  ///     If the identity changes, the system dismisses a currently-presented dialog and replaces it with a new dialog.
  ///   - backgroundColor: The background color of the dialog.
  ///   - onDismiss: A closure executed when the dialog dismisses.
  ///   - content: A closure returning the content of the dialog.
  func dialog<Item: Identifiable, Content: View>(item: Binding<Item?>, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        DialogItem(content: content, item: wrappedValue, backgroundColor: backgroundColor, onDismiss: onDismiss) { withAnimation { item.wrappedValue = nil } }
          .transition(.move(edge: .bottom).combined(with: .opacity))
          .zIndex(999)
      }
    }
  }
}

/// A struct that creates a custom dialog.
@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
fileprivate struct Dialog<Content: View>: View {

  @Environment(\.currentDevice) var currentDevice
  @Environment(\.verticalSizeClass) var verticalSizeClass
  let content: Content
  let backgroundColor: Color
  let onDismiss: (() -> Void)?
  let closeAction: () -> Void

  init(@ViewBuilder content: @escaping () -> Content, backgroundColor: Color, onDismiss: (() -> Void)? = nil, dismissAction: @escaping () -> Void) {
    self.content = content()
    self.backgroundColor = backgroundColor
    self.onDismiss = onDismiss
    self.closeAction = dismissAction
  }

  var body: some View {
    GeometryReader { geo in
      ZStack {
        Color.black
          .opacity(0.0000000000000000000001)
          .onTapGesture { closeAction() }

        content
          .padding()
          .frame(maxWidth: currentDevice.isIpad ? min(geo.width, geo.height) * 0.5 : min(geo.width, geo.height) - (verticalSizeClass == .compact ? 32 : 0),
                 maxHeight: currentDevice.isIpad ? min(geo.width, geo.height) * 0.5 : min(geo.width, geo.height) - (verticalSizeClass == .regular ? 32 : 0))
          .background(backgroundColor)
          .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .padding(.horizontal, currentDevice.isIpad ? 0 : verticalSizeClass == .regular ? 16 : 0)
          .padding(.vertical, currentDevice.isIpad ? 0 : verticalSizeClass == .compact ? 16 : 0)
          .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 20)
          .gesture(
            DragGesture()
              .onEnded {
                guard $0.predictedEndTranslation.height > geo.height * 0.33 else { return }
                closeAction()
              }
          )
          .animation(.default)
          .onDisappear(perform: onDismiss)
      }
    }
  }
}

/// A struct that creates a custom dialog.
@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
fileprivate struct DialogItem<Item: Identifiable, Content: View>: View {

  @Environment(\.currentDevice) var currentDevice
  @Environment(\.verticalSizeClass) var verticalSizeClass
  let content: Content
  let backgroundColor: Color
  let onDismiss: (() -> Void)?
  let closeAction: () -> Void

  init(@ViewBuilder content: @escaping (Item) -> Content, item: Item, backgroundColor: Color, onDismiss: (() -> Void)? = nil, dismissAction: @escaping () -> Void) {
    self.content = content(item)
    self.backgroundColor = backgroundColor
    self.onDismiss = onDismiss
    self.closeAction = dismissAction
  }

  var body: some View {
    GeometryReader { geo in
      ZStack {
        Color.black
          .opacity(0.0000000000000000000001)
          .onTapGesture { closeAction() }

        content
          .padding()
          .frame(maxWidth: currentDevice.isIpad ? min(geo.width, geo.height) * 0.5 : min(geo.width, geo.height) - (verticalSizeClass == .compact ? 32 : 0),
                 maxHeight: currentDevice.isIpad ? min(geo.width, geo.height) * 0.5 : min(geo.width, geo.height) - (verticalSizeClass == .regular ? 32 : 0))
          .background(backgroundColor)
          .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .padding(.horizontal, currentDevice.isIpad ? 0 : verticalSizeClass == .regular ? 16 : 0)
          .padding(.vertical, currentDevice.isIpad ? 0 : verticalSizeClass == .compact ? 16 : 0)
          .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 20)
          .gesture(
            DragGesture()
              .onEnded {
                guard $0.predictedEndTranslation.height > geo.height * 0.33 else { return }
                closeAction()
              }
          )
          .animation(.default)
          .onDisappear(perform: onDismiss)
      }
    }
  }
}
#endif
