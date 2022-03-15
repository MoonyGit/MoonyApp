import 'package:kt_dart/kt.dart';
import 'package:moony_app/profile/viewer/data/model/user_profile_information_data_model.dart';

/// Interface for provide the data source of user information
abstract class UserProfileInformationDataSource {
  /// Return the user information
  Future<UserProfileInformationDataModel> getUserViewerInformation({
    required String id,
  });
}

/// Provide the data source for user information
class UserProfileInformationDataSourceImpl
    extends UserProfileInformationDataSource {
  @override
  Future<UserProfileInformationDataModel> getUserViewerInformation({
    required String id,
  }) {
    throw NotImplementedException();
  }
}
