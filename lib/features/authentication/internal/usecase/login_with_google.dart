import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

/// The authentication uses cases
class GoogleAuthUseCase {
  /// Constructor
  GoogleAuthUseCase(this._authRepo);

  final IGoogleAuthRepository _authRepo;

  /// try sign in with google account
  Future<AuthenticationState> signInWithGoogle() {
    return _authRepo.signInWithGoogle();
  }
}