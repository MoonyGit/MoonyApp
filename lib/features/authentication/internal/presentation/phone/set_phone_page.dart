import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/common/widgets/common.dart';

import 'set_phone_controller.dart';

/// SetPhone page
class SetPhonePage extends GetView<SetPhoneController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
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
                            message: AppStrings.setPhoneNumberHint),
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
                        child: Obx(() {
                          return InternationalPhoneNumberInput(
                            initialValue: controller.currentPhoneNumber,
                            validator: controller.validatePhoneNumber,
                            onSaved: controller.loginWithPhoneNumber,
                            inputDecoration: InputDecoration(
                                errorText: controller
                                    .phoneNumberValidatedMessage.value),
                            onInputChanged: controller.onPhoneNumberChanged,
                            selectorConfig: const SelectorConfig(
                                selectorType: PhoneInputSelectorType.DIALOG,
                                useEmoji: true),
                          );
                        }))),
                Center(
                    child: Image.asset(
                  AppAsset.moonyShadow,
                  width: 200,
                  height: 200,
                )),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      _formKey.currentState!.validate();
                    },
                    child: makeTextWithConstraints(
                      text: AppStrings.translate(message: AppStrings.goToNext),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ])),
        ));
  }
}
