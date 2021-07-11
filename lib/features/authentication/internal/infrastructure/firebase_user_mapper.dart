import 'package:firebase_auth/firebase_auth.dart' as firebase;

import 'authentication_data_source.dart';

/// Mapper extension for firebase user
extension FirebaseUserDomainX on firebase.User {
  /// convert firebase user to model
  UserDataSource toDataSource() {
    return UserDataSource(id: uid);
  }
}
