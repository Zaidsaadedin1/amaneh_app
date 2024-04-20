// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCxpA3Z5G9pUCr8WNkABMUH01L9nx8pM6c',
    appId: '1:908772226306:web:b24eeec59c5801eaabbe1b',
    messagingSenderId: '908772226306',
    projectId: 'amanehapp',
    authDomain: 'amanehapp.firebaseapp.com',
    storageBucket: 'amanehapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB06hCAl0UFW5TD9926yjcve_LmxIfE6-o',
    appId: '1:908772226306:android:18867bee69961a91abbe1b',
    messagingSenderId: '908772226306',
    projectId: 'amanehapp',
    storageBucket: 'amanehapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBc4y8OWA1PVfb1upCPcbiku-H-ySKMpmg',
    appId: '1:908772226306:ios:362aaa490d6911dfabbe1b',
    messagingSenderId: '908772226306',
    projectId: 'amanehapp',
    storageBucket: 'amanehapp.appspot.com',
    iosBundleId: 'com.example.amanehApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBc4y8OWA1PVfb1upCPcbiku-H-ySKMpmg',
    appId: '1:908772226306:ios:362aaa490d6911dfabbe1b',
    messagingSenderId: '908772226306',
    projectId: 'amanehapp',
    storageBucket: 'amanehapp.appspot.com',
    iosBundleId: 'com.example.amanehApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCxpA3Z5G9pUCr8WNkABMUH01L9nx8pM6c',
    appId: '1:908772226306:web:4bf229677e076b2cabbe1b',
    messagingSenderId: '908772226306',
    projectId: 'amanehapp',
    authDomain: 'amanehapp.firebaseapp.com',
    storageBucket: 'amanehapp.appspot.com',
  );
}
