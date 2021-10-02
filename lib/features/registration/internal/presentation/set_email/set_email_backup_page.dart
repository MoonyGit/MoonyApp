import 'package:flutter/material.dart' hide Router;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/features/registration/internal/presentation/set_email/set_email_backup_controller.dart';
import 'package:moony_app/features/registration/resources/strings.dart';
import 'package:moony_app/features/registration/router/router.dart';

/// The set name widget
class SetEmailBackupPage
    extends SetInfoModalBasePage<SetEmailBackupController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  GlobalKey<FormState> getFormKey() {
    return _formKey;
  }

  @override
  IconData getPageIconHint() {
    return FontAwesomeIcons.at;
  }

  @override
  String getPageTextHint() {
    return setEmailHint;
  }

  @override
  List<Widget> getWidgets(BuildContext context) {
    return [
      makeWidgetWithConstraints(
          child: TextFormField(
        controller: controller.emailController,
        validator: controller.emailValidator,
        onFieldSubmitted: (String value) => _formKey.currentState?.validate(),
        decoration:
            InputDecoration(hintText: AppStrings.translate(message: emailHint)),
      )),
    ];
  }

  @override
  void Function() getNextButtonCallback() {
    return () => Get.offNamed(Router.setUserInfo);
  }

  @override
  bool hasNextButtonCallback() {
    return controller.emailAddress.value != null;
  }

  @override
  String getNextButtonText() => AppStrings.goToNext;
}
