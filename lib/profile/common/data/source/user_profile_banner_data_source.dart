import 'package:moony_app/profile/common/data/model/user_profile_banner_data_model.dart';

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
    return Future<UserProfileBannerDataModel>.value(
      UserProfileBannerDataModel(
        id: "0",
        age: "28",
        firstName: "Jordane",
        lastName: "Serreau",
        location: "Paris",
        pictures:
        "https://www.ecranlarge.com/uploads/image/001/152/peepoodo-the-super-fuck-friends-affiche-fr-peepoodo-the-super-fuck-friends-saison-1-1152342.jpg",
        froonysNumber: 456,
        activityNumber: 42,
      ),
    );
  }
}
