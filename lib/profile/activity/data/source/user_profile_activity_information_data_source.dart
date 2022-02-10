import 'package:moony_app/profile/activity/data/model/user_profile_activity_information_data_model.dart';

/// Interface to provide the data source of user activity information
abstract class UserProfileActivityInformationDataSource {
  /// Return the user information
  Future<UserProfileActivityInformationDataModel> getUserInformation();
}

/// Provide the data source for user activity information
class UserProfileActivityInformationDataSourceImpl
    extends UserProfileActivityInformationDataSource {
  @override
  Future<UserProfileActivityInformationDataModel> getUserInformation() {
    return Future<UserProfileActivityInformationDataModel>.value(
      UserProfileActivityInformationDataModel(
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
