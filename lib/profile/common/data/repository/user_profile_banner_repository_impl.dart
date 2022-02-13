import 'package:moony_app/profile/common/data/model/user_profile_banner_data_model.dart';
import 'package:moony_app/profile/common/data/source/user_profile_banner_data_source.dart';
import 'package:moony_app/profile/common/domain/model/user_profile_banner_entity.dart';
import 'package:moony_app/profile/common/domain/repository/user_profile_banner_repository.dart';

/// Use profile banner repository impl
class UserProfileBannerRepositoryImpl extends UserProfileBannerRepository {
  /// Constructor
  UserProfileBannerRepositoryImpl(
      this._userProfileActivityInformationDataSource);

  /// UserProfileInformationDataSource instance
  final UserProfileBannerDataSource _userProfileActivityInformationDataSource;

  @override
  Future<UserProfileBannerEntity> getUserInformation() async =>
      _userProfileActivityInformationDataSource.getUserInformation().then(
            (UserProfileBannerDataModel value) => UserProfileBannerEntity(
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
