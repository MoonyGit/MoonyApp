import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_data_source.freezed.dart';

/// The authentication data source contract
abstract class AuthDataSource {
  /// get the sign in user
  Future<UserDataSource?> getSignedInUser();

  /// get the sign in user by stream
  Stream<UserDataSource?> getUserAuthStateChanges();

}

/// User data source Model
class UserDataSource {
  /// Constructor
  UserDataSource({required this.id});
  /// id of user
  String id;
}
