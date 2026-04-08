// Generated from android/app/google-services.json and ios/Runner/GoogleService-Info.plist.
// Re-run `flutterfire configure` if you add more platforms or change the Firebase project.
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web — '
        'run `flutterfire configure` or add web options here.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macOS — '
          'run `flutterfire configure`.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for Windows — '
          'run `flutterfire configure`.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for Linux — '
          'run `flutterfire configure`.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2DqA5DSeECiadPa3R0L2le4TZ9sjY5uw',
    appId: '1:777634515496:android:bda243aa6e5161a21f831d',
    messagingSenderId: '777634515496',
    projectId: 'flutter-course-ecddd',
    storageBucket: 'flutter-course-ecddd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBY_qdm5GomBz1WE3LZtXi9aBBg6qBorIw',
    appId: '1:777634515496:ios:702e4e41d83b97481f831d',
    messagingSenderId: '777634515496',
    projectId: 'flutter-course-ecddd',
    storageBucket: 'flutter-course-ecddd.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
