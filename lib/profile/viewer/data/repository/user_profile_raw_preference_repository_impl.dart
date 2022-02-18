import 'package:moony_app/profile/viewer/data/model/user_profile_detail_preference_data_model.dart';
import 'package:moony_app/profile/viewer/data/model/user_profile_raw_preference_data_model.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_preferency_datasource_impl.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_id.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_raw_aggregate_preference_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_raw_preference_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_raw_preference_repository.dart';

/// Repository for user preferences
class UserProfileRawPreferenceRepositoryImpl
    extends UserProfileRawPreferenceRepository {
  /// Constructor
  UserProfileRawPreferenceRepositoryImpl(
      this.userProfileRawPreferenceDataSource);

  /// UserProfileRawPreferenceDataSource instance
  final UserProfileRawPreferenceDataSource userProfileRawPreferenceDataSource;

  @override
  Future<UserProfileRawAggregatePreferenceEntity> getPreferences({
    required UserProfileCategoryId id,
  }) async =>
      userProfileRawPreferenceDataSource
          .getProfilePreferences(id.getOrCrash())
          .then(
            (UserProfileDetailPreferenceDataModel detail) =>
                UserProfileRawAggregatePreferenceEntity(
              items: detail.items
                  .map(
                    (UserProfileRawPreferenceDataModel preference) =>
                        UserProfileRawPreferenceEntity(
                      id: preference.id,
                      title: preference.title,
                    ),
                  )
                  .toList(),
              message: detail.message,
            ),
          );
}
