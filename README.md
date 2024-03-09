# teeth_align_app

## 1. Install packages

```
flutter pub get
```

## 2. Generate localization (not necessary)

```
flutter gen-l10n
```

## 2.1. Generate assets with flutter_gen

```
fluttergen -c pubspec.yaml
```

## 3. Run watch build to generate configurations

```
dart run build_runner watch --delete-conflicting-outputs
```

## Android: Build android

### App bundle for release
```
flutter build appbundle --release
```

> generated filed located in: build/app/outputs/bundle/release

### Apk file
```
flutter build apk
```

> generated filed located in: build/app/outputs/flutter-apk

## iOS: Build ios

```
flutter build ios
```
