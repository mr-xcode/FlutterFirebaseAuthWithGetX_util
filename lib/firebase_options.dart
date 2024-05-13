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
    apiKey: 'AIzaSyC7fA4PmoRYgnZYod53LOrQg1AcUHa0i_s',
    appId: '1:620022403549:web:18f011a94c93fb8d856634',
    messagingSenderId: '620022403549',
    projectId: 'tutorials-58007',
    authDomain: 'tutorials-58007.firebaseapp.com',
    storageBucket: 'tutorials-58007.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsvv-nk1lbqF3nZosipXbk8JMAZneyDPU',
    appId: '1:620022403549:android:472b290667ebe256856634',
    messagingSenderId: '620022403549',
    projectId: 'tutorials-58007',
    storageBucket: 'tutorials-58007.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5HFKOptOi0eq0rUEs2VrKcdlf9-oKi90',
    appId: '1:620022403549:ios:014655b685c96dd5856634',
    messagingSenderId: '620022403549',
    projectId: 'tutorials-58007',
    storageBucket: 'tutorials-58007.appspot.com',
    iosBundleId: 'com.tech4mm.firebaseAuthWithGetx',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5HFKOptOi0eq0rUEs2VrKcdlf9-oKi90',
    appId: '1:620022403549:ios:014655b685c96dd5856634',
    messagingSenderId: '620022403549',
    projectId: 'tutorials-58007',
    storageBucket: 'tutorials-58007.appspot.com',
    iosBundleId: 'com.tech4mm.firebaseAuthWithGetx',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC7fA4PmoRYgnZYod53LOrQg1AcUHa0i_s',
    appId: '1:620022403549:web:994da0f123197dbe856634',
    messagingSenderId: '620022403549',
    projectId: 'tutorials-58007',
    authDomain: 'tutorials-58007.firebaseapp.com',
    storageBucket: 'tutorials-58007.appspot.com',
  );
}