import 'package:moony_app/profile/viewer/data/model/user_profile_selected_preference_data_model.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_preferency_selected_datasource_impl.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_id.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_selected_preferencies_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_selected_preference_repository.dart';

/// Repository for user selected preference
class UserProfileSelectedPreferenceRepositoryImpl
    extends UserProfileSelectedPreferenceRepository {
  /// constructor
  UserProfileSelectedPreferenceRepositoryImpl(
      this.userProfilePreferenceSelectedDataSource);

  /// UserProfileSelectedPreferenceDataSource instance
  final UserProfileSelectedPreferenceDataSource
  userProfilePreferenceSelectedDataSource;

  @override
  Future<List<UserProfileSelectedPreferenceEntity>> getPreferences({
    required UserProfileCategoryId id,
  }) {
    return userProfilePreferenceSelectedDataSource
        .getPreferences(
      id.getOrCrash(),
    )
        .then(
          (List<UserProfileSelectedPreferenceDataModel> list) => list
          .map(
            (UserProfileSelectedPreferenceDataModel preference) =>
            UserProfileSelectedPreferenceEntity(id: preference.id),
      )
          .toList(),
    );
  }
}
