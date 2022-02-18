import 'package:moony_app/profile/viewer/domain/model/user_profile_information_entity.dart';

/// Repository for user information
abstract class UserProfileInformationRepository {
  /// Get the user information
  Future<UserProfileInformationEntity> getUserInformation({required String id});
}
