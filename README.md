# ArmongateMobileAccessSDK

## 🚀 Zero Configuration Installation

### Swift Package Manager (Recommended)
1. In Xcode: File → Add Package Dependencies
2. Paste: `https://github.com/armongate-dev/mobileaccess-sdk`
3. Click "Add Package"
4. **That's it!** No additional setup required.

### Manual Installation
Download the XCFramework from [Releases](https://github.com/armongate-dev/mobileaccess-sdk/releases) and drag to your project.

## 📱 Usage

### Swift
```swift
import ArmongateMobileAccessSDK

let config = SDKConfig(sdkKey: "your-api-key", debugMode: true)
ArmongateMobileAccess.shared.initialize(with: config)
```

### Objective-C
```objc
#import <ArmongateMobileAccessSDK/ArmongateMobileAccessSDK.h>

SDKConfig *config = [[SDKConfig alloc] initWithSdkKey:@"your-api-key" debugMode:YES];
[[ArmongateMobileAccess shared] initializeWith:config];
```

## ✅ Zero Configuration Features
- **Works in both Swift and Objective-C projects**
- **No dependencies required** - VoramCore embedded
- **No linker flags needed** - Everything pre-linked
- **No build settings required** - Just add and use
- **Cross-platform support** - iOS Device + Simulator

## Framework Details
- **Version**: 0.0.2-beta.10
- **Checksum**: `48f1d86dda96d9c6c753f337367fc6c6dd7753ebacfc810efba0f7530b872411`
- **Minimum iOS**: 13.0
- **Architecture**: arm64, x86_64 (simulator)
- **Framework Type**: Dynamic framework with embedded static core

## Permissions Required

Add these to your `Info.plist`:

```xml
<key>NSBluetoothAlwaysUsageDescription</key>
<string>This app uses Bluetooth to connect to devices</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>This app uses location services for beacon detection</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app uses location services for beacon detection</string>
```

## Technical Architecture

This SDK uses a **unified approach**:
- **ArmongateMobileAccessSDK**: Dynamic framework (public API)
- **VoramCore**: Embedded as static library (internal implementation)
- **Zero Dependencies**: Everything is self-contained

## Direct Download
The XCFramework is available as a release asset.
