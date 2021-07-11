
import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';

import 'authentication_data_source.dart';

/// Authentication repository
class AuthenticationRepositoryImpl
    implements
        IAuthStateRepository {
  /// Constructor
  AuthenticationRepositoryImpl(this._authDataSource);

  final AuthDataSource _authDataSource;

  @override
  Future<bool> isAuthenticated() {
    return _authDataSource
        .getSignedInUser()
        .then((UserDataSource? value) => value != null);
  }

  @override
  Stream<bool> isAuthenticatedStream() {
    return _authDataSource
        .getUserAuthStateChanges()
        .map((UserDataSource? event) => event != null);
  }
}
