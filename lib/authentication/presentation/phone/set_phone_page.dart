import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/authentication/resources/strings.dart';

import 'set_phone_controller.dart';

/// SetPhone page
class SetPhonePage extends SetInfoModalBasePage<SetPhoneController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  GlobalKey<FormState>? getFormKey() => _formKey;

  @override
  void Function() getNextButtonCallback() =>
      () => _formKey.currentState!.validate();

  @override
  String getNextButtonText() => AppStrings.goToNext;

  @override
  IconData getPageIconHint() => Icons.sms_rounded;

  @override
  String getPageTextHint() => setPhoneNumberHint;

  @override
  List<Widget> getWidgets(BuildContext context) => [
        ConstrainedBox(
            constraints: const BoxConstraints(
                maxHeight: 200, maxWidth: 300, minWidth: 280),
            child: Obx(() {
              return InternationalPhoneNumberInput(
                initialValue: controller.currentPhoneNumber,
                validator: controller.validatePhoneNumber,
                onSaved: controller.loginWithPhoneNumber,
                inputDecoration: InputDecoration(
                    errorText: controller.phoneNumberValidatedMessage.value),
                onInputChanged: controller.onPhoneNumberChanged,
                selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.DIALOG,
                    useEmoji: true),
              );
            }))
      ];
}
