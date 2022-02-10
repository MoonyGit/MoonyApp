import 'package:moony_app/profile/edit/data/model/user_profile_edit_information_data_model.dart';

/// Interface for provide the data source of user information
abstract class UserProfileEditInformationDataSource {
  /// Return the user information
  Future<UserProfileEditInformationDataModel> getUserInformation({
    required String id,
  });
}

/// Provide the data source for user information
class UserProfileEditInformationDataSourceImpl
    extends UserProfileEditInformationDataSource {
  @override
  Future<UserProfileEditInformationDataModel> getUserInformation(
      {required String id}) {
    return Future<UserProfileEditInformationDataModel>.value(
      UserProfileEditInformationDataModel(
        id: "0",
        age: "28",
        description: "This is a small description",
        firstName: "Jordane",
        lastName: "Serreau",
        email: "jordaneserreau@gmail.com",
        phoneNumber: "+33663722748",
        location: "Paris",
        pictures:
        "https://www.ecranlarge.com/uploads/image/001/152/peepoodo-the-super-fuck-friends-affiche-fr-peepoodo-the-super-fuck-friends-saison-1-1152342.jpg",
      ),
    );
  }
}
