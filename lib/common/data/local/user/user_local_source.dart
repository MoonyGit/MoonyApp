/// User local source facade
abstract class UserLocalSource {

  /// get user family name if it exist
  Future<String?> getUserFamilyName();
  /// set user family name
  Future<void> setUserFamilyName({required String name});

  /// get user first name if it exist
  Future<String?> getUserFirstName();
  /// set user first name
  Future<void> setUserFirstName({required String name});

  /// get user email address if it exist
  Future<String?> getUserEmailAddress();
  /// set user email address
  Future<void> setUserEmailAddress({required String address});

  /// get user phone number if it exist
  Future<String?> getUserPhoneNumber();
  /// set user phone number
  Future<void> setUserPhoneNumber({required String phone});

  /// get user birth date if it exist
  Future<DateTime?> getUserBirthdate();
  /// set user birth date
  Future<void> setUserBirthdate({required DateTime birthdate});

  /// get user gender if it exist
  Future<int?> getUserGender();
  /// set user gender
  Future<void> setUserGender({required int gender});

  /// get user relation state if it exist
  Future<int?> getUserRelationState();
  /// set user relation state
  Future<void> setUserRelationState({required int relationState});

  /// get user secondary photo list if it exist
  Future<List<String>?> getUserSecondaryPhotoPathList();
  /// set user secondary photo list
  Future<void> setUserSecondaryPhotoPathList({required List<String> paths});

  /// get user profile photo if it exist
  Future<String?> getUserProfilePhotoPath();
  /// set user profile photo
  Future<void> setUserProfilePhotoPath({required String path});
}