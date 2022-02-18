import 'package:moony_app/profile/viewer/domain/model/user_profile_category_id.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_raw_aggregate_preference_entity.dart';

/// Repository for user preferences
abstract class UserProfileRawPreferenceRepository {
  /// Get the user preferences for a given category
  Future<UserProfileRawAggregatePreferenceEntity> getPreferences(
      {required UserProfileCategoryId id});
}
