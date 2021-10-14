import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/user/model/user.dart';
import 'package:moony_app/common/domain/user/repository/user_repositories_facade.dart';

/// Give user registration state
class IsUserRegistered extends AsyncUseCase<bool> {
  /// Constructor
  IsUserRegistered(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<bool> call({void input}) =>
      _userRepo.getUser().then((User? value) => value != null);
}

/// Try to register an user with current info
class RegisterUser extends AsyncUseCase<ErrorCreatingUserFailure?> {
  /// Constructor
  RegisterUser(this._userRepo);

  final IUserRepository _userRepo;

  @override
  Future<ErrorCreatingUserFailure?> call({void input}) =>
      _userRepo.registerUser();
}
