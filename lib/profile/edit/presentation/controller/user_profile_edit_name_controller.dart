import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/edit/domain/model/user_profile_edit_information_entity.dart';
import 'package:moony_app/profile/edit/presentation/model/user_profil_edit_name_ui.dart';
import 'package:moony_app/settings/resources/router.dart';

/// viewModel
class UserProfileEditNameController extends GetxController {
  /// Constructor
  UserProfileEditNameController(this._userProfileEditInformationUseCase) {
    loadUserProfileName();
  }

  /// user profile information to edit name
  late Rxn<UserProfileEditNameUi> userProfileEditName =
  Rxn<UserProfileEditNameUi>();

  final AsyncUseCase<UserProfileEditInformationEntity>
  _userProfileEditInformationUseCase;

  /// get the user profile name
  Future<void> loadUserProfileName() async {
    _userProfileEditInformationUseCase()
        .then((UserProfileEditInformationEntity userProfile) {
      final UserProfileEditNameUi temp = UserProfileEditNameUi(
        firstName: userProfile.firstName,
        lastName: userProfile.lastName,
      );
      userProfileEditName.value = temp;
    });
  }
}
