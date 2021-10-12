import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/user/phone_number.dart';
import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

/// The authentication uses cases
class SignInWithPhoneUseCase extends AsyncParamUseCase<PhoneNumber, void> {
  /// Constructor
  SignInWithPhoneUseCase(this._authRepo);

  final IPhoneAuthRepository _authRepo;

  @override
  Future<void> call({required PhoneNumber input}) =>
      _authRepo.signInWithPhoneNumber(phoneNumber: input);
}

/// The authentication uses cases
class VerifyPhoneOtpUseCase
    extends AsyncParamUseCase<SmsOtp, AuthenticationState> {
  /// Constructor
  VerifyPhoneOtpUseCase(this._authRepo);

  final IPhoneAuthRepository _authRepo;

  @override
  Future<AuthenticationState> call({required SmsOtp input}) =>
      _authRepo.verifyPhoneOtp(code: input);
}

/// The authentication uses cases
class GetPhoneAuthStateUseCase extends ReactiveUseCase<AuthenticationState> {
  /// Constructor
  GetPhoneAuthStateUseCase(this._authRepo);

  final IPhoneAuthRepository _authRepo;

  @override
  Stream<AuthenticationState> call({void input}) =>
      _authRepo.getPhoneNumberAuthenticationState();
}
