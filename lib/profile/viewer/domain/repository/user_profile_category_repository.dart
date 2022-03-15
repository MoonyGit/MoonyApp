import 'package:moony_app/profile/viewer/domain/model/user_profile_category_enum_entity.dart';

/// User profile category repository
abstract class UserProfileCategoryRepository {
  /// Get the user preferences for a given category
  Future<List<UserProfileCategoryEnumEntity>> getCategory();
}