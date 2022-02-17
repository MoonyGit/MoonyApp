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
            (List<UserProfileActivityDataModel> value) => value
            .map(
              (UserProfileActivityDataModel activity) =>
              UserProfileActivityEntity(
                activityName: activity.activityName,
                delay: activity.delay,
                location: activity.location,
                maxWaitingPartner: activity.maxWaitingPartner,
                numberWaitingPartner: activity.numberWaitingPartner,
                id: activity.id,
              ),
        )
            .toList(),
      );
}
