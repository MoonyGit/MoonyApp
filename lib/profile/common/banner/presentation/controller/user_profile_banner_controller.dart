import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/common/banner/domain/model/user_profile_banner_entity.dart';
import 'package:moony_app/profile/common/banner/presentation/model/user_profile_banner_ui.dart';

/// User profile banner controller
class UserProfileBannerController extends GetxController {
  /// Constructor
  UserProfileBannerController(
      this._getUserProfileActivityInformationUseCase,
      ) {
    _fetchUserInformation();
  }

  /// Get user profile information
  final AsyncUseCase<UserProfileBannerEntity>
  _getUserProfileActivityInformationUseCase;

  /// User profile information, default value is null
  late Rxn<UserProfileBannerUi> userInformation = Rxn<UserProfileBannerUi>();

  /// Get the current user information
  Future<void> _fetchUserInformation() async {
    /// Get the user information
    final UserProfileBannerEntity userDetail =
    await _getUserProfileActivityInformationUseCase();

    /// Build user information for ui from entity
    userInformation.value = userDetail.toUi();
  }
}

/// UserProfileBannerEntity mapper
extension UserProfileBannerEntityMapper on UserProfileBannerEntity {
  /// mapper domain to ui
  UserProfileBannerUi toUi() => UserProfileBannerUi(
    location: location.city.getOrCrash(),
    birthdate: birthdate.getAge(),
    firstName: firstName.getOrCrash(),
    lastName: lastName.getOrCrash(),
    profilePhoto: pictures.toString(),
    activityNumber: activityNumber.getOrCrash(),
    froonysNumber: froonysNumber.getOrCrash(),
  );
}
