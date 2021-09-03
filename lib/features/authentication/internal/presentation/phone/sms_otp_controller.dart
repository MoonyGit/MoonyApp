import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';
import 'package:moony_app/features/authentication/internal/usecase/login_with_phone.dart';
import 'package:moony_app/features/authentication/resources/strings.dart';

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
  SmsOtpController(this._authUseCase) {
    _phoneAuthenticationStateSubscription = _authUseCase
        .getPhoneNumberAuthenticationState()
        .listen((AuthenticationState state) {
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
  final TextEditingController otpTextController = TextEditingController();

  /// Handle formKey at viewModel level to workaround sync form validation
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final PhoneAuthUseCase _authUseCase;
  String? _lastOtp;

  /// used to notify an async validation with message
  String? phoneOtpValidatedMessage;

  /// verify the phone otp and go to next page
  String? verifySmsOtp(String? otp) {
    if (otp == _lastOtp) {
      return phoneOtpValidatedMessage;
    } else {
      _lastOtp = otp;
      _authUseCase
          .verifyPhoneOtp(smsCode: otp)
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
              // re-validate with new message
              formKey.currentState?.validate();
            },
            orElse: () => Logger.d("SmsOtpController verifySmsOtp "
                "undefined state received $state"));
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
