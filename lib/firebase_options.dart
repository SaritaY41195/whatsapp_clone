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
    apiKey: 'AIzaSyAveyG1ugHaKulG5dtZcFXMDdaYuskC8d4',
    appId: '1:193448246985:web:17fd2ab391173a9e425718',
    messagingSenderId: '193448246985',
    projectId: 'whatsappclone-6460e',
    authDomain: 'whatsappclone-6460e.firebaseapp.com',
    storageBucket: 'whatsappclone-6460e.appspot.com',
    measurementId: 'G-YELE13YF3P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMGsG4Vsi2M8n_JKulpYZ6r3Q77TJYQhE',
    appId: '1:193448246985:android:334b50cccfd53ea2425718',
    messagingSenderId: '193448246985',
    projectId: 'whatsappclone-6460e',
    storageBucket: 'whatsappclone-6460e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAt2a8RLX3BP29KQ6NRCmA73Uu_96SbDFU',
    appId: '1:193448246985:ios:3fbbdcfb87bfb85d425718',
    messagingSenderId: '193448246985',
    projectId: 'whatsappclone-6460e',
    storageBucket: 'whatsappclone-6460e.appspot.com',
    iosClientId: '193448246985-p5vomhp875aqteffug31973vk142ms5u.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAt2a8RLX3BP29KQ6NRCmA73Uu_96SbDFU',
    appId: '1:193448246985:ios:3fbbdcfb87bfb85d425718',
    messagingSenderId: '193448246985',
    projectId: 'whatsappclone-6460e',
    storageBucket: 'whatsappclone-6460e.appspot.com',
    iosClientId: '193448246985-p5vomhp875aqteffug31973vk142ms5u.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappClone',
  );
}
