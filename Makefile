# Generate code for all the packages with dynamic features
watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

build:
	flutter pub run build_runner build --delete-conflicting-outputs

run-dev:
	flutter run --target=lib/main_development.dart --flavor=development

run-staging:
	flutter run --target=lib/main_staging.dart --flavor=staging

run-production:
	flutter run --target=lib/main_production.dart --flavor=production
