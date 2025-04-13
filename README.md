# SeismicDemo

SeismicDemo is a simple iOS app that displays real-time seismic activity messages over MQTT.  
It uses `SeismicLib` as its core library for managing MQTT connections and subscriptions.

## 📹 Demo
https://github.com/user-attachments/assets/97db2c2e-5c43-4f4d-8de5-587bcad4c973

> _Click the thumbnail above to watch the demo video._

## 🚀 Features

- Connects to an MQTT broker
- Subscribes to a seismic activity topic
- Displays incoming seismic messages in real-time
- Allows users to unsubscribe by simply closing the modal view

## 📦 Requirements

- iOS 14.0+
- Xcode 15+
- Swift 5+

## 🛠 Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/Sianwa/SeismicDemo.git
    ```
2. Open `SeismicDemo.xcworkspace` in Xcode.
3. Install any dependencies if needed (e.g., CocoaPods, Swift Package Manager).
4. Run the app on a simulator or device.

## 📚 Library Dependency

This app depends on [SeismicLib](https://github.com/Sianwa/SeismicLib).

Make sure SeismicLib is available in the workspace or added to the workspace.
