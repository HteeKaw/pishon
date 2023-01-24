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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBToyNGDw6L14-yqknWSQxUincMkxLDnoI',
    appId: '1:374434560804:web:ca18bb397ef21b4f7551b1',
    messagingSenderId: '374434560804',
    projectId: 'p-shop-259b5',
    authDomain: 'p-shop-259b5.firebaseapp.com',
    storageBucket: 'p-shop-259b5.appspot.com',
    measurementId: 'G-SBPLTE0FGV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcK84YrurI5CgGFWmtlnU7SfgF0EqEj2I',
    appId: '1:374434560804:android:39dbab3ab5961fed7551b1',
    messagingSenderId: '374434560804',
    projectId: 'p-shop-259b5',
    storageBucket: 'p-shop-259b5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFDffGjkIZdg7sy3ghUqRfJEQ50VM5IXk',
    appId: '1:374434560804:ios:b642b7e5370c141d7551b1',
    messagingSenderId: '374434560804',
    projectId: 'p-shop-259b5',
    storageBucket: 'p-shop-259b5.appspot.com',
    iosClientId: '374434560804-tb1tr97umt788pgk6soa9i55rfvqqcbg.apps.googleusercontent.com',
    iosBundleId: 'com.example.pishon',
  );
}
