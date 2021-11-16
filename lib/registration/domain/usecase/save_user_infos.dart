import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/email.dart';
import 'package:moony_app/common/domain/user/model/gender.dart';
import 'package:moony_app/common/domain/user/model/name.dart';
import 'package:moony_app/common/domain/user/model/phone_number.dart';
import 'package:moony_app/common/domain/user/model/relation_state.dart';
import 'package:moony_app/common/domain/user/repository/user_repositories_facade.dart';

/// Parameter data class for SaveUserNameUseCase
class SaveUserNameUseCaseParam {
  /// Constructor
  SaveUserNameUseCaseParam({required this.family, required this.first});

  /// Family name
  final Name family;

  /// First name
  final Name first;
}

/// Save user family and first names
class SaveUserNameUseCase
    extends AsyncParamUseCase<SaveUserNameUseCaseParam, void> {
  /// Constructor
  SaveUserNameUseCase(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<void> call({required SaveUserNameUseCaseParam input}) =>
      _userRepo.saveUserName(firstName: input.first, familyName: input.family);
}

/// Save user birthdate
class SaveUserBirthdateUseCase extends AsyncParamUseCase<Birthdate, void> {
  /// Constructor
  SaveUserBirthdateUseCase(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<void> call({required Birthdate input}) =>
      _userRepo.saveUserBirthdate(birthdate: input);
}

/// Save user email address
class SaveUserEmailUseCase extends AsyncParamUseCase<EmailAddress, void> {
  /// Constructor
  SaveUserEmailUseCase(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<void> call({required EmailAddress input}) =>
      _userRepo.saveUserEmailAddress(address: input);
}

/// Save user phone number
class SaveUserPhoneUseCase extends AsyncParamUseCase<PhoneNumber, void> {
  /// Constructor
  SaveUserPhoneUseCase(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<void> call({required PhoneNumber input}) =>
      _userRepo.saveUserPhoneNumber(phone: input);
}

/// Save user gender
class SaveUserGenderUseCase extends AsyncParamUseCase<Gender, void> {
  /// Constructor
  SaveUserGenderUseCase(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<void> call({required Gender input}) =>
      _userRepo.saveUserGender(gender: input);
}

/// Save user relation state
class SaveUserRelationStateUseCase
    extends AsyncParamUseCase<RelationState, void> {
  /// Constructor
  SaveUserRelationStateUseCase(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<void> call({required RelationState input}) =>
      _userRepo.saveUserRelationState(relationState: input);
}

/// Save user secondary photo list
class SaveUserSecondaryPhotoListStateUseCase
    extends AsyncParamUseCase<List<Uri>, void> {
  /// Constructor
  SaveUserSecondaryPhotoListStateUseCase(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<void> call({required List<Uri> input}) =>
      _userRepo.saveUserSecondaryPhotoPathList(paths: input);
}

/// Save user profile photo
class SaveUserProfilePhotoStateUseCase extends AsyncParamUseCase<Uri, void> {
  /// Constructor
  SaveUserProfilePhotoStateUseCase(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<void> call({required Uri input}) =>
      _userRepo.saveUserProfilePhotoPath(path: input);
}
