//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS)
@available(iOS 13, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public struct CurrentDevice {

  /// A property that indicates if the current iOS device is an iPhone.
  public var isIphone: Bool { type == .iPhone }

  /// A property that indicates if the current iOS device is an iPad.
  public var isIpad: Bool { type == .iPad }

  /// Types of iOS devices in Apple's ecosystem.
  private enum DeviceType {
    case iPhone
    case iPad
  }

  /// A property that detects the current iOS device.
  private var type: DeviceType {
    return UIDevice.current.userInterfaceIdiom == .pad ? .iPad : .iPhone
  }

  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {

    /// The default value for this `EnvironmentValue`.
    static let defaultValue = CurrentDevice()
  }
}

@available(iOS 13, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public extension EnvironmentValues {

  /// An `EnvironmentValue` that returns the current iOS device.
  ///
  /// The currentDevice returned can be either iPhone or iPad.
  var currentDevice: CurrentDevice {
    get {
      self[CurrentDevice.EnvironmentKey.self]
    }
    set {
      self[CurrentDevice.EnvironmentKey.self] = newValue
    }
  }
}
#endif
