import 'package:moony_app/common/base/domain/usecase/usecase.dart';

/// Api class to expose public methods from the Authentication feature
class AuthenticationApi {
  /// Constructor
  const AuthenticationApi(this._authUseCase);

  final AsyncUseCase<bool> _authUseCase;

  /// return if user is logged on the application
  Future<bool> isUserAuthenticated() {
    return _authUseCase();
  }
}
