import 'package:moony_app/profile/activity/domain/model/user_profile_activity_entity.dart';

/// Repository for user coming activities
abstract class UserProfileActivityRepository {
  /// Get the user coming activities
  Future<List<UserProfileActivityEntity>> getActivities();
}
