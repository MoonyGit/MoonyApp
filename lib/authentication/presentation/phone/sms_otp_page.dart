import 'package:flutter/material.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/authentication/resources/strings.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'sms_otp_controller.dart';

/// The phone otp page
class SmsOtpPage extends SetInfoModalBasePage<SmsOtpController> {
  @override
  GlobalKey<FormState>? getFormKey() => controller.formKey;

  @override
  void Function() getNextButtonCallback() => controller.onNextPressed;

  @override
  String getNextButtonText() => AppStrings.goToNext;

  @override
  IconData getPageIconHint() => Icons.sms_rounded;

  @override
  String getPageTextHint() => smsOtpHint;

  @override
  List<Widget> getWidgets(BuildContext context) => [
        ConstrainedBox(
            constraints: const BoxConstraints(
                maxHeight: 200, maxWidth: 300, minWidth: 280),
            child: PinCodeTextField(
              length: 6,
              controller: controller.otpTextController,
              validator: controller.verifySmsOtp,
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
              autovalidateMode: AutovalidateMode.disabled,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  selectedColor: AppTheme.primary,
                  selectedFillColor: AppTheme.primary,
                  activeColor: AppTheme.secondary,
                  activeFillColor: AppTheme.secondary,
                  inactiveColor: AppTheme.tertiary,
                  inactiveFillColor: AppTheme.tertiary),
              animationDuration: const Duration(milliseconds: 300),
              onCompleted: (String value) {
                Logger.d("Completed $value");
              },
              onChanged: (String value) {
                Logger.d("changed $value");
              },
              beforeTextPaste: (String? text) {
                Logger.d("Allowing to paste $text");
                return true;
              },
              appContext: context,
            )),
      ];
}
