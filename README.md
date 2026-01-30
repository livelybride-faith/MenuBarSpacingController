# 🍏 Menu Bar Spacer

A lightweight macOS utility to customize the spacing between menu bar icons. Built with Swift and SwiftUI.

## 📖 Overview
Ever feel like the macOS menu bar icons are too spread out (or too cramped)? This tool provides a simple graphical interface to adjust the `NSStatusItemSpacing` and `NSStatusItemSelectionPadding` global defaults without touching the Terminal.

## ✨ Features
* **Live Slider:** Choose a spacing value between 0 (tight) and 20 (wide).
* **Instant Refresh:** Automatically restarts `ControlCenter` to apply changes immediately.
* **Safety Reset:** A "Restore Default" button to get back to the standard macOS look instantly.

## 🚀 Installation
1. Download the application from the Dist folder page.
2. Drag **Menu Bar Spacer** to your Applications folder (optional).
3. **Note:** Since this app is not notarized, you may need to right-click the app and select **Open** the first time you run it.

## 🛠 Usage
1. Open the app.
2. Drag the slider to your preferred density.
3. Click **Apply Changes**. Your menu bar icons will disappear and reappear with the new spacing.

## ⚠️ Requirements
* macOS 12.0 or later.
* **Permissions:** This app requires the "App Sandbox" to be disabled (if building from source) so it can modify system defaults and refresh the Control Center.

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Open Source
1. You can check all the code I used in the app.

## Buy me a coffee 
[![PayPal](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.paypal.com/paypalme/MichelleYeow)
