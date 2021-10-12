import 'package:dartz/dartz.dart';
import 'package:moony_app/common/domain/user/birthdate.dart';
import 'package:moony_app/common/domain/user/email.dart';
import 'package:moony_app/common/domain/user/gender.dart';
import 'package:moony_app/common/domain/user/name.dart';
import 'package:moony_app/common/domain/user/phone_number.dart';
import 'package:moony_app/common/domain/user/relation_state.dart';
import 'package:moony_app/common/domain/user/user.dart';

/// User repository
abstract class IUserRepository {
  /// Get user if it exists
  Future<User?> getUser();

  /// Create or update user if it exists
  Future<Either<ErrorCreatingUserFailure, bool>> createOrUpdate(
      {required User user});

  /// Create or update user from user fields load in local storage
  Future<ErrorCreatingUserFailure?> registerUser();

  /// Save user first and family name
  Future<void> saveUserName(
      {required Name firstName, required Name familyName});

  /// Save user birthdate
  Future<void> saveUserBirthdate({required Birthdate birthdate});

  /// Save user email
  Future<void> saveUserEmailAddress({required EmailAddress address});

  /// Save user phone
  Future<void> saveUserPhoneNumber({required PhoneNumber phone});

  /// Save user gender
  Future<void> saveUserGender({required Gender gender});

  /// Save user relation state
  Future<void> saveUserRelationState({required RelationState relationState});

  /// Save user secondary photo list
  Future<void> saveUserSecondaryPhotoPathList({required List<Uri> paths});

  /// Save user profile photo
  Future<void> saveUserProfilePhotoPath({required Uri path});
}
