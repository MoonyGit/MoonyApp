import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

/// The authentication uses cases
class AppleAuthUseCase {
  /// Constructor
  AppleAuthUseCase(this._authRepo);

  final IAppleAuthRepository _authRepo;

  /// try sign in with apple account
  Future<AuthenticationState> signInWithApple() {
    return _authRepo.signInWithApple();
  }
}
