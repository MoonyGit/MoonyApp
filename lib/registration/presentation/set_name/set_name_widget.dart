import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/user/model/name.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/registration/domain/usecase/save_user_infos.dart';
import 'package:moony_app/registration/resources/strings.dart';

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
class SetNameController extends ValidationInteractor {
  /// Public constructor
  SetNameController(this._registrationUseCase);

  final AsyncParamUseCase<SaveUserNameUseCaseParam, void> _registrationUseCase;

  String? _firstName;
  String? _familyName;

  /// first name text input controller
  TextEditingController firstNameController = TextEditingController();

  /// family name text input controller
  TextEditingController lastNameController = TextEditingController();

  /// first name form controller
  String? firstNameValidator(String? text) => text
      ?.let((String it) => Name(input: it).value.fold((NameFailure failure) {
            validationController.add(false);
            _firstName = null;
            return failure.message;
          }, (String text) {
            _firstName = text;
            if (_familyName != null) {
              _registrationUseCase(
                  input: SaveUserNameUseCaseParam(
                      first: Name(input: _firstName!),
                      family: Name(input: _familyName!)));
              validationController.add(true);
            }
            return null;
          }));

  /// family name form controller
  String? lastNameValidator(String? text) => text
      ?.let((String it) => Name(input: it).value.fold((NameFailure failure) {
            validationController.add(false);
            _familyName = null;
            return failure.message;
          }, (String text) {
            _familyName = text;
            if (_firstName != null) {
              _registrationUseCase(
                  input: SaveUserNameUseCaseParam(
                      first: Name(input: _firstName!),
                      family: Name(input: _familyName!)));
              validationController.add(true);
            }
            return null;
          }));

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.onClose();
  }
}
