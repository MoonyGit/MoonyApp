import 'dart:async';

import 'package:flutter/material.dart' hide Router;
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/user/model/phone_number.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/activity/resources/router.dart'
    as activity_router;
import 'package:moony_app/authentication/domain/model/authentication_state.dart';
import 'package:moony_app/authentication/data/repository/authentication_repository_impl.dart';
import 'package:moony_app/authentication/domain/usecase/login_with_phone.dart';
import 'package:moony_app/authentication/resources/strings.dart';
import 'package:moony_app/registration/domain/usecase/registration_use_case.dart';
import 'package:moony_app/registration/resources/router.dart'
    as registration_router;

/// Class to define SmsOtpPage dependencies by dependency injection
class SmsOtpBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyPhoneOtpUseCase>(
            () => VerifyPhoneOtpUseCase(Get.find<AuthenticationRepositoryImpl>()),
        fenix: true);

    Get.lazyPut<GetPhoneAuthStateUseCase>(
            () => GetPhoneAuthStateUseCase(Get.find<AuthenticationRepositoryImpl>()),
        fenix: true);

    Get.lazyPut<IsUserRegistered>(() => IsUserRegistered(Get.find()),
        fenix: true);

    Get.lazyPut(() => SmsOtpController(Get.find<VerifyPhoneOtpUseCase>(),
        Get.find<GetPhoneAuthStateUseCase>(), Get.find<IsUserRegistered>()));
  }
}

/// The viewModel of SmsOtpPage
class SmsOtpController extends GetxController {
  /// Constructor
  SmsOtpController(
      this._verifyPhoneOtp, this._getPhoneAuthState, this._isUserRegistered) {
    otpTextController = TextEditingController();
    _phoneAuthenticationStateSubscription =
        _getPhoneAuthState().listen((AuthenticationState state) {
      Logger.d("SmsOtpController state received $state");
      state.status.maybeWhen(
          autoLogin: (String? smsOtp) {
            if (smsOtp != null) {
              otpTextController.text = smsOtp;
            }
          },
          orElse: () =>
              Logger.d("SmsOtpController undefined state received $state"));
    });
  }

  late StreamSubscription<AuthenticationState>
      _phoneAuthenticationStateSubscription;

  /// Handle text controller at viewModel level to dispose it in onClose
  late final TextEditingController otpTextController;

  /// Handle formKey at viewModel level to workaround sync form validation
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final AsyncParamUseCase<SmsOtp, AuthenticationState> _verifyPhoneOtp;
  final ReactiveUseCase<AuthenticationState> _getPhoneAuthState;
  final AsyncUseCase<bool> _isUserRegistered;

  String? _lastOtp;

  /// used to notify an async validation with message
  String? phoneOtpValidatedMessage;

  /// verify the phone otp and go to next page
  String? verifySmsOtp(String? otp) {
    if (otp == _lastOtp) {
      return phoneOtpValidatedMessage;
    } else {
      _lastOtp = otp;
      SmsOtp(input: otp!).value.fold(
          (SmsOtpFailure failure) => phoneOtpValidatedMessage =
              AppStrings.translate(message: failure.message), (String value) {
        _verifyPhoneOtp(input: SmsOtp(input: otp))
            .then((AuthenticationState state) {
          Logger.d("SmsOtpController verifySmsOtp state received $state");
          state.status.maybeWhen(
              badOtp: (String? message) {
                phoneOtpValidatedMessage = AppStrings.translate(
                    message: message ?? genericAuthFailure);
                // re-validate with new message
                formKey.currentState?.validate();
              },
              serverError: (String? message) {
                phoneOtpValidatedMessage = AppStrings.translate(
                    message: message ?? genericAuthFailure);
                // re-validate with new message
                formKey.currentState?.validate();
              },
              unknown: (String? message) {
                phoneOtpValidatedMessage = AppStrings.translate(
                    message: message ?? genericAuthFailure);
                // re-validate with new message
                formKey.currentState?.validate();
              },
              signedIn: () {
                phoneOtpValidatedMessage = null;
                _isUserRegistered().then((bool doesUserExist) =>
                    doesUserExist
                        ? Get.offNamed(activity_router.Router.home)
                        : Get.offNamed(
                            registration_router.Router.setBackupEmail));
              },
              orElse: () => Logger.d("SmsOtpController verifySmsOtp "
                  "undefined state received $state"));
        });
      });
      return phoneOtpValidatedMessage
          ?.let((String it) => AppStrings.translate(message: it));
    }
  }

  /// On next button pressed
  void onNextPressed() {
    formKey.currentState?.validate();
  }

  @override
  void onClose() {
    _phoneAuthenticationStateSubscription.cancel();
    otpTextController.dispose();
    super.onClose();
  }
}
