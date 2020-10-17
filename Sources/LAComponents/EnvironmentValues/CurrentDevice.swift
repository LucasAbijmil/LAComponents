//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if os(iOS)
public struct CurrentDevice {

  /// A value that indicates if the current iOS device is an iPhone.
  public var isIphone: Bool { type == .iPhone }

  /// A value that indicates if the current iOS device is an iPad.
  public var isIpad: Bool { type == .iPad }

  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {
    
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

public extension EnvironmentValues {

  /// An ``EnvironmentValue`` that returns the current iOS device.
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
