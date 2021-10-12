import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/user/name.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/features/registration/internal/presentation/registration_controller.dart';
import 'package:moony_app/features/registration/internal/usecase/save_user_infos.dart';
import 'package:moony_app/features/registration/resources/strings.dart';

/// The set name widget
class SetNameWidget extends SetInfoBaseWidget<SetNameController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  GlobalKey<FormState> getFormKey() {
    return _formKey;
  }

  @override
  IconData getPageIconHint() {
    return FontAwesomeIcons.addressCard;
  }

  @override
  String getPageTextHint() {
    return setNameHint;
  }

  @override
  List<Widget> getWidgets(BuildContext context) {
    return [
      makeWidgetWithConstraints(
        child: Row(children: [
          Expanded(
              child: TextFormField(
            controller: controller.firstNameController,
            validator: controller.firstNameValidator,
            onFieldSubmitted: (String value) =>
                _formKey.currentState?.validate(),
            decoration: InputDecoration(
                hintText: AppStrings.translate(message: firstNameHint)),
          )),
          const Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
          ),
          Expanded(
              child: TextFormField(
                  controller: controller.lastNameController,
                  validator: controller.lastNameValidator,
                  onFieldSubmitted: (String value) =>
                      _formKey.currentState?.validate(),
                  decoration: InputDecoration(
                      hintText: AppStrings.translate(message: lastNameHint)))),
        ]),
      ),
    ];
  }
}

/// SetName Controller
class SetNameController extends GetxController {
  /// Public constructor
  SetNameController(this._registrationController, this._registrationUseCase) {
    _currentPageDisposable =
        ever(_registrationController.currentPage, (Widget? page) {
      if (page is SetNameWidget) {
        _firstName != null && _familyName != null
            ? _registrationController.enableNextButton()
            : _registrationController.disableNextButton();
      }
    });
  }

  late final Worker _currentPageDisposable;
  final AsyncParamUseCase<SaveUserNameUseCaseParam, void> _registrationUseCase;
  final RegistrationController _registrationController;

  String? _firstName;
  String? _familyName;

  /// first name text input controller
  TextEditingController firstNameController = TextEditingController();

  /// family name text input controller
  TextEditingController lastNameController = TextEditingController();

  /// first name form controller
  String? firstNameValidator(String? text) => text
      ?.let((String it) => Name(input: it).value.fold((NameFailure failure) {
            _registrationController.disableNextButton();
            _firstName = null;
            return failure.message;
          }, (String text) {
            _firstName = text;
            if (_familyName != null) {
              _registrationUseCase(
                  input: SaveUserNameUseCaseParam(
                      first: Name(input: _firstName!),
                      family: Name(input: _familyName!)));
              _registrationController.enableNextButton();
            }
            return null;
          }));

  /// family name form controller
  String? lastNameValidator(String? text) => text
      ?.let((String it) => Name(input: it).value.fold((NameFailure failure) {
            _registrationController.disableNextButton();
            _familyName = null;
            return failure.message;
          }, (String text) {
            _familyName = text;
            if (_firstName != null) {
              _registrationUseCase(
                  input: SaveUserNameUseCaseParam(
                      first: Name(input: _firstName!),
                      family: Name(input: _familyName!)));
              _registrationController.enableNextButton();
            }
            return null;
          }));

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    _currentPageDisposable.dispose();
    super.onClose();
  }
}
