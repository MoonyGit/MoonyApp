import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

/// The sign out use case
class SignOutUseCase {
  /// Constructor
  SignOutUseCase(this._authRepo);

  final ISignOutRepository _authRepo;

  /// sign out the current user
  Future<AuthenticationState> signOut() {
    return _authRepo.signOut();
  }
}
