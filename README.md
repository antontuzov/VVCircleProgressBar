# VVCircleProgressBar
[![Pod Version](https://img.shields.io/badge/cocoapod-v0.0.4-blue.svg)]
[![Swift 4.2](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://swift.org)
[![Twitter: @vinothvino42](https://img.shields.io/badge/Contact-Twitter-blue.svg?style=flat)](https://twitter.com/vinothvino42)

A custom pulse animating circle progress bar.

## Preview

![VVCircleProgressBar1](Preview/VVCircleProgressBar1.png)
![VVCircleProgressBar2](Preview/VVCircleProgressBar2.png)

## Installation
You can install this circle progress bar in two ways.

### 1. CocoaPods
VVCircleProgressBar is available through [Cocoapods](https://cocoapods.org). To install it, simply add the following line to your Podfile.

```
pod 'VVCircleProgressBar'
```

### 2. Manually
Download and copy ```VVCircleProgressBar/VVCircleProgressBar.swift``` file to your project.

## Usage

```VVCircleProgressBar``` can be instantiated programmatically.

```swift
let progressBar = VVCircleProgressBar()
progressBar.center = self.view.center
self.view.addSubview(progressBar)
```

## Customize

You can customize the progress bar color, text font and text color

* Progress Text

```swift
progressBar.textColor = UIColor.white
progressBar.font = UIFont(name: "HelveticaNeue-Bold", size: 24)!
```

* Progress Bar Color

```swift
progressBar.pulseColor = UIColor.pulseFillColor
progressBar.progressColor = UIColor.outlineStrokeColor
progressBar.trackStrokeColor = UIColor.trackStrokeColor
progressBar.trackFillColor = UIColor.backgroundColor
```

* Size of Progress Bar

```swift
progressBar.progressLayerWidth = 20
progressBar.trackLayerWidth = 20
progressBar.pulseLayerWidth = 1.3
```

To start pulse animation

```swift
progressBar.startPulseAnimation()
```

To stop pulse animation

```swift
progressBar.stopPulseAnimation()
```

## License

VVCircleProgressBar is available under MIT license. See the [LICENSE](https://github.com/vinothvino42/VVCircleProgressBar/blob/master/LICENSE) file for more info.

## Author

* [Vinoth Vino](https://twitter.com/vinothvino42)

