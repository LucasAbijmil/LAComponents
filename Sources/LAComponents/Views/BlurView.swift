//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS) || os(tvOS)
/// A view that displays a blurred effect.
@available(iOS 13.0, tvOS 13.0, *)
public struct BlurView: UIViewRepresentable {

  private let style: UIBlurEffect.Style

  /// Creates a visual effect view with the designated blurred effect.
  ///
  /// - Parameters:
  ///   - style: An object that applies the blurring effect selected.
  public init(style: UIBlurEffect.Style) {
    self.style = style
  }

  public func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
    let blurEffect = UIBlurEffect(style: style)
    let blurView = UIVisualEffectView(effect: blurEffect)
    let view = UIView(frame: .zero)

    view.backgroundColor = .clear
    view.addSubview(blurView)
    blurView.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      blurView.topAnchor.constraint(equalTo: view.topAnchor),
      blurView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      blurView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      blurView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])

    return view
  }

  public func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<BlurView>) { }
}
#endif
