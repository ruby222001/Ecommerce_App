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
    apiKey: 'AIzaSyC914lpoRqXWBGsbDBMblhG-rhUkvdaYa8',
    appId: '1:82114985397:web:ef4a5f88a54d518eabedfc',
    messagingSenderId: '82114985397',
    projectId: 'socialmediaapp-bc083',
    authDomain: 'socialmediaapp-bc083.firebaseapp.com',
    storageBucket: 'socialmediaapp-bc083.appspot.com',
    measurementId: 'G-LLRCRYZ82D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuQTZPOsc9MSPLMx24_BiMXEFRfOqGsBc',
    appId: '1:82114985397:android:13502f1eafdad3caabedfc',
    messagingSenderId: '82114985397',
    projectId: 'socialmediaapp-bc083',
    storageBucket: 'socialmediaapp-bc083.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuhNRjjDeIRQp-ynqouD-WUi1o7Nws3sw',
    appId: '1:82114985397:ios:77861a77b86f5ce0abedfc',
    messagingSenderId: '82114985397',
    projectId: 'socialmediaapp-bc083',
    storageBucket: 'socialmediaapp-bc083.appspot.com',
    iosBundleId: 'com.example.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuhNRjjDeIRQp-ynqouD-WUi1o7Nws3sw',
    appId: '1:82114985397:ios:a112e34b06d75cfbabedfc',
    messagingSenderId: '82114985397',
    projectId: 'socialmediaapp-bc083',
    storageBucket: 'socialmediaapp-bc083.appspot.com',
    iosBundleId: 'com.example.app.RunnerTests',
  );
}