# LAComponents

Personal set of useful Swift / SwiftUI extensions.

## Installation 

Download this directory, and drag and drop the folder *Extensions* into your project. 

Feel free to rename this folder.

## EnvironmentValues 

- @Environment(\\.currentDevice) : **An Environment Value that returns the current iOS device**
- @Environment(\\.hapticFeedback) : **An Environment Value that allows 3 types of haptic feedback : impact, selection or notification** 


## Views

- dismissKeyboard() : **Hide the keyboard by sending the action to the shared application**
- *GeometryProxy* : **properties renaming**
    - width : **size.width**
    - height : **size.height**
    - safeTop : **safeAreaInsets.top**
    - safeBottom : **safeAreaInsets.bottom**
- *Image* : **init for remote image**
    - init(for url: URL) : **Displays an image downloaded synchronously**
    - init(for url: URL, with placeholder: String) : **Displays an image downloaded synchronously. If the download fails the image displays a placeholder**

## View Modifiers

- backgroundColor(with color: Color) : **A color considered as a View to use it as a background**
- backgroundColor(with color: Color, at opacity: Double) : **A color with an opacity considered as View to use it as a background**
- cornerRadius(_ radius: CGFloat, corners: UIRectCorner) : **Apply a radius to the corners specified**
- ifModifier<T>(for condition: Binding<Bool>, with modifier: T) : **Apply a struct modifier to a **if case** depending on a *Binding Bool***
- ifModifier<T>(for condition: Bool, with modifier: T) : **Apply a struct modifier to a **if case** depending on a *Bool***
- ifElseModifier<M1, M2>(for condition: Binding<Bool>, if trueModifier: M1, else falseModifier: M2) : **Apply a struct modifier to a **if case** or to the **else case** depending on a *Binding Bool***
- ifElseModifier<M1, M2>(for condition: Bool, if trueModifier: M1, else falseModifier: M2) : **Apply a struct modifier to a **if case** or to the **else case** depending on a *Bool***


## Struct for style modifiers 

- CheckBoxToggleStyle(frame: CGFloat, colorOn: Color, colorOff: Color) : **A toggle style that displays a checkbox**


## Types

- *Array* : 
  - removeDuplicate() -> [Element] : **Delete all duplicate elements in a given array**
  - removeOccurence(of item: Element) -> [Element] : **Delete all occurrences of an element in a given array**
  - removeOccurence(of items: [Element]) -> [Element] : **Delete all occurrences of the elements in the array passed as parameters**
- *Bundle* : 
  - releaseVersion : **Return the current release version**
  - buildVersion : **Return the current build version**
- *Date* : 
  - toString(format: String) -> String : **Convert a *Date* to a *String* with the format you provide**
- *Double* : 
  - Double.castInt : **Cast a *Double* rounded as an *Int***
  - Double.castFloat : **Cast a *Double* as a *Double***
  - Double.castCGFloat : **Cast a *Double* rounded as an *CGFloat***
- *Int* : 
  - Int.castDouble : **Cast an *Int* as a *Double***
  - Int.castFloat : **Cast an *Int* as a *Float***
  - Int.castCGFloat : **Cast an *Int* as a *CGFloat***
- *String* :  
  - toDate(format: String) -> Date? : **Convert a *String* to a *Date?* with the format you provide**

## Recommendations

If you want to make a recommendation to add an extension, please open a pull request.

