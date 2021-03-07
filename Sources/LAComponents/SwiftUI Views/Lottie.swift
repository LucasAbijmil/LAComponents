//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if canImport(Lottie)
import Lottie

/// A view that displays a Lottie animation.
@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public struct LottieAnimation: UIViewRepresentable {

  private let named: String
  private let contentMode: UIView.ContentMode
  private let loopMode: LottieLoopMode
  private let animationSpeed: CGFloat
  private let completion: LottieCompletionBlock?

  /// Creates a Lottie animation with the passed parameters.
  /// 
  /// - Parameters:
  ///   - named: The name of the json file without the json extension.
  ///   - contentMode: Options to specify how a view adjusts its content when its size changes. The default value is `scaleAspectFill`.
  ///   - loopMode: Defines animation loop behavior. The default value is `playOnce`.
  ///   - animationSpeed: The speed of the animation playback. The default value is `1`.
  ///   - completion: An optional completion closure to be called when the animation completes playing. The default value is `nil`.
  public init(named: String, contentMode: UIView.ContentMode = .scaleAspectFill, loopMode: LottieLoopMode = .playOnce, animationSpeed: CGFloat = 1, completion: LottieCompletionBlock? = nil) {
    self.named = named
    self.contentMode = contentMode
    self.loopMode = loopMode
    self.animationSpeed = animationSpeed
    self.completion = completion
  }

  public func makeUIView(context: UIViewRepresentableContext<LottieAnimation>) -> UIView {
    let view = UIView(frame: .zero)
    let animationView = AnimationView()
    let animation = Animation.named(named)

    animationView.animation = animation
    animationView.contentMode = contentMode
    animationView.loopMode = loopMode
    animationView.animationSpeed = animationSpeed
    animationView.play(completion: completion)

    animationView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(animationView)

    NSLayoutConstraint.activate([
      animationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      animationView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      animationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      animationView.topAnchor.constraint(equalTo: view.topAnchor)
    ])

    return view
  }

  public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieAnimation>) { }
}
#endif
