//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS)
@available(iOS 13, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct HapticFeedback {

  /// Creates and triggers an impact feedback.
  ///
  /// - Parameters:
  ///   - strength: The mass of the impact.
  public func impact(strength: UIImpactFeedbackGenerator.FeedbackStyle) {
    let hapticImpact = UIImpactFeedbackGenerator(style: strength)
    hapticImpact.prepare()
    hapticImpact.impactOccurred()
  }

  /// Creates and triggers a selection feedback.
  public func selection() {
    let hapticSelection = UISelectionFeedbackGenerator()
    hapticSelection.prepare()
    hapticSelection.selectionChanged()
  }

  /// Creates and triggers a notification feedback.
  ///
  /// - Parameters:
  ///   - notification: The type of the notification.
  public func notification(notification: UINotificationFeedbackGenerator.FeedbackType) {
    let hapticNotification = UINotificationFeedbackGenerator()
    hapticNotification.prepare()
    hapticNotification.notificationOccurred(notification)
  }

  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {

    /// The default value for this `EnvironmentValue`.
    static let defaultValue = HapticFeedback()
  }
}

@available(iOS 13, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public extension EnvironmentValues {

  /// An `EnvironmentValue` that creates and triggers an haptic feedback.
  ///
  /// The kind of feedback can be : impact, selection or notification.
  var hapticFeedback: HapticFeedback {
    get {
      self[HapticFeedback.EnvironmentKey.self]
    }
    set {
      self[HapticFeedback.EnvironmentKey.self] = newValue
    }
  }
}
#endif
