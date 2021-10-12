import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

/// The authentication uses cases
class SignOutUseCase extends AsyncUseCase<AuthenticationState> {
  /// Constructor
  SignOutUseCase(this._authRepo);

  final ISignOutRepository _authRepo;

  @override
  Future<AuthenticationState> call({void input}) =>
      _authRepo.signOut();
}