import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/common/data/activity/remote/activity_type.dart';
import 'package:moony_app/common/data/user/local/user_local_source.dart';
import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/photo_remote_source.dart';
import 'package:moony_app/common/data/user/remote/relation_state_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/email.dart';
import 'package:moony_app/common/domain/user/model/gender.dart';
import 'package:moony_app/common/domain/user/model/name.dart';
import 'package:moony_app/common/domain/user/model/phone_number.dart';
import 'package:moony_app/common/domain/user/model/relation_state.dart';
import 'package:moony_app/common/domain/user/model/user.dart';
import 'package:moony_app/common/domain/user/repository/user_repositories_facade.dart';

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
  Future<ErrorCreatingUserFailure?> registerUser() async {
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
      final GenderDataModel gender = (await _userLocalSource.getUserGender())!;
      final RelationStateDataModel relationState =
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
          creationDate: DateTime.now(),
          lastUpdateDate: DateTime.now(),
          hobbies: <ActivityTypeData>[],
          verified: false);
      await _userRemoteSource.create(user: user);
      return null;
    } on Exception catch (ex, _) {
      return ErrorCreatingUserFailure(message: ex.toString());
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
      {required Name firstName, required Name familyName}) async {
    _userLocalSource.setUserFamilyName(name: familyName.getOrCrash());
    _userLocalSource.setUserFirstName(name: firstName.getOrCrash());
  }

  @override
  Future<void> saveUserBirthdate({required Birthdate birthdate}) async {
    _userLocalSource.setUserBirthdate(birthdate: birthdate.getOrCrash());
  }

  @override
  Future<void> saveUserEmailAddress({required EmailAddress address}) async {
    _userLocalSource.setUserEmailAddress(address: address.getOrCrash());
  }

  @override
  Future<void> saveUserPhoneNumber({required PhoneNumber phone}) async {
    _userLocalSource.setUserPhoneNumber(phone: phone.getOrCrash());
  }

  @override
  Future<void> saveUserGender({required Gender gender}) async {
    _userLocalSource.setUserGender(gender: gender.toData());
  }

  @override
  Future<void> saveUserRelationState(
      {required RelationState relationState}) async {
    _userLocalSource.setUserRelationState(
        relationState: relationState.toData());
  }

  @override
  Future<void> saveUserSecondaryPhotoPathList(
      {required List<Uri> paths}) async {
    _userLocalSource.setUserSecondaryPhotoPathList(
        paths: paths.map((Uri uri) => uri.toString()).toList());
  }

  @override
  Future<void> saveUserProfilePhotoPath({required Uri path}) async {
    _userLocalSource.setUserProfilePhotoPath(path: path.toString());
  }
}
