import 'package:moony_app/common/data/user/remote/relation_state_data_model.dart';
import 'package:moony_app/profile/viewer/data/model/user_profile_information_data_model.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_information_datasource_impl.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_information_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_information_repository.dart';

/// User information repository implementation
class UserProfileInformationRepositoryImpl
    extends UserProfileInformationRepository {
  /// Constructor
  UserProfileInformationRepositoryImpl(this._userProfileInformationDataSource);

  /// UserProfileInformationDataSource instance
  final UserProfileInformationDataSource _userProfileInformationDataSource;

  @override
  Future<UserProfileInformationEntity> getUserInformation(
      {required String id}) async =>
      _userProfileInformationDataSource.getUserInformation(id: id).then(
            (UserProfileInformationDataModel value) =>
            UserProfileInformationEntity(
              description: value.description,
              id: value.id,
              spokenLanguage: value.spokenLanguage,
              relationState: value.relationState.toDomain(),
              pictures: Uri.parse(value.pictures),
              location: value.location,
              gender: value.gender,
              sexualOrientation: value.sexualOrientation,
              lastName: value.lastName,
              firstName: value.firstName,
              age: value.age,
              froonysNumber: value.froonysNumber,
              activityNumber: value.activityNumber,
            ),
      );
}
