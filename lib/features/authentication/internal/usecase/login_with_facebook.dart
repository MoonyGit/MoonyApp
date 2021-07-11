import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

/// The authentication uses cases
class FacebookAuthUseCase {
  /// Constructor
  FacebookAuthUseCase(this._authRepo);

  final IFacebookAuthRepository _authRepo;

  /// try sign in with facebook account
  Future<AuthenticationState> signInWithFacebook() {
    return _authRepo.signInWithFacebook();
  }
}