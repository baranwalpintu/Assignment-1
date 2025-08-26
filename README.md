# assignment

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



lib/
│── main.dart
│
├── core/
│   ├── api/
│   │    ├── api_client.dart   // handles API calls
│   │    ├── api_constants.dart
│   ├── error_handler.dart     // common error handling
│
├── models/
│   ├── login_response.dart
│   ├── photo.dart
│
├── providers/
│   ├── auth_provider.dart     // login state (Provider)
│   ├── photos_provider.dart   // home/photos state
│
├── screens/
│   ├── login_screen.dart
│   ├── home_screen.dart
│   ├── photo_detail_screen.dart
│
├── widgets/
│   ├── app_button.dart
│   ├── app_text_field.dart
│   ├── error_dialog.dart
│
└── routes/
    ├── app_routes.dart
