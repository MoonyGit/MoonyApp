import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/user/birthdate.dart';
import 'package:moony_app/common/util/date_format_ext.dart';
import 'package:moony_app/features/registration/internal/presentation/registration_controller.dart';
import 'package:moony_app/features/registration/internal/usecase/registration_use_case.dart';
import 'package:moony_app/features/registration/resources/strings.dart';

/// The set name widget
class SetBirthDateWidget extends SetInfoBaseWidget<SetBirthdateController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _showBirthdayPicker() async {
    (await showDatePicker(
      context: Get.context!,
      initialEntryMode: DatePickerEntryMode.input,
      initialDate: controller.birthDate.value,
      firstDate: controller.firstDate,
      lastDate: controller.lastDate,
      fieldLabelText: 'Booking date',
      fieldHintText: 'Month/Date/Year',
    ))
        ?.let((DateTime it) => controller.setBirthDate = it);
  }

  @override
  GlobalKey<FormState> getFormKey() {
    return _formKey;
  }

  @override
  IconData getPageIconHint() {
    return FontAwesomeIcons.birthdayCake;
  }

  @override
  String getPageTextHint() {
    return setAgeHint;
  }

  @override
  List<Widget> getWidgets(BuildContext context) {
    return [
      makeWidgetWithConstraints(
          child: Obx(() => TextFormField(
                onTap: _showBirthdayPicker,
                keyboardType: TextInputType.none,
                controller: TextEditingController(
                    text: controller.birthDate.value.format('%d / %m / %Y')),
              ))), // )
    ];
  }
}

/// SetBirthdate controller
class SetBirthdateController extends GetxController {
  /// Public constructor
  SetBirthdateController(
      this._registrationController, this._registrationUseCase) {
    _currentPageDisposable =
        ever(_registrationController.currentPage, (Widget? page) {
      if (page is SetBirthDateWidget) {
        birthDate.value != lastDate
            ? _registrationController.enableNextButton()
            : _registrationController.disableNextButton();
      }
    });
  }

  late final Worker _currentPageDisposable;

  final RegistrationController _registrationController;
  final AsyncParamUseCase<Birthdate, void> _registrationUseCase;

  /// first date used in date picker
  final DateTime firstDate = Birthdate.maxSecurityDate();
  /// last date used in date picker minus on day
  final DateTime lastDate =
      Birthdate.minSecurityDate().subtract(const Duration(days: 1));

  late final Rx<DateTime> _birthDate = lastDate.obs;

  /// Current user birthdate
  Rx<DateTime> get birthDate => _birthDate;

  /// Set user birthdate
  set setBirthDate(DateTime date) {
    if (date != lastDate && Birthdate(input: date).isValid) {
      _birthDate.value = date;
      _registrationUseCase(input: Birthdate(input: date));
      _registrationController.enableNextButton();
    }
  }

  @override
  void onClose() {
    _currentPageDisposable.dispose();
    super.onClose();
  }
}
