import 'package:dartz/dartz.dart';
import 'package:moony_app/common/domain/user/user.dart';

/// User repository
abstract class IUserRepository {
  /// Get user if it exists
  Future<User?> getUser();

  /// Create or update user if it exists
  Future<Either<ErrorCreatingUserFailure, bool>> createOrUpdate(
      {required User user});

  /// Create or update user from user fields load in local storage
  Future<Either<ErrorCreatingUserFailure, bool>> createUserFromLocal();

  /// Save user first and family name
  Future<void> saveUserName(
      {required String firstName, required String familyName});

  /// Save user birthdate
  Future<void> saveUserBirthdate({required DateTime birthdate});

  /// Save user email
  Future<void> saveUserEmailAddress({required String address});

  /// Save user phone
  Future<void> saveUserPhoneNumber({required String phone});

  /// Save user gender
  Future<void> saveUserGender({required int gender});

  /// Save user relation state
  Future<void> saveUserRelationState({required int relationState});

  /// Save user secondary photo list
  Future<void> saveUserSecondaryPhotoPathList({required List<String> paths});

  /// Save user profile photo
  Future<void> saveUserProfilePhotoPath({required String path});
}
