import 'package:moony_app/common/data/services/local_storage/local_storage.dart';
import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/relation_state_data_model.dart';

import 'user_local_source.dart';

/// UserLocalSource implementation
class UserLocalSourceImpl extends UserLocalSource {
  /// constructor
  UserLocalSourceImpl(this._storage);

  /// User creation storage container
  static const String userCreation = "user_creation";
  static const String _separator = "_";

  static const String _birthdateKey = "birthdate";
  static const String _familyNameKey = "familyName";
  static const String _firstNameKey = "firstName";
  static const String _emailKey = "email";
  static const String _phoneNumberKey = "phoneNumber";
  static const String _genderKey = "gender";
  static const String _relationStateKey = "relationState";
  static const String _photoPathListKey = "photoPathList";
  static const String _photoProfile = "photoProfile";

  final ILocalStorage _storage;

  @override
  Future<DateTime?> getUserBirthdate() async => Future<DateTime?>(
      () => _storage.get<DateTime>(userCreation + _separator + _birthdateKey));

  @override
  Future<void> setUserBirthdate({required DateTime birthdate}) async {
    _storage.add(userCreation + _separator + _birthdateKey, birthdate);
  }

  @override
  Future<void> setUserEmailAddress({required String address}) async {
    _storage.add(userCreation + _separator + _emailKey, address);
  }

  @override
  Future<String?> getUserEmailAddress() async =>
      _storage.get<String>(userCreation + _separator + _emailKey);

  @override
  Future<void> setUserFamilyName({required String name}) async {
    _storage.add(userCreation + _separator + _familyNameKey, name);
  }

  @override
  Future<String?> getUserFamilyName() async =>
      _storage.get<String>(userCreation + _separator + _familyNameKey);

  @override
  Future<void> setUserFirstName({required String name}) async {
    _storage.add(userCreation + _separator + _firstNameKey, name);
  }

  @override
  Future<String?> getUserFirstName() async =>
      _storage.get<String>(userCreation + _separator + _firstNameKey);

  @override
  Future<void> setUserGender({required GenderDataModel gender}) async {
    _storage.add(userCreation + _separator + _genderKey, gender);
  }

  @override
  Future<GenderDataModel?> getUserGender() async =>
      _storage.get<GenderDataModel>(userCreation + _separator + _genderKey);

  @override
  Future<void> setUserSecondaryPhotoPathList(
      {required List<String> paths}) async {
    _storage.add(userCreation + _separator + _photoPathListKey, paths);
  }

  @override
  Future<List<String>?> getUserSecondaryPhotoPathList() async =>
      _storage.get<List<String>>(userCreation + _separator + _photoPathListKey);

  @override
  Future<String?> getUserProfilePhotoPath() async =>
      _storage.get<String>(userCreation + _separator + _photoProfile);

  @override
  Future<void> setUserProfilePhotoPath({required String path}) async {
    _storage.add(userCreation + _separator + _photoProfile, path);
  }

  @override
  Future<void> setUserRelationState({required RelationStateDataModel relationState}) async {
    _storage.add(userCreation + _separator + _relationStateKey, relationState);
  }

  @override
  Future<RelationStateDataModel?> getUserRelationState() async =>
      _storage.get<RelationStateDataModel>(
          userCreation + _separator + _relationStateKey);

  @override
  Future<String?> getUserPhoneNumber() async =>
      _storage.get<String>(userCreation + _separator + _phoneNumberKey);

  @override
  Future<void> setUserPhoneNumber({required String phone}) async {
    _storage.add(userCreation + _separator + _phoneNumberKey, phone);
  }
}
