

import 'model/user_data_model.dart';

abstract class UserRemoteSource {
  /// Get remote user by id
  Future<UserDataModel?> getById({required String id});

  /// Create a remote user
  Future<void> create({required UserDataModel user});

  /// Update a remote user
  Future<void> update({required UserDataModel user});
}