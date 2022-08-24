# Generate code for all the packages with dynamic features
watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

build:
	flutter pub run build_runner build --delete-conflicting-outputs

# Only execute this if you have the very_good CLI installed:
# dart pub global activate very_good_cli
# recursively executes pub get for all packages in the project
pub-get:
	very_good packages get -r

run-dev:
	flutter run --target=lib/main_development.dart --flavor=development

run-staging:
	flutter run --target=lib/main_staging.dart --flavor=staging

run-production:
	flutter run --target=lib/main_production.dart --flavor=production

clean-ios:
	flutter clean && rm -f ios/Podfile.lock pubspec.lock && rm -rf ios/.symlinks ios/Pods ios/Runner.xcworkspace

format:
	flutter format lib packages test

analyze:
	flutter analyze lib packages test

# Unconventional naming, as `make test` is reserved
randtest:
	flutter test --no-pub --coverage --test-randomize-ordering-seed random lib && \
	flutter test --no-pub --coverage --test-randomize-ordering-seed random packages

# Make sure that this target completes without errors if you don't want to see GitHub Action failing
prepush:
	make format && make analyze && make randtest

# Creates a new flutter package using mason & installs the dependencies
# Usage: make new-flutter-package name=<package_name>
new-flutter-package:
	cd packages && \
	mason make flutter_package --name $(name) && \
    cd $(name) && \
    flutter pub get

gen-launcher-icons:
	flutter pub run flutter_launcher_icons:main

# Possible flavors: staging, production
# e.g.: make release-internal-android flavor=staging
release-internal-android:
	cd android/fastlane && bundle exec fastlane internal flavor:$(flavor)
