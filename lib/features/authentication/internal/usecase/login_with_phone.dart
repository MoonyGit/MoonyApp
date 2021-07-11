import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';
import 'package:moony_app/features/authentication/internal/domain/phone_number.dart';

/// The phone authentication use case
class PhoneAuthUseCase {
  /// Constructor
  PhoneAuthUseCase(this._authRepo);

  final IPhoneAuthRepository _authRepo;

  /// verify phone otp sent to the user
  Future<AuthenticationState> verifyPhoneOtp({required String? smsCode}) async {
    return SmsOtp(input: smsCode!).value.fold(
        (PhoneNumberFailure failure) => Future<AuthenticationState>(() =>
            AuthenticationFailure(status: BadOtp(message: failure.message))),
        (String otp) => _authRepo.verifyPhoneOtp(code: smsCode));
  }

  /// try sign in with phone number
  /// (generate a phone otp sent to the user by sms)
  Future<AuthenticationState> signInWithPhoneNumber(
      {required String? phoneNumber}) {
    return PhoneNumber(input: phoneNumber).value.fold(
        (PhoneNumberFailure failure) => Future<AuthenticationState>(() =>
            AuthenticationFailure(
                status: BadCredentials(message: failure.message))),
        (String phone) => _authRepo.signInWithPhoneNumber(phoneNumber: phone));
  }
}
