# Retainable
A case study in simplifying closure boilerplate

Retainable is a Swift library designed to simplify memory management in Swift applications. It allows developers to weakly retain functions, closures, and keypaths, thereby reducing the need for standard boilerplate like `{ [weak self] _ in ... }`, and replacing it with `weak(ThisClass.doSomething)`.

## Features
- **Simplified Memory Management**: Easily manage memory without verbose weak self guard patterns. Stop worrying about missing a weak or strong retain.
- **Enhanced Code Readability**: Replace traditional closure capture lists with a more readable syntax.
- **Universal Application**: Suitable for functions, closures, and keypaths in various Swift development scenarios.
- **Added syntax sugar**: Now pass keypath setters, defer statements, and much more! Take a functional approach to closures and ditch traditional boilerplate.

## Requirements
- iOS 13.0+ / macOS 12+ / visionOS 1+ / watchOS 6+ / tvOS 14+ / driverKit 20+
- Swift 5.9+

## Installation
Retainable is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:
```ruby
pod 'Retainable'
```
You can also import retainable via Swift Package Manager. To do so, add it to your package manifest:
```swift
    dependencies: [
        .package(
            url: "https://github.com/scottyelvington/retainable",
            from: "0.0.0"),
    ],
    targets: [
        .target(
            name: "YourTargetName",
            dependencies: [
                .product(
                    name: "Retainable",
                    package: "retainable"),
            ]),
    ]
```

## Usage
To use retainable in your code, add Retainable as a protocol conformance declaration to any class you wish to retain. 
```swift
class ThisClass: Retainable { ...
```

## Examples
Here are some common use-cases for retainable.

### Example 1: Using Retainable with Combine Sink
Traditionally, when subscribing to a publisher in Combine, you might use a closure with a weak reference to `self` to avoid retain cycles. Before:
```swift
publisher
    .sink { [weak self] value in
        self?.handleUpdate(value)
    }
    .store(in: &cancellables)
```

With Retainable, the syntax becomes more concise and readable. You can directly pass the function reference. After:
```swift
publisher
    .sink(weak(ThisClass.handleUpdate))
    .store(in: &cancellables)
```

### Example 2: Async callbacks
In traditional usage, calling an asynchronous network request and passing a completion handler often requires careful handling to avoid retain cycles:
```swift
networkManager.fetchData { [weak self] result in
    guard let self = self else { return }
    Task {
        await self.processResult(result)
    }
}
```

With Retainable, the code becomes more concise and maintainable. You can directly pass the processResult function as a completion handler:
```swift
networkManager.fetchData(completion: weak(ThisClass.processResult))
```
In this example, Retainable efficiently manages the weak capture of self, simplifying the syntax and improving code readability in asynchronous scenarios.

### Example 3: Simplifying implicit/explicit closure capture
In a standard approach without `Retainable`, if you have a function like `processResult` that receives several parameters, some being passed into the closure, others being captured by the closure, you typically capture the value implicitly:
```swift
func processResult(userId: String, chatId: String, result: Result<Model, Error>) {
}

let userId = "example_id"
let chatId = "example_chat_id"

networkManager.performTask { [weak self] result in
      guard let self else { return }
      self.processResult(
          userId: userId,
          chatId: chatId,
          result: result)
}
```
In this example, userId is implicitly captured in the closure and then passed to the processResult function with the `result` enum.

With Retainable, you can still simplify the syntax of weak retention while capturing values from scope.
```swift
networkManager.performTask(weak(
    capture: (userId, chatId),
    ThisClass.processResult))
```
Here, `weak(capture: (userId, chatId), ThisClass.processResult)` tells Retainable to capture userId and chatId and automatically decompose them as the first and second arguments to ThisClass.doSomething. This results in cleaner and more concise code, especially in scenarios where callbacks intermix values from the calling scope and values that were captured when the closure was created.

### Example 4: Unowned Capture in a Button Tap Action
In a typical UIKit setup, handling a button tap in a UIViewController might involve setting up an action with a closure that captures self unowned:
```swift
class MyViewController: UIViewController {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let action: UIAction = .init { [weak self] action in
            self?.buttonTapped(action)
        }
        button.addAction(
            action,
            for: .touchUpInside)
    }

    func buttonTapped() { ... }
}
```

With Retainable, we can simplify the button tap handling:
```swift
class MyViewController: UIViewController, Retainable {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.addAction(
            UIAction(handler: unowned(MyViewController.buttonTapped)),
            for: .touchUpInside)
    }

    func buttonTapped() { ... }
}
```
In this revised example, since the button is owned by the view controller, we know the function can be unowned, `unowned()` is used to specify that the buttonTapped method of self (the view controller) should be called when the button is tapped. 

### Example 5: Unowned Capture to/from a KeyPath
Sometimes we want to simply read from or write to a single property. In Retainable, that's easy.
```swift
import SwiftUI

class ThisClass: ObservableObject {
  
  @Published
  var userName: String = ""
  
  lazy
  var userNameBinding: Binding<String> = .init(
      set: { [unowned self] value in
          self.userName = value
      },
      get: { [unowned self] value in
          self.userName
      })
}
```

With Retainable, we can simplify read/writes:
```swift
import SwiftUI

class ThisClass: Retainable, ObservableObject {
  
  @Published
  var userName: String = ""
  
  lazy
  var userNameBinding: Binding<String> = .init(
      set: unowned(\.userName),
      get: unowned(\.userName))
}
```

### Example 6: Defering and Setting
Sometimes we want to defer some action to the end of our callback, and perhaps we want to set some value signifying completion.
```swift
DispatchQueue
    .main
    .asyncAfter(deadline: .now() + 10)
{ [weak self, controller] in
    defer {
        controller.isPaused = true
        controller.isSeeking = false
    }
    guard let self else { return }
    self.endTimer()
}
```

With Retainable, we can defer callbacks to the end of a closure and specify variadic key paths to set.
```swift
DispatchQueue
    .main
    .asyncAfter(
        deadline: .now() + 10,
        execute: weak(
            ThisClass.endTimer,
            defer: controller.strong(\.isPaused, \.isSeeking, set: true, false)))
```
