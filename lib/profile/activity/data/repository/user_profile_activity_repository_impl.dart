import 'package:moony_app/common/data/model/address_data_model.dart';
import 'package:moony_app/common/domain/model/activity_delay.dart';
import 'package:moony_app/common/domain/model/activity_name.dart';
import 'package:moony_app/common/domain/model/activity_waiting_participant_number.dart';
import 'package:moony_app/profile/activity/data/model/user_profile_activity_data_model.dart';
import 'package:moony_app/profile/activity/data/source/user_profile_activities_data_source.dart';
import 'package:moony_app/profile/activity/domain/model/user_profile_activity_entity.dart';
import 'package:moony_app/profile/activity/domain/repository/user_profile_activity_repository.dart';

/// Repository impl for user profile coming activity
class UserProfileActivityRepositoryImpl extends UserProfileActivityRepository {
  /// Constructor
  UserProfileActivityRepositoryImpl(this._userProfileActivityDataSource);

  /// UserProfileInformationDataSource instance
  final UserProfileActivitiesDataSource _userProfileActivityDataSource;

  @override
  Future<List<UserProfileActivityEntity>> getActivities() async =>
      _userProfileActivityDataSource.getActivities().then(
            (List<UserProfileActivityDataModel> activities) => activities
            .map(
              (UserProfileActivityDataModel activity) =>
              activity.toDomain(),
        )
            .toList(),
      );
}

/// UserProfileActivity mapper
extension UserProfileActivityMapper on UserProfileActivityDataModel {
  /// mapper data model to domain
  UserProfileActivityEntity toDomain() => UserProfileActivityEntity(
    activityName: ActivityName(input: activityName),
    delayInDays: ActivityDelay(
      input: delay,
    ),
    location: location.toDomain(),
    activityWaitingParticipant: ActivityWaitingParticipant(
      input: numberWaitingPartner,
    ),
    activityId: activityId,
  );
}
