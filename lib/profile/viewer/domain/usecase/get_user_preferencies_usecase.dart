import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_aggregate_preference_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_id.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_preference_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_raw_aggregate_preference_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_raw_preference_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_selected_preferencies_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_raw_preference_repository.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_selected_preference_repository.dart';

/// UseCase to get all preference with user state
class GetUserPreferencesUseCase extends AsyncParamUseCase<UserProfileCategoryId, UserProfileAggregatePreferenceEntity> {

  /// Constructor
  GetUserPreferencesUseCase(this._userProfileRawPreferenceRepository,
      this._userProfileSelectedPreferenceRepository,);

  /// Repository user profile raw
  final UserProfileRawPreferenceRepository _userProfileRawPreferenceRepository;

  /// Repository user profile selected
  final UserProfileSelectedPreferenceRepository
  _userProfileSelectedPreferenceRepository;

  @override
  Future<UserProfileAggregatePreferenceEntity> call({
    required UserProfileCategoryId input,
  }) async {
    /// Get preference for a given category
    final UserProfileRawAggregatePreferenceEntity rawProfilePreferences =
    await _userProfileRawPreferenceRepository.getPreferences(id: input);

    /// Get selected by user preference for a given category
    final List<UserProfileSelectedPreferenceEntity> selectedProfilePreferences =
    await _userProfileSelectedPreferenceRepository.getPreferences(id: input);

    /// Combine the user choice for each preference matching the raw state
    /// Algo is like for each raw preference, check if find in user list
    /// If true then add the selected state to true, then false
    /// At the end we add the list with user state, and moony message to
    /// UserProfileAggregatePreferenceEntity object
    return UserProfileAggregatePreferenceEntity(
      items: rawProfilePreferences.items
          .map(
            (UserProfileRawPreferenceEntity preference) =>
            UserProfilePreferenceEntity(
              id: preference.id,
              title: preference.title,
              isSelected: selectedProfilePreferences.firstWhereOrNull(
                    (UserProfileSelectedPreferenceEntity element) =>
                element.id == preference.id,
              ) !=
                  null,
            ),
      )
          .toList(),
      message: rawProfilePreferences.message,
    );
  }
}
