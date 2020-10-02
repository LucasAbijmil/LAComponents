//
//
//  Copyright (c) 2020 Lucas Abijmil.

import Foundation

public extension Bundle {

  /// Return the current release version.
  static var releaseVersion: String? {
    return main.infoDictionary?["CFBundleShortVersionString"] as? String
  }

  /// Return the current build version.
  static var buildVersion: String? {
    return main.infoDictionary?["CFBundleVersion"] as? String
  }
}
