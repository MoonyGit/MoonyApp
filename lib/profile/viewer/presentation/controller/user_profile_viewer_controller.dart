import 'package:dartz/dartz.dart' hide id;
import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/profile/resources/router.dart' as router_profile;
import 'package:moony_app/profile/resources/strings.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_aggregate_preference_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_enum_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_id.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_description_entity.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_preference_entity.dart';
import 'package:moony_app/profile/viewer/presentation/controller/user_profile_category_ui_mapper.dart';
import 'package:moony_app/profile/viewer/presentation/model/user_profile_preference_ui.dart';
import 'package:moony_app/profile/viewer/presentation/model/user_profile_ui_item.dart';
import 'package:moony_app/settings/resources/router.dart';

/// User profile viewer controller
class UserProfileViewerController extends GetxController {
  /// Constructor
  UserProfileViewerController(
      this._getUserProfileDescriptionUseCase,
      this._getUserPreferencesUseCase,
      this._getUserProfileCategory,
      ) {
    loadUserContent();
  }

  /// Get user profile information
  final AsyncUseCase<Either<Failure, UserProfileDescriptionEntity>>
  _getUserProfileDescriptionUseCase;

  /// Get user preferences for a given category
  final AsyncParamUseCase<UserProfileCategoryId,
      UserProfileAggregatePreferenceEntity> _getUserPreferencesUseCase;

  /// Get user profile category
  final AsyncUseCase<List<UserProfileCategoryEnumEntity>>
  _getUserProfileCategory;

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
            (UserProfilePreferenceEntity entity) => entity.toUi(),
      )
          .toList();
      moonyMessage.value = value.moonyMessage.getOrCrash().translate();
    });
  }

// TODO relation, gender, passion, travel, food done

  /// Get the list of chips selected for a given category
  /// [selectedItems] list of item selected
  void onPreferenceChipsClick(
      Map<int, String> selectedItems,
      ) {
    Logger.d("received value $selectedItems");
  }

  /// Generate all information needed for the user profile
  /// First generate the user profile information
  /// Then generate all items like header, description and category
  Future<void> loadUserContent() async {
    /// List of all holder to fill and display
    final List<UserProfileUi> result =
    List<UserProfileUi>.empty(growable: true);

    /// Get all categories available
    final List<UserProfileCategoryEnumEntity> categories =
    await _getUserProfileCategory();

    /// Get the user information
    final UserProfileDescriptionEntity? userDetail =
    (await _getUserProfileDescriptionUseCase()).fold(
          (Failure failure) => null,
          (UserProfileDescriptionEntity answer) => answer,
    );

    /// Add first head, then description, then header for category
    result.add(UserProfileHeader(title: userProfileAbout.translate()));
    result.add(
      UserProfileDescription(
        content: userDetail?.description.getOrCrash() ?? "",
      ),
    );
    result.add(UserProfileHeader(title: userProfileEssential.translate()));

    for (final UserProfileCategoryEnumEntity element in categories) {
      result.add(element.toUi());
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

/// UserProfilePreferenceEntity mapper
extension UserProfilePreferenceEntityMapper on UserProfilePreferenceEntity {
  /// mapper data model to domain
  UserProfilePreferencesUi toUi() => UserProfilePreferencesUi(
    id: id,
    title: title.getOrCrash(),
    isSelected: isSelected,
  );
}
