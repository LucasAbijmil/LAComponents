//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS)
public struct HapticFeedback {

  /// Apply a haptic impact.
  ///
  /// - Parameters:
  ///     - strength: The mass of the impact.
  public func impact(strength: UIImpactFeedbackGenerator.FeedbackStyle) {
    let hapticImpact = UIImpactFeedbackGenerator(style: strength)
    hapticImpact.prepare()
    hapticImpact.impactOccurred()
  }

  /// Apply a haptic selection.
  public func selection() {
    let hapticSelection = UISelectionFeedbackGenerator()
    hapticSelection.prepare()
    hapticSelection.selectionChanged()
  }

  /// Apply a haptic notification.
  ///
  /// - Parameters:
  ///     - notification: The type of notification.
  public func notification(notification: UINotificationFeedbackGenerator.FeedbackType) {
    let hapticNotification = UINotificationFeedbackGenerator()
    hapticNotification.prepare()
    hapticNotification.notificationOccurred(notification)
  }

  enum EnvironmentKey: SwiftUI.EnvironmentKey {

    /// Add this structure to the EnvironmentKey.
    static let defaultValue = HapticFeedback()
  }
}

public extension EnvironmentValues {

  /// An Environment Value that allows 3 types of haptic feedback : impact, selection or notification.
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
