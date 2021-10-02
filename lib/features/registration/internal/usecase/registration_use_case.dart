import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:moony_app/common/domain/repository/user_repositories_facade.dart';
import 'package:moony_app/common/domain/user/birthdate.dart';
import 'package:moony_app/common/domain/user/email.dart';
import 'package:moony_app/common/domain/user/gender.dart';
import 'package:moony_app/common/domain/user/name.dart';
import 'package:moony_app/common/domain/user/phone_number.dart';
import 'package:moony_app/common/domain/user/relation_state.dart';
import 'package:moony_app/common/domain/user/user.dart';

/// The registration uses cases
class RegistrationUseCase {
  /// Constructor
  const RegistrationUseCase(this._userRepo);

  final IUserRepository _userRepo;

  /// Set user name.
  /// Return a String error or null if success
  Future<String?> setUserName(
      {required Name firstName, required Name familyName}) async {
    return Future<String?>(() => firstName.value.fold(
        (NameFailure firstNameFailure) => firstNameFailure.message,
        (String firstNameRaw) => familyName.value.fold(
                (NameFailure familyNameFailure) => familyNameFailure.message,
                (String familyNameRaw) {
              _userRepo.saveUserName(
                  firstName: firstNameRaw, familyName: familyNameRaw);
              return null;
            })));
  }

  /// Set user birthdate
  /// Return a String error or null if success
  Future<String?> setUserBirthdate({required Birthdate birthdate}) async {
    return Future<String?>(() => birthdate.value.fold(
            (BirthdateFailure failure) => failure.message, (DateTime raw) {
          _userRepo.saveUserBirthdate(birthdate: raw);
          return null;
        }));
  }

  /// Set user email address
  /// Return a String error or null if success
  Future<String?> setUserEmailAddress({required EmailAddress address}) async {
    return Future<String?>(() => address.value.fold(
            (EmailAddressFailure failure) => failure.message, (String raw) {
          _userRepo.saveUserEmailAddress(address: raw);
          return null;
        }));
  }

  /// Set user phone number
  /// Return a String error or null if success
  Future<String?> setUserPhoneNumber({required PhoneNumber phone}) async {
    return Future<String?>(() => phone.value.fold(
            (PhoneNumberFailure failure) => failure.message, (String raw) {
          _userRepo.saveUserPhoneNumber(phone: raw);
          return null;
        }));
  }

  /// Set user gender
  /// Return a String error or null if success
  Future<String?> setUserGender({required Gender gender}) async {
    return Future<String?>(() {
      _userRepo.saveUserGender(gender: gender.id ?? Gender.defaultId);
      return null;
    });
  }

  /// Set user relation state
  /// Return a String error or null if success
  Future<String?> setUserRelationState(
      {required RelationState relationState}) async {
    return Future<String?>(() {
      _userRepo.saveUserRelationState(
          relationState: relationState.id ?? RelationState.defaultId);
      return null;
    });
  }

  /// Set user secondary photo list
  /// Return a String error or null if success
  Future<String?> setUserSecondaryPhotoPathList(
      {required List<Uri> paths}) async {
    return Future<String?>(() {
      _userRepo.saveUserSecondaryPhotoPathList(
          paths: paths.map((Uri item) => item.toString()).toList());
      return null;
    });
  }

  /// Set user profile path
  /// Return a String error or null if success
  Future<String?> setUserProfilePhotoPath({required Uri path}) async {
    return Future<String?>(() {
      _userRepo.saveUserProfilePhotoPath(path: path.toString());
      return null;
    });
  }

  /// Get current user or null
  Future<User?> getUser() async {
    return _userRepo.getUser();
  }

  /// Create user from local storage fields
  Future<Either<ErrorCreatingUserFailure, bool>> createUserFromLocal() async {
    return _userRepo.createUserFromLocal();
  }
}
