
import 'package:moony_app/common/data/user/remote/relation_state_data_model.dart';
import 'package:moony_app/profile/viewer/data/model/user_profile_information_data_model.dart';

/// Interface for provide the data source of user information
abstract class UserProfileInformationDataSource {
  /// Return the user information
  Future<UserProfileInformationDataModel> getUserInformation(
      {required String id,});
}

/// Provide the data source for user information
class UserProfileInformationDataSourceImpl
    extends UserProfileInformationDataSource {
  @override
  Future<UserProfileInformationDataModel> getUserInformation(
      {required String id}) {
    return Future<UserProfileInformationDataModel>.value(
      UserProfileInformationDataModel(
        id: "0",
        age: "28",
        description: "This is a small description",
        firstName: "Jordane",
        lastName: "Serreau",
        sexualOrientation: "Hetero",
        gender: "Homme",
        location: "Paris",
        pictures: "https://www.ecranlarge.com/uploads/image/001/152/peepoodo-the-super-fuck-friends-affiche-fr-peepoodo-the-super-fuck-friends-saison-1-1152342.jpg",
        relationState: RelationStateDataModel.taken,
        spokenLanguage: "Français",
        froonysNumber: 456,
        activityNumber: 42,
      ),
    );
  }
}
