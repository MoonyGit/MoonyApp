import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

/// Interface to handle backend instance
abstract class Backend {

  static final Backend _instance = FirebaseImpl();

  /// Define here which backend to use
  static Backend getInstance() => _instance;

  /// init method
  Future<void> init();
}

/// Firebase implementation
class FirebaseImpl implements Backend {
  /// Should use firebase emulators
  static const bool _useFirebaseEmulator = false;

  @override
  Future<void> init() async {
    await Firebase.initializeApp();
    if (_useFirebaseEmulator) {
      await _connectToFirebaseEmulator();
    }
  }

  /// Connect to the firebase emulator for Firestore and Authentication
  Future<void> _connectToFirebaseEmulator() async {
    final String localHostString =
        Platform.isAndroid ? '10.0.2.2' : 'localhost';

    FirebaseFirestore.instance.settings = Settings(
      host: '$localHostString:8080',
      sslEnabled: false,
      persistenceEnabled: false,
    );

    await FirebaseAuth.instance.useAuthEmulator(localHostString, 9099);
  }
}
