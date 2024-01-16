# Flutter Todo App 

A simple Flutter Todo application that demonstrates the usage of ObjectBox for local data persistence, InheritedWidget for managing state across widgets efficiently, and ChangeNotifier for handling state changes.

## Features

- Add, edit, and delete tasks
- Local data persistence using ObjectBox
- Efficient state management with InheritedWidget and ChangeNotifier

## Getting Started

These instructions will help you set up and run the project on your local machine for development and testing purposes.

### Installing

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/your-username/flutter-todo-objectbox.git
    ```

2. Navigate to the project directory:

    ```bash
    cd flutter-todo-objectbox
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

### Running the App

Run the app on an emulator or a physical device:

```bash
flutter run
```

## Project Structure
  - lib/: Contains the Dart source code for the Flutter application.
  - models/: Define the data models
  - controller/: Implement services like ObjectBox database and task management.
  - view/: Contains different screens of the application.<br>/widgets: Reusable widgets used across the app.
  - main.dart: Entry point of the application.

## Dependencies

### Flutter Packages

- [google_fonts](https://pub.dev/packages/google_fonts): ^6.1.0
- [intl](https://pub.dev/packages/intl): ^0.19.0
- [objectbox](https://pub.dev/packages/objectbox): ^2.4.0
- [objectbox_flutter_libs](https://pub.dev/packages/objectbox_flutter_libs): ^2.4.0
- [path_provider](https://pub.dev/packages/path_provider): ^2.1.2

### Development Dependencies

- [build_runner](https://pub.dev/packages/build_runner): ^2.4.8
- [flutter_lints](https://pub.dev/packages/flutter_lints): ^2.0.0
- [flutter_test](https://flutter.dev/docs/cookbook/testing/unit/introduction): sdk: flutter
- [objectbox_generator](https://pub.dev/packages/objectbox_generator): ^2.4.0


