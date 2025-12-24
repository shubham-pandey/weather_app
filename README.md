# Weather App 🌤️

A beautiful and intuitive weather application built with Flutter that provides real-time weather information and 7-day forecasts based on your current location.

## 📱 Features

- **Real-time Weather Data**: Get current weather conditions including temperature, humidity, wind speed, and more
- **7-Day Forecast**: View detailed weather predictions for the upcoming week
- **Location-based**:  Automatically detects your current location using GPS
- **Geocoding**: Reverse geocoding to display your current location name
- **Clean UI**: Modern and user-friendly interface with smooth animations
- **Cross-platform**: Works on both iOS and Android devices

## 🏗️ Architecture

The app follows a clean architecture pattern with clear separation of concerns:

```
lib/
├── api/                 # API integration layer
│   ├── api.dart        # API key configuration
│   └── fetch_weather.dart  # Weather API service
├── controller/          # State management with GetX
├── models/             # Data models
│   ├── weather_data. dart
│   ├── weather_data_current. dart
│   └── weather_data_daily.dart
├── screen/             # UI screens
│   └── homescreen.dart
├── utils/              # Utility functions
├── widgets/            # Reusable UI components
│   ├── header_widget.dart
│   ├── current_weather_widget.dart
│   └── daily_data_forecast.dart
└── main.dart           # App entry point
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=2.17.5 <3.0.0)
- Dart SDK
- iOS Simulator/Android Emulator or physical device
- Weather API key from [WeatherAPI. com](https://www.weatherapi.com/)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/shubham-pandey/weather_app.git
   cd weather_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure API Key**
   - Open `lib/api/api.dart`
   - Replace the API key with your own: 
   ```dart
   const apiKey = "YOUR_API_KEY_HERE";
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 📦 Dependencies

The app uses the following key packages:

- **[get](https://pub.dev/packages/get)** (^4.7.2) - State management and routing
- **[geolocator](https://pub.dev/packages/geolocator)** (^14.0.2) - Location services
- **[geocoding](https://pub.dev/packages/geocoding)** (^4.0.0) - Reverse geocoding
- **[http](https://pub.dev/packages/http)** (^1.5.0) - HTTP requests
- **[intl](https://pub.dev/packages/intl)** (^0.20.2) - Internationalization and date formatting
- **[sleek_circular_slider](https://pub.dev/packages/sleek_circular_slider)** (^2.1.0) - Circular slider widgets

## 🔑 API Configuration

This app uses the [WeatherAPI.com](https://www.weatherapi.com/) service.  To get your free API key:

1. Visit [WeatherAPI.com](https://www.weatherapi.com/)
2. Sign up for a free account
3. Navigate to your dashboard to get your API key
4. Update the `apiKey` constant in `lib/api/api.dart`

## 🛠️ Platform Configuration

### iOS

Minimum iOS version: **13.0**

Required permissions in `Info.plist`:
- Location Services (automatically handled by geolocator package)

### Android

Required permissions in `AndroidManifest.xml`:
- `ACCESS_FINE_LOCATION`
- `ACCESS_COARSE_LOCATION`
- `INTERNET`

## 📸 Screenshots

*Add your app screenshots here*

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!  Feel free to check the [issues page](https://github.com/shubham-pandey/weather_app/issues).

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is available for personal and educational use. 

## 👨‍💻 Author

**shubham-pandey**

- GitHub: [@shubham-pandey](https://github.com/shubham-pandey)

## 🙏 Acknowledgments

- Weather data provided by [WeatherAPI.com](https://www.weatherapi.com/)
- Built with [Flutter](https://flutter.dev/)
- State management powered by [GetX](https://pub.dev/packages/get)

---

Made with ❤️ using Flutter
