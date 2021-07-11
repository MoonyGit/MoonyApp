import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';
import 'package:moony_app/features/authentication/internal/usecase/login_with_phone.dart';

/// Class to define SmsOtpPage dependencies by dependency injection
class SmsOtpBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SmsOtpController(Get.find()));
  }
}

/// The viewModel of SmsOtpPage
class SmsOtpController extends GetxController {
  /// Constructor
  SmsOtpController(this._authUseCase);

  final PhoneAuthUseCase _authUseCase;
  String? _lastOtp;

  /// used to notify an async validation with message
  RxnString phoneOtpValidatedMessage = RxnString();

  /// verify the phone otp and go to next page
  String? verifySmsOtp(String? otp) {
    if (otp == _lastOtp) {
      return phoneOtpValidatedMessage.value;
    } else {
      _lastOtp = otp;
      _authUseCase
          .verifyPhoneOtp(smsCode: otp)
          .then((AuthenticationState state) {
        state.status.maybeWhen(
            badOtp: (String? message) => message?.let((String it) =>
                phoneOtpValidatedMessage.value =
                    AppStrings.translate(message: it)),
            serverError: (String? message) => phoneOtpValidatedMessage.value =
                AppStrings.translate(
                    message: message ?? AppStrings.genericAuthFailure),
            unknown: (String? message) => phoneOtpValidatedMessage.value =
                AppStrings.translate(
                    message: message ?? AppStrings.genericAuthFailure),
            signedIn: () => phoneOtpValidatedMessage.value = null,
            orElse: () => Logger.d("state received $state"));
      });
      return phoneOtpValidatedMessage.value
          ?.let((String it) => AppStrings.translate(message: it));
    }
  }
}
