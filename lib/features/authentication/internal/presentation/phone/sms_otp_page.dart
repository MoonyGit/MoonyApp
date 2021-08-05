import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/common/widgets/common.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'sms_otp_controller.dart';

/// The phone otp page
class SmsOtpPage extends GetView<SmsOtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
            key: controller.formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              child: Wrap(runSpacing: 20.0, children: [
                const Center(
                  child: Icon(
                    Icons.sms_rounded,
                    size: 50,
                  ),
                ),
                Center(
                    child: makeTextWithGradient(
                        text: AppStrings.translate(
                            message: AppStrings.smsOtpHint),
                        textAlign: TextAlign.center,
                        textStyle: Theme.of(context).textTheme.moonyMessage,
                        alignmentBegin: Alignment.centerLeft,
                        alignmentEnd: Alignment.centerRight,
                        colorBegin: AppTheme.secondary,
                        colorEnd: AppTheme.primary,
                        borderRadius: 30)),
                Center(
                  child: ConstrainedBox(
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
                ),
                Center(
                    child: Image.asset(
                  AppAsset.moonyShadow,
                  width: 200,
                  height: 200,
                )),
                Center(
                  child: OutlinedButton(
                    onPressed: controller.onNextPressed,
                    child: makeWidgetWithConstraints(
                        child: Text(AppStrings.translate(message: AppStrings.goToNext),
                          textAlign: TextAlign.center,
                        )),
                  ),
                )
              ]),
            )));
  }
}
