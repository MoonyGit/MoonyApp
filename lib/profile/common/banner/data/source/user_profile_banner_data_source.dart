import 'package:kt_dart/kt.dart';
import 'package:moony_app/profile/common/banner/data/model/user_profile_banner_data_model.dart';

/// Interface to provide the data source of user activity information
abstract class UserProfileBannerDataSource {
  /// Return the user information
  Future<UserProfileBannerDataModel> getUserInformation();
}

/// Provide the data source for user activity information
class UserProfileBannerDataSourceImpl
    extends UserProfileBannerDataSource {
  @override
  Future<UserProfileBannerDataModel> getUserInformation() {
    throw NotImplementedException();
  }
}
