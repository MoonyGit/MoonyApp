import 'package:moony_app/common/base/domain/usecase/usecase.dart';

/// Api class to expose public methods from the User feature
class RegistrationApi {
  /// Constructor
  const RegistrationApi(this._registrationUseCase);

  final AsyncUseCase<bool> _registrationUseCase;

  /// Api indicate if user exist at cloud level
  Future<bool> doesUserExist() async {
    return _registrationUseCase();
  }
}
