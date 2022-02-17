import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/common/domain/model/user_profile_banner_entity.dart';
import 'package:moony_app/profile/common/presentation/model/user_profile_banner_ui.dart';

/// User profile banner controller
class UserProfileBannerController extends GetxController {
  /// Constructor
  UserProfileBannerController(
    this._getUserProfileActivityInformationUseCase,
  ) {
    fetchUserInformation();
  }

  /// Get user profile information
  final AsyncUseCase<UserProfileBannerEntity>
      _getUserProfileActivityInformationUseCase;

  /// User profile information, default value is null
  late Rxn<UserProfileBannerUi> userInformation = Rxn<UserProfileBannerUi>();

  /// Get the current user information
  Future<void> fetchUserInformation() async {
    /// Get the user information
    final UserProfileBannerEntity userDetail =
        await _getUserProfileActivityInformationUseCase();

    /// Build user information for ui from entity
    userInformation.value = UserProfileBannerUi(
      location: userDetail.location,
      age: userDetail.age,
      firstName: userDetail.firstName,
      lastName: userDetail.lastName,
      profilePhoto: userDetail.pictures.toString(),
      activityNumber: userDetail.activityNumber,
      froonysNumber: userDetail.froonysNumber,
    );
  }
}
