import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/authentication/domain/repository/auth_repositories_facade.dart';

/// The authentication uses cases
class IsUserAuthenticatedUseCase extends AsyncUseCase<bool> {
  /// Constructor
  IsUserAuthenticatedUseCase(this._authRepo);
  final IAuthStateRepository _authRepo;

  @override
  Future<bool> call({void input}) => _authRepo.isAuthenticated();
}