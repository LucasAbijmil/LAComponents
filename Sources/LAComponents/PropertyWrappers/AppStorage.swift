//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == Bool {

  init(defaultValue: Bool, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == Int {

  init(defaultValue: Int, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == Double {

  init(defaultValue: Double, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == String {

  init(defaultValue: String, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == URL {

  init(defaultValue: URL, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == Data {

  init(defaultValue: Data, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value: RawRepresentable, Value.RawValue == Int {

  init(defaultValue: Value, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value: RawRepresentable, Value.RawValue == String {

  init(defaultValue: Value, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}
