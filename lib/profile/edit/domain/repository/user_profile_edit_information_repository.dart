import 'package:moony_app/profile/edit/domain/model/user_profile_edit_information_entity.dart';

/// Repository for user edit information
abstract class UserProfileEditInformationRepository {
  /// Get the user information
  Future<UserProfileEditInformationEntity> getUserInformation(
      {required String id});
}
