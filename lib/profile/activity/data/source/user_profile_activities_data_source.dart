import 'package:kt_dart/kt.dart';
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
    throw NotImplementedException();
  }
}
