import 'package:moony_app/common/data/model/address_data_model.dart';
import 'package:moony_app/common/domain/model/user_activity.dart';
import 'package:moony_app/common/domain/model/user_froony.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/name.dart';
import 'package:moony_app/profile/common/banner/data/model/user_profile_banner_data_model.dart';
import 'package:moony_app/profile/common/banner/data/source/user_profile_banner_data_source.dart';
import 'package:moony_app/profile/common/banner/domain/model/user_profile_banner_entity.dart';
import 'package:moony_app/profile/common/banner/domain/repository/user_profile_banner_repository.dart';

/// Use profile banner repository impl
class UserProfileBannerRepositoryImpl extends UserProfileBannerRepository {
  /// Constructor
  UserProfileBannerRepositoryImpl(
      this._userProfileActivityInformationDataSource,
      );

  /// UserProfileInformationDataSource instance
  final UserProfileBannerDataSource _userProfileActivityInformationDataSource;

  @override
  Future<UserProfileBannerEntity> getUserInformation() async =>
      _userProfileActivityInformationDataSource.getUserInformation().then(
            (UserProfileBannerDataModel value) => value.toDomain(),
      );
}

/// UserProfileBanner mapper
extension UserProfileBannerMapper on UserProfileBannerDataModel {
  /// mapper data model to domain
  UserProfileBannerEntity toDomain() => UserProfileBannerEntity(
    pictures: Uri.parse(pictures),
    location: location.toDomain(),
    lastName: Name(input: lastName),
    firstName: Name(input: firstName),
    birthdate: Birthdate(input: birthdate),
    froonysNumber: UserFroony(input: froonysNumber),
    activityNumber: UserActivity(input: activityNumber),
  );
}
