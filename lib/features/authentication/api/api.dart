import 'package:moony_app/features/authentication/internal/usecase/get_auth_state.dart';

/// Api class to expose public methods from the Authentication feature
class AuthenticationApi {
  /// Constructor
  const AuthenticationApi(this._authUseCase);

  final GetAuthStateUseCase _authUseCase;

  /// return if user is logged on the application
  Future<bool> isUserAuthenticated() {
    return _authUseCase.checkIsAuthenticated();
  }

  /// return if user is logged on the application
  Stream<bool> isUserAuthenticatedStream() {
    return _authUseCase.listenAuthenticationStateChanged();
  }
}
