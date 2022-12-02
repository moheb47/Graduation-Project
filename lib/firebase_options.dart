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
    apiKey: 'AIzaSyBTVYALnG4I4QM-yh1sYShGYEYg66iNedI',
    appId: '1:586351238266:web:e7c3a54018483144412fc3',
    messagingSenderId: '586351238266',
    projectId: 'graduation-project-ab901',
    authDomain: 'graduation-project-ab901.firebaseapp.com',
    storageBucket: 'graduation-project-ab901.appspot.com',
    measurementId: 'G-6FBFW0S1QF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDos2F0Kuy6HmeLAZsy2h2_RCCjPgV1ybQ',
    appId: '1:586351238266:android:f7599eaa301c1ebd412fc3',
    messagingSenderId: '586351238266',
    projectId: 'graduation-project-ab901',
    storageBucket: 'graduation-project-ab901.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCRtvzg9HRZPblsOPFBPcWPJigZOYCdwcU',
    appId: '1:586351238266:ios:accdcf6e55270782412fc3',
    messagingSenderId: '586351238266',
    projectId: 'graduation-project-ab901',
    storageBucket: 'graduation-project-ab901.appspot.com',
    iosClientId: '586351238266-lbskjdl6gkcrunsj9lhh8r066soqqdam.apps.googleusercontent.com',
    iosBundleId: 'com.example.graduationProject',
  );
}
