import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/authentication/domain/repository/auth_repositories_facade.dart';
import 'package:moony_app/authentication/domain/model/authentication_state.dart';

/// The authentication uses cases
class SignInWithAppleUseCase extends AsyncUseCase<AuthenticationState> {
  /// Constructor
  SignInWithAppleUseCase(this._authRepo);

  final IAppleAuthRepository _authRepo;

  @override
  Future<AuthenticationState> call({void input}) =>
      _authRepo.signInWithApple();
}
