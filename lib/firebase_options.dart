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
    apiKey: 'AIzaSyAyr_u3_SiYRvq6ecv9bW9wcIGQWYr33Ss',
    appId: '1:142512993847:web:e11bb87c3a21561a0d71b2',
    messagingSenderId: '142512993847',
    projectId: 'esp32-cc534',
    authDomain: 'esp32-cc534.firebaseapp.com',
    databaseURL: 'https://esp32-cc534-default-rtdb.firebaseio.com',
    storageBucket: 'esp32-cc534.appspot.com',
    measurementId: 'G-7QEDJYF2K4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhiLPgTSBAI9xH_iuAG6zZfS-SHpdK3N8',
    appId: '1:142512993847:android:9366b7260bc7ce630d71b2',
    messagingSenderId: '142512993847',
    projectId: 'esp32-cc534',
    databaseURL: 'https://esp32-cc534-default-rtdb.firebaseio.com',
    storageBucket: 'esp32-cc534.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFtkG-EOKhm_bj-t1CoixLhV72IHlPOf4',
    appId: '1:142512993847:ios:c47db47afbbb430a0d71b2',
    messagingSenderId: '142512993847',
    projectId: 'esp32-cc534',
    databaseURL: 'https://esp32-cc534-default-rtdb.firebaseio.com',
    storageBucket: 'esp32-cc534.appspot.com',
    iosClientId: '142512993847-riei5m22lirsbqop8fsvclsgtird9eg5.apps.googleusercontent.com',
    iosBundleId: 'com.pr.esp32',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFtkG-EOKhm_bj-t1CoixLhV72IHlPOf4',
    appId: '1:142512993847:ios:c47db47afbbb430a0d71b2',
    messagingSenderId: '142512993847',
    projectId: 'esp32-cc534',
    databaseURL: 'https://esp32-cc534-default-rtdb.firebaseio.com',
    storageBucket: 'esp32-cc534.appspot.com',
    iosClientId: '142512993847-riei5m22lirsbqop8fsvclsgtird9eg5.apps.googleusercontent.com',
    iosBundleId: 'com.pr.esp32',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAyr_u3_SiYRvq6ecv9bW9wcIGQWYr33Ss',
    appId: '1:142512993847:web:2242ad4cba67aea50d71b2',
    messagingSenderId: '142512993847',
    projectId: 'esp32-cc534',
    authDomain: 'esp32-cc534.firebaseapp.com',
    databaseURL: 'https://esp32-cc534-default-rtdb.firebaseio.com',
    storageBucket: 'esp32-cc534.appspot.com',
    measurementId: 'G-VZBZ5K0NW5',
  );
}
