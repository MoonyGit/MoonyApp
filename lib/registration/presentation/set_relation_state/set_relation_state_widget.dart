import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/user/model/relation_state.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';
import 'package:moony_app/registration/resources/strings.dart';

/// The set name widget
class SetRelationStateWidget
    extends SetInfoBaseWidget<SetRelationStateController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  GlobalKey<FormState> getFormKey() {
    return _formKey;
  }

  @override
  IconData getPageIconHint() {
    return FontAwesomeIcons.solidHeart;
  }

  @override
  String getPageTextHint() {
    return setRelationStateHint;
  }

  @override
  List<Widget> getWidgets(BuildContext context) {
    return <Widget>[
      SingleChoiceChipWidget(
        chipSelected: controller.currentRelationState,
        chipChoices: controller.relationStateChoices,
        listener: controller.onRelationStateSelected,
      ),
    ];
  }
}

/// SetRelationState Controller
class SetRelationStateController extends ValidationInteractor {
  /// Public constructor
  SetRelationStateController(this._registrationUseCase);

  final AsyncParamUseCase<RelationState, void> _registrationUseCase;

  String? currentRelationState;

  Set<String> relationStateChoices = RelationState.values.toUi();

  /// onRelationStateSelected callback
  void onRelationStateSelected(int index, String relationStateInput) {
    try {
      _registrationUseCase(input: RelationState.values[index]);
      currentRelationState = relationStateInput;
      validationController.add(true);
    } catch (e, s) {
      Logger.e(s);
    }
  }
}
