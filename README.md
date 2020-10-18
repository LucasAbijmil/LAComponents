# LAComponents

Personal set of useful Swift / SwiftUI extensions.

## Installation 

The preferred way of installing LAComponents is via the Swift Package Manager (SPM).

1. In Xcode, open your project and navigate to File → Swift Packages → Add Package Dependency...
2. Paste the repository URL (`https://github.com/LucasAbijmil/LAComponents`) and click Next.
3. For Rules, select `Version`.
4. Click Finish.


## EnvironmentValues 

- `@Environment(\.currentDevice)` : An EnvironmentValue that returns the current iOS device.
- `@Environment(\.hapticFeedback)` : An EnvironmentValue that allows 3 types of haptic feedback : impact, selection or notification.


## Struct for style modifiers 

- `ToggleStyle` :
  - `CheckBoxToggleStyle(frame: CGFloat, on colorOn: Color, off colorOff: Color)` : A ToggleStyle that displays a checkbox.


## Types

- `Array` : 
  - `prepend(_ element: Element)` : Insert an Element at the beginning of the given Array.
  - `removeDuplicate() -> [Element]` : Delete all duplicate elements in a given Array.
  - `removeAll(_ item: Element) -> [Element]` :  Delete all occurrences of an Element in a given Array.
  - `removeAll(_ items: [Element]) -> [Element]` : Delete all occurrences of the elements in the Array passed as parameters.
- `Binding` :
  - `onChange(_ completion: @escaping (Value) -> Void) -> Binding<Value>` : A method equivalent to onChange(of: perform:) but which can be attached to the Binding itself.
- `Bundle` : 
  - `releaseVersion` : Return the current release version.
  - `buildVersion` : Return the current build version.
- `Date` : 
  - `toString(format: String) -> String` : Convert a Date to a String in the format you provide.
- `Double` : 
  - `castInt` : Cast a Double rounded as an Int.
  - `castFloat` : Cast a Double as a Float.
  - `castCGFloat` : Cast a Double rounded as an CGFloat.
- `Int` : 
  - `castDouble` : Cast an Int as a Double.
  - `castFloat` : Cast an Int as a Float.
  - `castCGFloat` : Cast an Int as a CGFloat.
- `String` :  
  - `trimmed` : String with spaces and new lines removed at both ends of the string.
  - `toDate(format: String) -> Date?` : Convert a String to a Date with the format you provide.
  
  
  ## View Modifiers

  - `backgroundColor(with color: Color) -> some View` : A color considered as a View to use it as background.
  - `backgroundColor(with color: Color, at opacity: Double) -> some View` : A color with an opacity considered as View to use it as background.
  - `cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View` : Apply a radius to the corners specified.
  - `ifModifier<T>(for condition: Binding<Bool>, with modifier: T) -> some View where T: ViewModifier` : Apply a struct modifier to a if case depending on a Binding Bool.
  - `ifModifier<T>(for condition: Bool, with modifier: T) -> some View where T: ViewModifier` : Apply a struct modifier to a *if case* depending on a Bool.
  - `ifElseModifier<M1, M2>(for condition: Binding<Bool>, if trueModifier: M1, else falseModifier: M2) -> some View where M1: ViewModifier, M2: ViewModifier` : Apply a struct modifier to the if case or to the else case depending on a Binding Bool.
  - `ifElseModifier<M1, M2>(for condition: Bool, if trueModifier: M1, else falseModifier: M2) -> some View where M1: ViewModifier, M2: ViewModifier` : Apply a struct modifier to the if case or to the else case depending on a Bool.
  
  
  ## Views

  - `dismissKeyboard()`: Hide the keyboard by sending the action to the shared application.
  - `GeometryProxy` : Properties renaming.
      - `width` : size.width
      - `height` : size.height
      - `safeTop` : safeAreaInsets.top
      - `safeBottom` : safeAreaInsets.bottom
  - `Image` : init for remote image
      - `init(for url: URL, with placeholder: String)` : Displays an image downloaded synchronously. If the download fails the image displays a placeholder.
      - `init?(for url: URL)` : Displays an image downloaded synchronously.
      


## Recommendations

If you want to make a recommendation to add an extension, please open a pull request.
