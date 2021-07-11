import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';

/// The authentication uses cases
class GetAuthStateUseCase {
  /// Constructor
  GetAuthStateUseCase(this._authRepo);

  final IAuthStateRepository _authRepo;

  /// provide if user is authenticated by future
  Future<bool> checkIsAuthenticated() {
    return _authRepo.isAuthenticated();
  }

  /// provide user authenticated state changes by stream
  Stream<bool> listenAuthenticationStateChanged() {
    return _authRepo
        .isAuthenticatedStream();
  }
}