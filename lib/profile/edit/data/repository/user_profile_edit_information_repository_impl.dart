import 'package:moony_app/profile/edit/data/model/user_profile_edit_information_data_model.dart';
import 'package:moony_app/profile/edit/data/source/user_profile_edit_information_datasource_impl.dart';
import 'package:moony_app/profile/edit/domain/model/user_profile_edit_information_entity.dart';
import 'package:moony_app/profile/edit/domain/repository/user_profile_edit_information_repository.dart';

/// User profile edit information repository implementation
class UserProfileEditInformationRepositoryImpl
    extends UserProfileEditInformationRepository {
  /// Constructor
  UserProfileEditInformationRepositoryImpl(
      this._userProfileEditInformationDataSource);

  /// UserProfileInformationDataSource instance
  final UserProfileEditInformationDataSource _userProfileEditInformationDataSource;

  @override
  Future<UserProfileEditInformationEntity> getUserInformation(
      {required String id,}) async =>
      _userProfileEditInformationDataSource.getUserInformation(id: id).then(
            (UserProfileEditInformationDataModel value) =>
            UserProfileEditInformationEntity(
              description: value.description,
              id: value.id,
              pictures: Uri.parse(value.pictures),
              location: value.location,
              email : value.email,
              phoneNumber: value.phoneNumber,
              lastName: value.lastName,
              firstName: value.firstName,
              age: value.age,
            ),
      );
}
