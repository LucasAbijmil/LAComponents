# LAComponents

Personal set of useful Swift / SwiftUI extensions.


## Installation 

The preferred way of installing *LAComponents* is via the *Swift Package Manager* (SPM).

1. In Xcode, open your project and navigate to File → Swift Packages → Add Package Dependency...
2. Paste the repository URL (`https://github.com/LucasAbijmil/LAComponents`) and click Next.
3. For Rules, select `Branch: main`.
4. Click Finish.


## List of Extensions

<details>
	<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/Swift">Swift</a></summary>
	<ul>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Array.swift">Array</a></code></summary>
				<ul>
					<li><code>prepend(_ element: Element)</code> : Insert an Element at the beginning of the given Array.</li>
					<li><code>removeDuplicate() -> [Element]</code> : Delete all duplicate elements in a given Array.</li>
					<li><code>removeAll(_ element: Element) -> [Element]</code> : Delete all occurrences of an Element in a given Array.</li>
					<li><code>removeAll(_ elements: [Element]) -> [Element]</code> : Delete all occurrences of the Elements in the Array passed as parameters.</li>
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Bundle.swift">Bundle</a></code></summary>
				<ul>
					<li><code>releaseVersion</code> : Return the current release version.</li>
					<li><code>buildVersion</code> : Return the current build version.</li>
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Collection.swift">Collection</a></code></summary>
				<ul>
					<li><code>subscript(safe index: Index) -> Element?</code> : Custom subscript to avoid a crash when you try to access an index that is not necessarily contained in a Collection.
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Date.swift">Date</a></code></summary>
				<ul>
					<li><code>string(format: String) -> String</code> : Convert a Date to a String in the format you provide. 
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Double.swift">Double</a></code></summary>
				<ul>
					<li><code>castInt</code> : Cast a Double as an Int.</li>
					<li><code>castRoundedInt</code> : Cast a Double rounded as an Int.</li>
					<li><code>castFloat</code> : Cast a Double as a Float.</li>
					<li><code>castCGFloat</code> : Cast a Double as a CGFloat.</li>
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Int.swift">Int</a></code></summary>
				<ul>
					<li><code>castDouble</code> : Cast an Int as a Double.</li>
					<li><code>castFloat</code> : Cast an Int as a Float.</li>
					<li><code>castCGFloat</code> : Cast an Int as a CGFloat.</li>
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/Swift/Swift%20Types/Optionals">Optionals</a></code></summary>
				<ul>
					<li>
						<details>
							<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Optionals/OptionalString.swift">Optional String</a></code></summary>
							<ul>
								<li><code>orEmpty</code> : A computed property, that returns the optional string unwrap or an empty one if the value is nil.</li>
							</ul>
						</details>
					</li>
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/Swift/Swift%20Types/Strings">String</a></code></summary>
				<ul>
					<li>
						<details>
							<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Strings/String.swift">String</a></code></summary>
							<ul>
								<li><code>empty</code> : An empty String.</li>
								<li><code>trimmed</code> : A computed property that returns a new string that removes spaces and new lines at both ends of the string.</li>
								<li><code>date(format: String) -> Date?</code> : Convert a String to a Date? in the format you provide.</li>
							</ul>
						</details>
					</li>
					<li>
						<details>
							<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Types/Strings/StringInterpolation.swift">String Interpolation</a></code></summary>
							<ul>
								<li><code>appendInterpolation(localized key: String, _ args: CVarArg...)</code> : A custom String Interpolation which allows to use a localized string with parameters more easily.</li>
							</ul>
						</details>
					</li>
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/Swift/Swift%20Functions">Functions</a></code></summary>
				<ul>
					<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/Swift/Swift%20Functions/Log.swift">log()</a></code> :  A custom log function that prints the message, file, function and the line calling this function.</li>
				</ul>
			</details>
		</li>
	</ul>
</details>

<details>
	<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20EnvironmentValues">SwiftUI EnvironmentValues</a></summary>
	<ul>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20EnvironmentValues/CurrentDevice.swift">CurrentDevice</a></code> : An EnvironmentValue that returns the current iOS device.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20EnvironmentValues/HapticFeedback.swift">HapticFeedback</a></code> : An EnvironmentValue that creates and triggers an haptic feedback.</li>
	</ul>
</details>

<details>
	<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20Previews">SwiftUI Previews</a></summary>
	<ul>
		<li>
			<details>
				<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20Previews/Components">Components</a></summary>
				<ul>
					<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Previews/Components/ComponentWithColorSchemes.swift">previewComponentWithColorSchemes()</a></code> : A method that allows you to preview a component with each case of ColorScheme.</li>
					<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Previews/Components/ComponentWithDynamicTypes.swift">previewComponentWithDynamicTypes(colorScheme: ColorScheme)</a></code> : A method that allows you to preview a component with each case of ContentSizeCategory.</li>
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20Previews/Content">Content</a></summary>
				<ul>
					<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Previews/Content/ContentWithColorSchemes.swift">previewWithColorSchemes()</a></code> : A method that allows you to preview a content with each case of ColorScheme.</li>
					<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Previews/Content/ContentWithDynamicTypes.swift">previewWithDynamicTypes(colorScheme: ColorScheme)</a></code> : A method that allows you to preview a content with each case of ContentSizeCategory.</li>
				</ul>
			</details>
		<li>
			<details>
				<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20Previews/Devices">Devices</a></summary>
				<ul>
					<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Previews/Devices/DevicesPreview.swift">previewDevices(_ devices: [Device])</a></code> : A method that allows you to preview a content on multiple Device at the same time.</li>
				</ul>
			</details>
		</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Previews/BindingMock.swift">mock(_ value: Value) -> Self</a></code> : A convenient Binding for creating fully dynamic mocks.</li>
	</ul>
</details>

<details>
	<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20PropertyWrappers">SwiftUI PropertyWrappers</a></summary>
	<ul>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20PropertyWrappers/AppStorage.swift">@AppStorage</a></code></summary>
				<ul>
					<li><code>init(defaultValue: Bool, key: String, store: UserDefaults? = nil)</code> : Creates a property that can read and write to a boolean user default.</li>
					<li><code>init(defaultValue: Int, key: String, store: UserDefaults? = nil)</code> : Creates a property that can read and write to an integer user default.</li>
					<li><code>init(defaultValue: Double, key: String, store: UserDefaults? = nil)</code> : Creates a property that can read and write to a double user default.</li>
					<li><code>init(defaultValue: String, key: String, store: UserDefaults? = nil)</code> : Creates a property that can read and write to a string user default.</li>
					<li><code>init(defaultValue: URL, key: String, store: UserDefaults? = nil)</code> : Creates a property that can read and write to a url user default.</li>
					<li><code>init(defaultValue: Data, key: String, store: UserDefaults? = nil)</code> : Creates a property that can read and write to a user default as data.</li>
					<li><code>init(defaultValue: Value, key: String, store: UserDefaults? = nil)</code> : Creates a property that can read and write to an integer user default, transforming that to RawRepresentable data type.</li>
					<li><code>init(defaultValue: Value, key: String, store: UserDefaults? = nil)</code> : Creates a property that can read and write to a string user default, transforming that to RawRepresentable data type.</li>
				</ul>
			</details>
		</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20PropertyWrappers/Binding.swift">@Binding</a></code></summary>
				<ul>
					<li><code>onChange(_ completion: @escaping (Value) -> Void) -> Binding&lt;Value&gt;</code> : A method equivalent to onChange(of: perform:) but which can be attached to the Binding itself.</li>
				</ul>
			</details>
		</li>
	</ul>
</details>

<details>
	<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20Shapes">SwiftUI Shapes</a></summary>
	<ul>
		<li>
			<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Shapes/Arc.swift">Arc</a></code> : An arc centered on the frame of the view containing it.</summary>
		</li>
		<li>
			<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Shapes/Polygon.swift">Polygon</a></code> : A polygonal shape aligned inside the frame of the view containing it.</summary>
		</li>
		<li>
			<details>
				<summary><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Shapes/InsettableShape.swift"><code>Shape</code> conforms to <code>InsettableShape</code></a></summary>
				<ul>
					<li><code>fillInnerOutterStroke(color: Color, strokeColor: Color, lineWidth: CGFloat) -> some View</code> : Fills the background of the Shape and strokes it halfway from the inside and outside.</li>
					<li><code>fillInnerStroke(color: Color, strokeColor: Color, lineWidth: CGFloat) -> some View</code> : Fills the background of the Shape and strokes it from the inside.</li>
				</ul>
			</details>
		</li>
	</ul>
</details>

<details>
	<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20StyleModifiers">SwiftUI StyleModifiers</a></summary>
	<ul>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20StyleModifiers/CheckBoxToggleStyle.swift">CheckBoxToggleStyle</a></code> : A ToggleStyle that displays a checkbox.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20StyleModifiers/RadioToggleStyle.swift">RadioToggleStyle</a></code> : A ToggleStyle that displays a radio button.</li>
	</ul>
</details>

<details>
	<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20ViewModifiers">SwiftUI ViewModifiers</a></summary>
	<ul>
		<details>
			<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20ViewModifiers/OS%20Modifiers">OS Modifiers</a></summary>
			<ul>
				<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/OS%20Modifiers/iOS.swift">iOS&lt;Content: View&gt;(_ modifier: (Self) -> Content) -> some View</a></code> : A method that allows to apply modifiers only for iOS.</li>
				<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/OS%20Modifiers/macOS.swift">macOS&lt;Content: View&gt;(_ modifier: (Self) -> Content) -> some View</a></code> : A method that allows to apply modifiers only for macOS.</li>
				<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/OS%20Modifiers/tvOS.swift">tvOS&lt;Content: View&gt;(_ modifier: (Self) -> Content) -> some View</a></code> : A method that allows to apply modifiers only for tvOS.</li>
				<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/OS%20Modifiers/watchOS.swift">watchOS&lt;Content: View&gt;(_ modifier: (Self) -> Content) -> some View</a></code> : A method that allows to apply modifiers only for watchOS.</li>
			</ul>
		</details>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/BackgroundColor.swift">backgroundColor(_ color: Color) -> some View</a></code> : A color considered as a View to use it as a background.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/BackgroundColor.swift"> backgroundColor(_ color: Color, at opacity: Double) -> some View</a></code> : A color with an opacity considered as View to use it as a background.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/CornerRadius.swift">cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View</a></code> : Apply a radius to the corners specified.</li>
		<li><code><a href= "https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/Hud.swift">hud&lt;Content&gt;: View>(isPresented: Binding&lt;Bool&gt;, onDismiss: (() -> Void)? = nil, @ViewBuilder content: () -> Content) -> some View</a></code> : Presents a heads-up display (HUD) when a given condition is true.</li>
		<li><code><a href= "https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/Hud.swift">hud&lt;Item: Identifiable, Content: View&gt;(item: Binding&lt;Item?&gt;, onDismiss: (() -> Void)? = nil, @ViewBuilder content: () -> Content) -> some View</a></code> : Presents a heads-up display (HUD) using the given item as a data source for the heads-up display's content.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/IfElseModifier.swift">ifElseModifier&lt;M1, M2&gt;(for condition: Binding&lt;Bool&gt;, if trueModifier: M1, else falseModifier: M2) -> some View where M1: ViewModifier, M2: ViewModifier</a></code> :  Apply a struct modifier to the if case or to the else case depending on a Binding&lt;Bool&gt;.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/IfElseModifier.swift">ifElseModifier&lt;M1, M2&gt;(for condition: Bool, if trueModifier: M1, else falseModifier: M2) -> some View where M1: ViewModifier, M2: ViewModifier</a></code> : Apply a struct modifier to the if case or to the else case depending on a Bool.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/IfModifier.swift">ifModifier&lt;T&gt;(for condition: Binding&lt;Bool&gt;, with modifier: T) -> some View where T: ViewModifier</a></code> : Apply a struct modifier to a if case depending on a Binding&lt;Bool&gt;.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20ViewModifiers/IfModifier.swift">ifModifier&lt;T&gt;(for condition: Bool, with modifier: T) -> some View where T: ViewModifier</a></code> : Apply a struct modifier to a if case depending on a Bool.</li>
	</ul>
</details>

<details>
	<summary><a href="https://github.com/LucasAbijmil/LAComponents/tree/main/Sources/LAComponents/SwiftUI%20Views">SwiftUI Views</a></summary>
	<ul>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Views/BlurView.swift">BlurView</a></code> : A view that displays a blurred effect.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Views/DismissKeyboard.swift">dismissKeyboard()</a></code> : Forces the first responder to hide the keyboard by sending the action to the shared application.</li>
		<li>
			<details>
				<summary><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Views/GeometryProxy.swift">GeometryProxy</a></code></summary>
				<ul>
					<li><code>width</code> : A contraction of size.width.</li>
					<li><code>height</code> : A contraction of size.height.</li>
					<li><code>safeTop</code> : A contraction of safeAreaInsets.top.</li>
					<li><code>safeBottom</code> : A contraction of safeAreaInsets.bottom.</li>
				</ul>
			</details>
		</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Views/Lottie.swift">LottieAnimation</a></code> : A view that displays a Lottie animation.</li>
		<li><code><a href="https://github.com/LucasAbijmil/LAComponents/blob/main/Sources/LAComponents/SwiftUI%20Views/Redacted.swift">redacted(_ reason: RedactionReasons) -> some View</a></code> : Adds a custom reason to apply a redaction to this view hierarchy.</li>
	</ul>
</details>


## Recommendations

If you want to make a recommendation to add an extension, please open a pull request.