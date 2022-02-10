import 'package:moony_app/profile/activity/data/model/user_profile_activity_data_model.dart';

/// Interface for user profile activities
abstract class UserProfileActivitiesDataSource {
  /// Get the list of coming activity for a user
  Future<List<UserProfileActivityDataModel>> getActivities();
}

/// User profile activities data source implementation
class UserProfileActivitiesDataSourceImpl
    extends UserProfileActivitiesDataSource {
  @override
  Future<List<UserProfileActivityDataModel>> getActivities() {
    final List<UserProfileActivityDataModel> result =
    List<UserProfileActivityDataModel>.empty(growable: true);

    for (int i = 0; i < 20; i++) {
      result.add(
        UserProfileActivityDataModel(
          id: "$i",
          activityName: "Soirée number $i",
          delay: i,
          location: "Paris ($i)",
          maxWaitingPartner: 20,
          numberWaitingPartner: i,
        ),
      );
    }

    return Future<List<UserProfileActivityDataModel>>.value(result);
  }
}
