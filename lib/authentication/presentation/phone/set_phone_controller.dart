import 'dart:async';

import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart' as ui_api;
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/user/model/phone_number.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/authentication/domain/model/authentication_state.dart';
import 'package:moony_app/authentication/data/repository/authentication_repository_impl.dart';
import 'package:moony_app/authentication/domain/usecase/login_with_phone.dart';
import 'package:moony_app/authentication/resources/router.dart';

/// Class to define SetPhonePage dependencies by dependency injection
class SetPhoneBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInWithPhoneUseCase>(
            () => SignInWithPhoneUseCase(Get.find<AuthenticationRepositoryImpl>()),
        fenix: true);

    Get.lazyPut<GetPhoneAuthStateUseCase>(
            () => GetPhoneAuthStateUseCase(Get.find<AuthenticationRepositoryImpl>()),
        fenix: true);

    Get.lazyPut(() => SetPhoneController(
        Get.find<SignInWithPhoneUseCase>(), Get.find<GetPhoneAuthStateUseCase>()));
  }
}

/// The viewModel of SetPhonePage
class SetPhoneController extends GetxController {
  /// Constructor
  SetPhoneController(this._signInWithPhone, this._getPhoneAuthState) {
    _phoneAuthStateSubscription =
        _getPhoneAuthState().listen((AuthenticationState state) {
      Logger.d("SetPhoneController state received $state");
      state.status.maybeWhen(
        badCredentials: (String? message) => message?.let((String it) =>
            phoneNumberValidatedMessage.value =
                AppStrings.translate(message: it)),
        otpSent: () => Get.toNamed(Router.loginPhoneOtp),
        serverError: (String? message) => message?.let((String it) =>
            phoneNumberValidatedMessage.value =
                AppStrings.translate(message: message)),
        unknown: (String? message) => message?.let((String it) =>
            phoneNumberValidatedMessage.value =
                AppStrings.translate(message: message)),
        orElse: () =>
            Logger.d("SetPhoneController undefined state received $state"),
      );
    });
  }

  final ReactiveUseCase<AuthenticationState> _getPhoneAuthState;
  final AsyncParamUseCase<PhoneNumber, void> _signInWithPhone;
  late StreamSubscription<AuthenticationState> _phoneAuthStateSubscription;

  /// The current phone number
  ui_api.PhoneNumber? _lastPhoneNumber;
  ui_api.PhoneNumber currentPhoneNumber =
      ui_api.PhoneNumber(isoCode: Get.deviceLocale?.countryCode);

  /// used to notify an async validation with message
  RxnString phoneNumberValidatedMessage = RxnString();

  /// try login with phone number
  String? loginWithPhoneNumber(ui_api.PhoneNumber number) {
    if (_lastPhoneNumber == number) {
      return phoneNumberValidatedMessage.value;
    } else {
      _lastPhoneNumber = number;
      PhoneNumber(input: number.phoneNumber).value.fold(
          (PhoneNumberFailure failure) => phoneNumberValidatedMessage.value =
              AppStrings.translate(message: failure.message ?? genericAuthFailure),
          (String r) =>
              _signInWithPhone(input: PhoneNumber(input: number.phoneNumber)));
    }
    return phoneNumberValidatedMessage.value;
  }

  /// callback phone number edited
  Future<void> onPhoneNumberChanged(ui_api.PhoneNumber value) async =>
      currentPhoneNumber = value;

  /// callback of form validator
  String? validatePhoneNumber(String? value) {
    return loginWithPhoneNumber(currentPhoneNumber);
  }

  @override
  void onClose() {
    _phoneAuthStateSubscription.cancel();
    super.onClose();
  }
}
