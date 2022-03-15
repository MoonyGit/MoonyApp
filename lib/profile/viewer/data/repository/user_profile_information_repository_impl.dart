import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/profile/viewer/data/model/user_profile_information_data_model.dart';
import 'package:moony_app/profile/viewer/data/source/remote/user_profile_information_datasource_impl.dart';
import 'package:moony_app/profile/viewer/domain/model/control/user_profile_description_control.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_description_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_information_repository.dart';

/// User information repository implementation
class UserProfileInformationRepositoryImpl
    extends UserProfileInformationRepository {
  /// Constructor
  UserProfileInformationRepositoryImpl(
      this._userProfileInformationDataSource, this._authSource);

  /// UserProfileInformationDataSource instance
  final UserProfileInformationDataSource _userProfileInformationDataSource;

  final AuthDataSource _authSource;

  @override
  Future<Either<Failure, UserProfileDescriptionEntity>>
      getUserInformation() async {
    return (await _getUserId())?.let(
          (String id) => _userProfileInformationDataSource
              .getUserViewerInformation(
                id: id,
              )
              .then(
                (UserProfileInformationDataModel value) => right(
                  UserProfileDescriptionEntity(
                    description: UserProfileDescriptionControl(
                      input: value.description,
                    ),
                  ),
                ),
              ),
        ) ??
        left(const Failure());
  }

  Future<String?> _getUserId() async =>
      (await _authSource.getSignedInUser())?.id;
}
