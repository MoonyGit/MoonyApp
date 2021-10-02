import 'package:moony_app/common/domain/user/user.dart';
import 'package:moony_app/features/registration/internal/usecase/registration_use_case.dart';


/// Api class to expose public methods from the User feature
class RegistrationApi {
  /// Constructor
  const RegistrationApi(this._registrationUseCase);

  final RegistrationUseCase _registrationUseCase;

  /// Api indicate if user exist at cloud level
  Future<bool> doesUserExist() async {
    return _registrationUseCase
        .getUser()
        .then((User? value) => value != null);
  }
}
