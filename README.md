# ShakeLog

[![CI Status](http://img.shields.io/travis/Andrew%20Skrypnik/ShakeLog.svg?style=flat)](https://travis-ci.org/Andrew Skrypnik/ShakeLog)
[![Version](https://img.shields.io/cocoapods/v/ShakeLog.svg?style=flat)](http://cocoapods.org/pods/ShakeLog)
[![License](https://img.shields.io/cocoapods/l/ShakeLog.svg?style=flat)](http://cocoapods.org/pods/ShakeLog)
[![Platform](https://img.shields.io/cocoapods/p/ShakeLog.svg?style=flat)](http://cocoapods.org/pods/ShakeLog)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ShakeLog is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ShakeLog"
```

```swift
import ShakeLog
```

add keys to `Info.plist`
```xml
<key>AELog</key>
<dict>
<key>Enabled</key>
<true/>
<key>Template</key>
<string>{message}</string>
</dict>
<key>AEConsole</key>
<dict>
<key>Enabled</key>
<true/>
</dict>
```

add `-DSHAKELOGSHOW` key to `Build Settings`->`Other Swift Flags` -> `Debug` to disable logs in `Release` builds 
```
#if SHAKELOGSHOW
    //... aelog()
#endif
```

then finish setup

```swift
Log.launch(with: UIApplicationDelegate)
Log.shared.minLevel = .debug

Log.shared.trace("trace", false)
Log.shared.debug("debug", true)
Log.shared.info("info", "true")
Log.shared.warning("warning", 10)
Log.shared.error("error", ["key": "value"])

```

## Author

Andrew Skrypnik, anarh93@gmail.com

## Dependency

`Log`: [https://github.com/delba/Log](https://github.com/delba/Log)

`AEConsole`: [https://github.com/tadija/AEConsole](https://github.com/tadija/AEConsole)

## License

ShakeLog is available under the MIT license. See the LICENSE file for more info.
