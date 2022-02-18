import 'package:moony_app/profile/viewer/domain/model/user_profile_category_id.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_selected_preferencies_entity.dart';

/// Repository for user preferences
abstract class UserProfileSelectedPreferenceRepository {
  /// Get the user preferences for a given category
  Future<List<UserProfileSelectedPreferenceEntity>> getPreferences(
      {required UserProfileCategoryId id,});
}
