import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

/// The authentication uses cases
class SignInWithFacebookUseCase extends AsyncUseCase<AuthenticationState> {
  /// Constructor
  SignInWithFacebookUseCase(this._authRepo);

  final IFacebookAuthRepository _authRepo;

  @override
  Future<AuthenticationState> call({void input}) =>
      _authRepo.signInWithFacebook();
}