# Lean Words 📚

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]


This app was created for an internal Dev Talk I held at the [Lean-Coders](https://lean-coders.at/) office.

The goal was to expose my (mostly webdev) colleagues to my favourite framework - Flutter.


### Functionality

<img src="https://user-images.githubusercontent.com/75510543/107295244-46ff9080-6a6f-11eb-9483-ee5f45f0f743.png" width=240 align="right">


I had lots of ideas for a fitting showcase app in mind. In the end, I went the nostalgic route and rewrote my [very first Flutter project](https://github.com/S-ecki/Wordpair_Generator). 
The project follows the simple idea from [this](https://flutter.dev/docs/get-started/codelab) Google Codelab: It exposes a list of randomly generated wordpairs and provides the possibility to save certain ones.



### Technologies

With the aim of sharing as much interesting tech, I ruthlessly overengineered the app using
- [Very Good CLI](https://pub.dev/packages/very_good_cli)
- [Auto Router](https://pub.dev/packages/auto_route)
- [BLoC State Management](https://bloclibrary.dev/#/)
- [Flutter Localizations](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)
- [Build Flavours](https://medium.com/@animeshjain/build-flavors-in-flutter-android-and-ios-with-different-firebase-projects-per-flavor-27c5c5dac10b)
- [Very Good Analysis](https://pub.dev/packages/very_good_analysis)
- [Layered Architecture](https://bloclibrary.dev/#/architecture)


[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli