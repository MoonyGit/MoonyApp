import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/user/model/gender.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/registration/presentation/registration_controller.dart';
import 'package:moony_app/registration/resources/strings.dart';

/// The set name widget
class SetGenderWidget extends SetInfoBaseWidget<SetGenderController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  GlobalKey<FormState> getFormKey() {
    return _formKey;
  }

  @override
  IconData getPageIconHint() {
    return FontAwesomeIcons.venusMars;
  }

  @override
  String getPageTextHint() {
    return setGenderHint;
  }

  @override
  List<Widget> getWidgets(BuildContext context) {
    return <Widget>[
      OutlinedButton(
          onPressed: controller.onFemaleGenderPicked,
          child: makeWidgetWithConstraints(
              child: Text(
            AppStrings.translate(message: genderWomanText),
            textAlign: TextAlign.center,
          ))),
      const Padding(
        padding: EdgeInsets.only(top: 10),
      ),
      OutlinedButton(
          onPressed: controller.onMaleGenderPicked,
          child: makeWidgetWithConstraints(
              child: Text(
            AppStrings.translate(message: genderManText),
            textAlign: TextAlign.center,
          ))),
    ];
  }
}

/// SetGender Controller
class SetGenderController extends GetxController {
  /// Public constructor
  SetGenderController(this._registrationController, this._registrationUseCase) {
    _currentPageDisposable =
        ever(_registrationController.currentPage, (Widget? page) {
      if (page is SetGenderWidget) {
        _gender != null
            ? _registrationController.enableNextButton()
            : _registrationController.disableNextButton();
      }
    });
  }

  late final Worker _currentPageDisposable;

  final AsyncParamUseCase<Gender, void> _registrationUseCase;
  final RegistrationController _registrationController;

  Gender? _gender;

  /// on male gender button callback
  void onMaleGenderPicked() {
    _gender = Gender.male;
    _registrationUseCase(input: _gender!);
    _registrationController.enableNextButton();
  }

  /// on female gender button callback
  void onFemaleGenderPicked() {
    _gender = Gender.female;
    _registrationUseCase(input: _gender!);
    _registrationController.enableNextButton();
  }

  @override
  void onClose() {
    _currentPageDisposable.dispose();
    super.onClose();
  }
}
