import 'package:moony_app/profile/activity/domain/model/user_profile_activity_information_entity.dart';

/// Repository for user information
abstract class UserProfileActivityInformationRepository {
  /// Get the user activity information
  Future<UserProfileActivityInformationEntity> getUserInformation();
}
