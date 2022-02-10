import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/profile/resources/router.dart' as router_profile;
import 'package:moony_app/profile/resources/strings.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_aggregate_preference_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_id.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_information_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_preference_entity.dart';
import 'package:moony_app/profile/viewer/presentation/model/user_profile_information_ui.dart';
import 'package:moony_app/profile/viewer/presentation/model/user_profile_preference_ui.dart';
import 'package:moony_app/profile/viewer/presentation/model/user_profile_ui_item.dart';
import 'package:moony_app/settings/resources/router.dart';

/// User profile viewer controller
class UserProfileController extends GetxController {
  /// Constructor
  UserProfileController(
      this._getUserProfileInformationUseCase,
      this._getUserPreferencesUseCase,
      this._getUserProfileCategory,
      ) {
    loadUserContent();
  }

  /// Get user profile information
  final AsyncUseCase<UserProfileInformationEntity>
  _getUserProfileInformationUseCase;

  /// Get user preferences for a given category
  final AsyncParamUseCase<UserProfileCategoryId,
      UserProfileAggregatePreferenceEntity> _getUserPreferencesUseCase;

  /// Get user profile category
  final AsyncUseCase<List<UserProfileCategoryEntity>> _getUserProfileCategory;

  /// User profile information
  late Rxn<UserProfileInformationUi> userInformation =
  Rxn<UserProfileInformationUi>();

  /// Category for the user profile
  late Rxn<List<UserProfileUi>> categoryItems = Rxn<List<UserProfileUi>>();

  /// User profile preferences inside a category
  Rxn<List<UserProfilePreferencesUi>> userProfilePreferences =
  Rxn<List<UserProfilePreferencesUi>>();

  /// Moony message inside a category
  Rx<String> moonyMessage =
  Rx<String>(AppStrings.moonyLoadingMessage.translate());

  /// Load preferences for the given category [key]
  Future<void> loadUserProfilePreferences({required String key}) async {
    _getUserPreferencesUseCase(input: UserProfileCategoryId(input: key))
        .then((UserProfileAggregatePreferenceEntity value) {
      userProfilePreferences.value = value.items
          .map(
            (UserProfilePreferenceEntity entity) => UserProfilePreferencesUi(
          id: entity.id,
          title: entity.title,
          isSelected: entity.isSelected,
        ),
      )
          .toList();
      moonyMessage.value = value.message.translate();
    });
  }

  /// Get the list of chips selected for a given category
  /// [selectedItems] list of item selected
  void onPreferenceChipsClick(
      Map<int, String> selectedItems,
      ) {
    selectedItems.forEach((int key, String value) {
      // Save in var in controller choicePreference
      Logger.d("received $key and value $value");
    });
  }

  /// Generate all information needed for the user profile
  /// First generate the user profile information
  /// Then generate all items like header, description and category
  void loadUserContent() async {
    /// List of all holder to fill and display
    final List<UserProfileUi> result =
    List<UserProfileUi>.empty(growable: true);

    /// Get all categories available
    final List<UserProfileCategoryEntity> categories =
    await _getUserProfileCategory();

    /// Get the user information
    final UserProfileInformationEntity userDetail =
    await _getUserProfileInformationUseCase();

    /// Build user information for ui from entity
    userInformation.value = UserProfileInformationUi(
      location: userDetail.location,
      age: userDetail.age,
      firstName: userDetail.firstName,
      lastName: userDetail.lastName,
      profilePhoto: userDetail.pictures.toString(),
      activityNumber: userDetail.activityNumber,
      froonysNumber: userDetail.froonysNumber,
    );

    /// Add first head, then description, then header for category
    result.add(UserProfileHeader(title: userProfileAbout.translate()));
    result.add(UserProfileDescription(content: userDetail.description));
    result.add(UserProfileHeader(title: userProfileEssential.translate()));

    /// For each category to display
    for (final UserProfileCategoryEntity item in categories) {
      result.add(
        UserProfileItem(title: item.title, icon: item.icon),
      );
    }

    /// Put the result list with all content inside Rxn object
    categoryItems.value = result;
  }

  /// Redirect to user profile edit page
  void goToUserProfileEdit() {
    Get.toNamed(router_profile.Router.userProfileEdit);
  }

  /// Redirect to the setting page
  void goToSetting() {
    Get.toNamed(Router.setting);
  }
}
