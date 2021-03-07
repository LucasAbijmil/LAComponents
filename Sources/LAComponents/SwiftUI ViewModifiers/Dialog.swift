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

  func dialog<Content: View>(isPresented: Binding<Bool>, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: () -> Content) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        Dialog(content: content, backgroundColor: backgroundColor, onDismiss: onDismiss) { withAnimation { isPresented.wrappedValue = false } }
          .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
          .zIndex(999)
      }
    }
  }

  func dialog<Item: Identifiable, Content: View>(item: Binding<Item?>, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: () -> Content) -> some View {
    ZStack {
      self

      if let _ = item.wrappedValue {
        Dialog(content: content, backgroundColor: backgroundColor, onDismiss: onDismiss) { withAnimation { item.wrappedValue = nil } }
          .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
          .zIndex(999)
      }
    }
  }

}

fileprivate struct Dialog<Content: View>: View {

  @Environment(\.currentDevice) var currentDevice
  @Environment(\.verticalSizeClass) var verticalSizeClass
  let content: Content
  let backgroundColor: Color
  let onDismiss: (() -> Void)?
  let closeAction: () -> Void

  // TODO : Remove me in 5.4 and add @ViewBuilder before let content: Content
  init(@ViewBuilder content: () -> Content, backgroundColor: Color, onDismiss: (() -> Void)? = nil, dismissAction: @escaping () -> Void) {
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
          .frame(maxWidth: .infinity)
          .frame(maxHeight: .infinity)
          .padding(.horizontal, currentDevice.isIpad ? 0 : verticalSizeClass == .regular ? 16 : 0)
          .padding(.vertical, currentDevice.isIpad ? 0 : verticalSizeClass == .compact ? 16 : 0)
          .shadow(color: Color.black.opacity(0.25), radius: 10, x: 0.0, y: 0) // TODO: rework me
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
