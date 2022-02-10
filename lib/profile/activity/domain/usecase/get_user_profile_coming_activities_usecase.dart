import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/activity/domain/model/user_profile_activity_entity.dart';
import 'package:moony_app/profile/activity/domain/repository/user_profile_activity_repository.dart';

/// Get user coming activities use case
class GetUserProfileComingActivitiesUseCase
    extends AsyncUseCase<List<UserProfileActivityEntity>> {
  ///GetUserInfoForProfile public constructor
  GetUserProfileComingActivitiesUseCase(this._userProfileActivityRepository);

  /// UserProfileInformationRepository instance
  final UserProfileActivityRepository _userProfileActivityRepository;

  @override
  Future<List<UserProfileActivityEntity>> call({void input}) =>
    _userProfileActivityRepository.getActivities();
}
