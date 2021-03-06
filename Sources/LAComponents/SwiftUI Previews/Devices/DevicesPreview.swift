//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension View {

  /// A method that allows you to preview a content on multiple `Device` at the same time.
  ///
  /// - Parameters:
  ///   - devices: The devices that appear in the preview.
  func previewDevices(_ devices: [Device]) -> some View {
    DevicesPreview(content: self, devices: devices)
  }
}

/// A struct that loop over each `Device` case.
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
struct DevicesPreview<Content: View>: View {

  let content: Content
  let devices: [Device]

  var body: some View {
    ForEach(devices, id: \.self) { device in
      content
        .previewDevice(PreviewDevice(rawValue: device.rawValue))
        .previewDisplayName(device.rawValue)
    }
  }
}

/// A list of devices that may appear in the preview.
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public enum Device: String {
  case iPhone6Plus = "iPhone 6 Plus"
  case iPhone6 = "iPhone 6"
  case iPhone6S = "iPhone 6s"
  case iPhone6SPlus = "iPhone 6s Plus"
  case iPhone7 = "iPhone 7"
  case iPhone7Plus = "iPhone 7 Plus"
  case iPhone8 = "iPhone 8"
  case iPhone8Plus = "iPhone 8 Plus"
  case iPhoneX = "iPhone X"
  case iPhoneXs = "iPhone Xs"
  case iPhoneXsMax = "iPhone Xs Max"
  case iPhoneXr = "iPhone Xʀ"
  case iPhone11 = "iPhone 11"
  case iPhone11Pro = "iPhone 11 Pro"
  case iPhone11ProMax = "iPhone 11 Pro Max"
  case iPhoneSE = "iPhone SE (2nd generation)"
  case iPhone12Mini = "iPhone 12 mini"
  case iPhone12 = "iPhone 12"
  case iPhone12Pro = "iPhone 12 Pro"
  case iPhone12ProMax = "iPhone 12 Pro Max"

  case iPad = "iPad (8th generation)"
  case iPadAir = "iPad Air (4th generation)"
  case iPadMini = "iPad mini (5th generation)"
  case iPadPro97 = "iPad Pro (9.7-inch)"
  case iPadPro105 = "iPad Pro (10.5-inch)"
  case iPadPro11 = "iPad Pro (11-inch) (2nd generation)"
  case iPadPro129 = "iPad Pro (12.9-inch) (4th generation)"

  case appleTV = "Apple TV"
  case appleTV4K = "Apple TV 4K"

  case watch38mm = "Apple Watch Series 3 - 38mm"
  case watch42mm = "Apple Watch Series 3 - 42mm"
  case watchSE40mm = "Apple Watch SE - 40mm"
  case watchSE44mm = "Apple Watch SE - 44mm"
  case watch640mm = "Apple Watch Series 6 - 40mm"
  case watch644mm = "Apple Watch Series 6 - 44mm"

  case mac = "Mac"
  case macCatalyst = "Mac Catalyst"
}
