// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC5iVhuxfmlq8o2db1L-nBWW3XGdRAycxI',
    appId: '1:645183196811:web:da9d9f0869f1acb50a4e8e',
    messagingSenderId: '645183196811',
    projectId: 'auth-flutter-2029a',
    authDomain: 'auth-flutter-2029a.firebaseapp.com',
    storageBucket: 'auth-flutter-2029a.appspot.com',
    measurementId: 'G-MWZKJ8Y7RC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLa00jjpeQRbmK9bhyzpFt1hWe7yHGQSk',
    appId: '1:645183196811:android:69ea36032703ae460a4e8e',
    messagingSenderId: '645183196811',
    projectId: 'auth-flutter-2029a',
    storageBucket: 'auth-flutter-2029a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAckUYEkElvGvLVq4u5oeDRhNMBjLIBrhA',
    appId: '1:645183196811:ios:f8460984522631dd0a4e8e',
    messagingSenderId: '645183196811',
    projectId: 'auth-flutter-2029a',
    storageBucket: 'auth-flutter-2029a.appspot.com',
    iosClientId: '645183196811-fetmq85e7alknc9rnk4agla5rnhb302j.apps.googleusercontent.com',
    iosBundleId: 'com.example.authenticationFlutterBloc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAckUYEkElvGvLVq4u5oeDRhNMBjLIBrhA',
    appId: '1:645183196811:ios:f8460984522631dd0a4e8e',
    messagingSenderId: '645183196811',
    projectId: 'auth-flutter-2029a',
    storageBucket: 'auth-flutter-2029a.appspot.com',
    iosClientId: '645183196811-fetmq85e7alknc9rnk4agla5rnhb302j.apps.googleusercontent.com',
    iosBundleId: 'com.example.authenticationFlutterBloc',
  );
}
