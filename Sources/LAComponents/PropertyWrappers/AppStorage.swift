//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == Bool {

  /// Creates a property that can read and write to a boolean user default.
  ///
  /// - Parameters:
  ///   - defaultValue: The default value if a boolean value is not specified for the given key.
  ///   - key: The key to read and write the value to in the user defaults store.
  ///   - store: The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.
  init(defaultValue: Bool, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == Int {

  /// Creates a property that can read and write to an integer user default.
  ///
  /// - Parameters:
  ///   - defaultValue: The default value if an integer value is not specified for the given key.
  ///   - key: The key to read and write the value to in the user defaults store.
  ///   - store: The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.
  init(defaultValue: Int, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == Double {

  /// Creates a property that can read and write to a double user default.
  ///
  /// - Parameters:
  ///   - defaultValue: The default value if a double value is not specified for the given key.
  ///   - key: The key to read and write the value to in the user defaults store.
  ///   - store: The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.
  init(defaultValue: Double, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == String {

  /// Creates a property that can read and write to a string user default.
  ///
  /// - Parameters:
  ///   - defaultValue: The default value if a string value is not specified for the given key.
  ///   - key: The key to read and write the value to in the user defaults store.
  ///   - store: The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.
  init(defaultValue: String, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == URL {

  /// Creates a property that can read and write to a url user default.
  ///
  /// - Parameters:
  ///   - defaultValue: The default value if a url value is not specified for the given key.
  ///   - key: The key to read and write the value to in the user defaults store.
  ///   - store: The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.
  init(defaultValue: URL, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value == Data {

  /// Creates a property that can read and write to a user default as data.
  ///
  /// Avoid storing large data blobs in user defaults, such as image data,
  /// as it can negatively affect performance of your app. On tvOS, a
  /// `NSUserDefaultsSizeLimitExceededNotification` notification is posted
  /// if the total user default size reaches 512kB.
  ///
  /// - Parameters:
  ///   - defaultValue: The default value if a data value is not specified for the given key.
  ///   - key: The key to read and write the value to in the user defaults store.
  ///   - store: The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.
  init(defaultValue: Data, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value: RawRepresentable, Value.RawValue == Int {

  /// Creates a property that can read and write to an integer user default,
  /// transforming that to `RawRepresentable` data type.
  ///
  /// A common usage is with enumerations:
  ///
  ///    enum MyEnum: Int {
  ///        case a
  ///        case b
  ///        case c
  ///    }
  ///    struct MyView: View {
  ///        @AppStorage("MyEnumValue") private var value = MyEnum.a
  ///        var body: some View { ... }
  ///    }
  ///
  /// - Parameters:
  ///   - defaultValue: The default value if an integer value is not specified for the given key.
  ///   - key: The key to read and write the value to in the user defaults store.
  ///   - store: The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.
  init(defaultValue: Value, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension AppStorage where Value: RawRepresentable, Value.RawValue == String {

  /// Creates a property that can read and write to a string user default,
  /// transforming that to `RawRepresentable` data type.
  ///
  /// A common usage is with enumerations:
  ///
  ///    enum MyEnum: String {
  ///        case a
  ///        case b
  ///        case c
  ///    }
  ///    struct MyView: View {
  ///        @AppStorage("MyEnumValue") private var value = MyEnum.a
  ///        var body: some View { ... }
  ///    }
  ///
  /// - Parameters:
  ///   - defaultValue: The default value if a string value is not specified for the given key.
  ///   - key: The key to read and write the value to in the user defaults store.
  ///   - store: The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.
  init(defaultValue: Value, key: String, store: UserDefaults? = nil) {
    self.init(wrappedValue: defaultValue, key, store: store)
  }
}
