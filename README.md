# Galaxy Launcher Chrome Extension

## Description

**Galaxy Launcher** is a Google Chrome extension designed to quickly access the Galaxy.org, Galaxy.eu, and Galaxy.org.au platforms. Each URL is opened in a separate window, simulating a desktop application experience.

## Features

- **Open URLs in Separate Windows:** Each button in the interface opens the corresponding URL in a new window, mimicking the behavior of a native application.
- **Multi-Language Support:** The extension supports English, Portuguese (Brazil), and Spanish, adapting to the user's browser language.
- **Intuitive Design:** The interface is designed to be clean and user-friendly, with interactive visual feedback for an enhanced experience.

## Installation

1. **Clone this repository** to your local machine.
2. **Open Google Chrome** and navigate to `chrome://extensions/`.
3. **Enable Developer Mode** using the toggle switch in the upper-right corner of the page.
4. **Click "Load unpacked"** and select the folder of the cloned extension.

## Project Structure

- **`manifest.json`:** Configuration file for the extension defining permissions, description, and icon settings.
- **`popup.html`:** HTML file defining the user interface layout of the extension.
- **`popup.js`:** Script that handles the logic for opening URLs in new windows.
- **`_locales/`:** Folder containing translation files for multi-language support.
  - **`en/messages.json`:** Translations in English.
  - **`pt_BR/messages.json`:** Translations in Portuguese (Brazil).
  - **`es/messages.json`:** Translations in Spanish.
- **`icon.png`:** Icon used for the extension in various resolutions.

## License

This project is licensed under the [MIT License](LICENSE).
