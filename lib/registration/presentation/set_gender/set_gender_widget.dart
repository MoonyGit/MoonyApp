import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/user/model/gender.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';
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
      SingleChoiceChipWidget(
        chipSelected: controller.currentGender,
        chipChoices: controller.genderChoices,
        listener: controller.onGenderSelected,
      ),
    ];
  }
}

/// SetGender Controller
class SetGenderController extends ValidationInteractor {
  /// Public constructor
  SetGenderController(this._registrationUseCase);

  final AsyncParamUseCase<Gender, void> _registrationUseCase;

  String? currentGender;

  Set<String> genderChoices = Gender.values.toUi();

  /// onGenderSelected callback
  void onGenderSelected(int index, String genderInput) {
    try {
      _registrationUseCase(input: Gender.values[index]);
      currentGender = genderInput;
      validationController.add(true);
    } catch (e, s) {
      Logger.e(s);
    }
  }
}
