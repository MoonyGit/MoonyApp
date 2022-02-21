import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/util/date_format_ext.dart';
import 'package:moony_app/registration/resources/strings.dart';

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
class SetBirthdateController extends ValidationInteractor {
  /// Public constructor
  SetBirthdateController(this._registrationUseCase);

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
      validationController.add(true);
    }
  }
}
