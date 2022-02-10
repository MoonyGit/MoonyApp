import 'package:moony_app/profile/activity/data/model/user_profile_activity_information_data_model.dart';
import 'package:moony_app/profile/activity/data/source/user_profile_activity_information_data_source.dart';
import 'package:moony_app/profile/activity/domain/model/user_profile_activity_information_entity.dart';
import 'package:moony_app/profile/activity/domain/repository/user_profile_activity_information_repository.dart';

class UserProfileActivityInformationRepositoryImpl
    extends UserProfileActivityInformationRepository {
  /// Constructor
  UserProfileActivityInformationRepositoryImpl(
      this._userProfileActivityInformationDataSource);

  /// UserProfileInformationDataSource instance
  final UserProfileActivityInformationDataSource
  _userProfileActivityInformationDataSource;

  @override
  Future<UserProfileActivityInformationEntity> getUserInformation() async =>
      _userProfileActivityInformationDataSource.getUserInformation().then(
            (UserProfileActivityInformationDataModel value) =>
            UserProfileActivityInformationEntity(
              id: value.id,
              pictures: Uri.parse(value.pictures),
              location: value.location,
              lastName: value.lastName,
              firstName: value.firstName,
              age: value.age,
              froonysNumber: value.froonysNumber,
              activityNumber: value.activityNumber,
            ),
      );
}
