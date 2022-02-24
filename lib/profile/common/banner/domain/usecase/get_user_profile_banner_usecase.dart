import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/common/banner/domain/model/user_profile_banner_entity.dart';
import 'package:moony_app/profile/common/banner/domain/repository/user_profile_banner_repository.dart';

/// Get user information for activity page
class GetUserProfileBannerUseCase
    extends AsyncUseCase<UserProfileBannerEntity> {
  ///GetUserInfoForProfile public constructor
  GetUserProfileBannerUseCase(this._userProfileActivityInformationRepository);

  /// UserProfileInformationRepository instance
  final UserProfileBannerRepository _userProfileActivityInformationRepository;

  @override
  Future<UserProfileBannerEntity> call({void input}) =>
      _userProfileActivityInformationRepository.getUserInformation();
}
