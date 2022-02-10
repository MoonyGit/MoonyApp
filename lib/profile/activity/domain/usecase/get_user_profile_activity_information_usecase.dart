import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/activity/domain/model/user_profile_activity_information_entity.dart';
import 'package:moony_app/profile/activity/domain/repository/user_profile_activity_information_repository.dart';

/// Get user information for activity page
class GetUserProfileActivityInformationUseCase
    extends AsyncUseCase<UserProfileActivityInformationEntity> {

  ///GetUserInfoForProfile public constructor
  GetUserProfileActivityInformationUseCase(
      this._userProfileActivityInformationRepository);

  /// UserProfileInformationRepository instance
  final UserProfileActivityInformationRepository
  _userProfileActivityInformationRepository;

  @override
  Future<UserProfileActivityInformationEntity> call({void input}) =>
      _userProfileActivityInformationRepository.getUserInformation();
}
