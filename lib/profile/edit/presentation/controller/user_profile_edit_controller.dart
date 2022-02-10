import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/profile/edit/domain/model/user_profile_edit_information_entity.dart';
import 'package:moony_app/profile/edit/presentation/model/user_profile_edit_ui_item.dart';
import 'package:moony_app/profile/resources/router.dart' as routerProfile;
import 'package:moony_app/profile/resources/strings.dart';
import 'package:moony_app/settings/resources/router.dart';

/// viewModel
class UserProfileEditController extends GetxController {
  /// Constructor
  UserProfileEditController(this._userProfileEditInformationUseCase) {
    loadCategory();
  }

  /// items for all category and subcategory
  late Rxn<List<UserProfileEditUi>> preferencesItem =
  Rxn<List<UserProfileEditUi>>();

  final AsyncUseCase<UserProfileEditInformationEntity>
  _userProfileEditInformationUseCase;

  /// Get the list of all header and associated value from user profile
  Future<void> loadCategory() async {
    _userProfileEditInformationUseCase().then(
            (UserProfileEditInformationEntity userProfileEditInformationEntity) {
          final List<UserProfileEditUi> result =
          List<UserProfileEditUi>.empty(growable: true);

          result.add(
            UserProfileEditHeader(
              title: userEditProfileIdentityTitle.translate(),
            ),
          );
          result.add(
            UserProfileEditItem(
              content: userEditProfileIdentityPlaceholder.translate(),
              value:
              "${userProfileEditInformationEntity.firstName} ${userProfileEditInformationEntity.lastName}",
            ),
          );
          result.add(
            UserProfileEditHeader(
              title: userEditProfileLocationTitle.translate(),
            ),
          );
          result.add(
            UserProfileEditItem(
              content: userEditProfileLocationPlaceholder.translate(),
              value: userProfileEditInformationEntity.location,
            ),
          );
          result.add(
            UserProfileEditHeader(
              title: userEditProfilePhoneTitle.translate(),
            ),
          );
          result.add(
            UserProfileEditItem(
              content: userEditProfilePhonePlaceholder.translate(),
              value: userProfileEditInformationEntity.phoneNumber,
            ),
          );
          result.add(
            UserProfileEditHeader(
              title: userEditProfileEmailTitle.translate(),
            ),
          );
          result.add(
            UserProfileEditItem(
              content: userEditProfileEmailPlaceholder.translate(),
              value: userProfileEditInformationEntity.email,
            ),
          );
          preferencesItem.value = result;
        });
  }

  void goToEdit() {
    Get.toNamed(routerProfile.Router.userProfileEditNaming);
  }

  void goToSettings() {
   Get.toNamed(Router.setting);
  }
}
