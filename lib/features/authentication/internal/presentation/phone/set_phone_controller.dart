import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/application/app_router.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';
import 'package:moony_app/features/authentication/internal/usecase/login_with_phone.dart';

/// Class to define SetPhonePage dependencies by dependency injection
class SetPhoneBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetPhoneController(Get.find()));
  }
}

/// The viewModel of SetPhonePage
class SetPhoneController extends GetxController {
  /// Constructor
  SetPhoneController(this._authUseCase);

  /// In case of automatic otp retrieved, provide this otp to next page
  static const String automaticSmsOtp = "automaticSmsOtp";

  final PhoneAuthUseCase _authUseCase;
  PhoneNumber? _lastPhoneNumber;

  /// The current phone number
  PhoneNumber currentPhoneNumber =
      PhoneNumber(isoCode: Get.deviceLocale?.countryCode);

  /// used to notify an async validation with message
  RxnString phoneNumberValidatedMessage = RxnString();

  /// try login with phone number
  String? loginWithPhoneNumber(PhoneNumber number) {
    if (_lastPhoneNumber == number) {
      return phoneNumberValidatedMessage.value;
    } else {
      _lastPhoneNumber = number;
      _authUseCase
          .signInWithPhoneNumber(phoneNumber: number.phoneNumber)
          .then((AuthenticationState state) {
        state.status.maybeWhen(
          badCredentials: (String? message) => message?.let((String it) =>
              phoneNumberValidatedMessage.value =
                  AppStrings.translate(message: it)),
          otpSent: () => Get.toNamed(Navigation.loginPhoneOtp),
          autoLogin: (String? smsOtp) =>
              smsOtp?.let((String it) => Get.toNamed(Navigation.loginPhoneOtp,
                  parameters: <String, String>{automaticSmsOtp: it})) ??
              Get.toNamed(Navigation.loginPhoneOtp),
          serverError: (String? message) => message?.let((String it) =>
              phoneNumberValidatedMessage.value =
                  AppStrings.translate(message: message)),
          unknown: (String? message) => message?.let((String it) =>
              phoneNumberValidatedMessage.value =
                  AppStrings.translate(message: message)),
          orElse: () => Logger.d("state received $state"),
        );
      });
      return phoneNumberValidatedMessage.value;
    }
  }

  /// callback phone number edited
  Future<void> onPhoneNumberChanged(PhoneNumber value) async =>
      currentPhoneNumber = value;

  /// callback of form validator
  String? validatePhoneNumber(String? value) {
    return loginWithPhoneNumber(currentPhoneNumber);
  }
}
