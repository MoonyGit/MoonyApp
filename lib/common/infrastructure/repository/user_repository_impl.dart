import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/domain/repository/user_repositories_facade.dart';
import 'package:moony_app/common/domain/user/user.dart';
import 'package:moony_app/common/infrastructure/remote/photo/photo_remote_source.dart';
import 'package:moony_app/common/infrastructure/remote/user/model/user_data_model.dart';
import 'package:moony_app/common/infrastructure/remote/user/user_remote_source.dart';
import 'package:moony_app/features/authentication/internal/infrastructure/remote/authentication_data_source.dart';

import '../local/user/user_local_source.dart';

/// UserRepository implementation
class UserRepositoryImpl implements IUserRepository {
  /// Constructor
  const UserRepositoryImpl(this._userRemoteSource, this._userLocalSource,
      this._authDataSource, this._photoRemoteSource);

  final UserRemoteSource _userRemoteSource;

  final UserLocalSource _userLocalSource;

  final AuthDataSource _authDataSource;

  final PhotoRemoteSource _photoRemoteSource;

  @override
  Future<Either<ErrorCreatingUserFailure, bool>> createOrUpdate(
      {required User user}) {
    return _userRemoteSource
        .getById(id: user.id)
        .then((UserDataModel? data) async {
      try {
        return data?.let((UserDataModel it) async {
              await _userRemoteSource.update(user: user.toDataSource());
              return right(true);
            }) ??
            right(await _userRemoteSource
                .create(user: user.toDataSource())
                .then((_) => false));
      } on Exception catch (ex, _) {
        return left(ErrorCreatingUserFailure(message: ex.toString()));
      }
    });
  }

  @override
  Future<Either<ErrorCreatingUserFailure, bool>> createUserFromLocal() async {
    try {
      final String userId = (await _authDataSource.getSignedInUser())!.id;
      final String phone = (await _authDataSource.getSignedInUser())!.phone!;
      String? email =
          (await _authDataSource.getSignedInUser())!.email?.let((String it) {
        if (it.isEmpty) {
          return null;
        } else {
          return it;
        }
      });
      email ??= (await _userLocalSource.getUserEmailAddress())!;

      final String? photoUrl =
          (await _authDataSource.getSignedInUser())!.externalPhotoUrl;

      final List<String> secondaryPhotosUrl = await _userLocalSource
          .getUserSecondaryPhotoPathList()
          .then((List<String>? value) => _photoRemoteSource
              .uploadSecondaryPhotos(paths: value!, userId: userId))
          .then((List<String>? value) => value!);
      final String profilePhotoUrl = photoUrl ??
          (await _userLocalSource.getUserProfilePhotoPath().then(
              (String? value) => _photoRemoteSource.uploadProfilePhoto(
                  path: value!, userId: userId)))!;

      final String familyName = (await _userLocalSource.getUserFamilyName())!;
      final String firstName = (await _userLocalSource.getUserFirstName())!;
      final DateTime birthdate = (await _userLocalSource.getUserBirthdate())!;
      final int gender = (await _userLocalSource.getUserGender())!;
      final int relationState =
          (await _userLocalSource.getUserRelationState())!;

      final UserDataModel user = UserDataModel(
          id: userId,
          familyName: familyName,
          firstName: firstName,
          birthdate: birthdate,
          emailAddress: email,
          phoneNumber: phone,
          gender: gender,
          relationState: relationState,
          profilePhoto: profilePhotoUrl,
          secondaryPhotos: secondaryPhotosUrl,
          verified: false);
      await _userRemoteSource.create(user: user);
      return right(true);
    } on Exception catch (ex, _) {
      return left(ErrorCreatingUserFailure(message: ex.toString()));
    }
  }

  @override
  Future<User?> getUser() async {
    final String? id = (await _authDataSource.getSignedInUser())?.id;
    return id?.let((String it) => _userRemoteSource.getById(id: it).then(
        (UserDataModel? data) =>
            data?.let((UserDataModel data) => data.toEntity())));
  }

  @override
  Future<void> saveUserName(
      {required String firstName, required String familyName}) async {
    _userLocalSource.setUserFamilyName(name: familyName);
    _userLocalSource.setUserFirstName(name: firstName);
  }

  @override
  Future<void> saveUserBirthdate({required DateTime birthdate}) async {
    _userLocalSource.setUserBirthdate(birthdate: birthdate);
  }

  @override
  Future<void> saveUserEmailAddress({required String address}) async {
    _userLocalSource.setUserEmailAddress(address: address);
  }

  @override
  Future<void> saveUserPhoneNumber({required String phone}) async {
    _userLocalSource.setUserPhoneNumber(phone: phone);
  }

  @override
  Future<void> saveUserGender({required int gender}) async {
    _userLocalSource.setUserGender(gender: gender);
  }

  @override
  Future<void> saveUserRelationState({required int relationState}) async {
    _userLocalSource.setUserRelationState(relationState: relationState);
  }

  @override
  Future<void> saveUserSecondaryPhotoPathList(
      {required List<String> paths}) async {
    _userLocalSource.setUserSecondaryPhotoPathList(paths: paths);
  }

  @override
  Future<void> saveUserProfilePhotoPath({required String path}) async {
    _userLocalSource.setUserProfilePhotoPath(path: path);
  }
}
