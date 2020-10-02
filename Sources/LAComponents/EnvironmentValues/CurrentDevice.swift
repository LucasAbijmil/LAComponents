//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

//@available(iOS 13.0, *)
//@available(macOS, unavailable)
//@available(tvOS, unavailable)
//@available(watchOS, unavailable)
#if os(iOS)
public struct CurrentDevice {

  /// A value that indicates if the current iOS device is an iPhone.
  public var isIphone: Bool { type == .iPhone }

  /// A value that indicates if the current iOS device is an iPad.
  public var isIpad: Bool { type == .iPad }

  enum EnvironmentKey: SwiftUI.EnvironmentKey {
    /// Add this structure to the EnvironmentKey.
    static let defaultValue = CurrentDevice()
  }

  /// Types of iOS devices in Apple's ecosystem.
  private enum DeviceType {
    case iPhone
    case iPad
  }

  /// A value that detects the current iOS device.
  private var type: DeviceType {
    return UIDevice.current.userInterfaceIdiom == .pad ? .iPad : .iPhone
  }
}

//@available(iOS 13.0, *)
//@available(macOS, unavailable)
//@available(tvOS, unavailable)
//@available(watchOS, unavailable)
public extension EnvironmentValues {

  /// An Environment Value that returns the current iOS device.
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
