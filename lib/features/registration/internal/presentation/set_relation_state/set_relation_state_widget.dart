import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/user/relation_state.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/features/registration/internal/presentation/registration_controller.dart';
import 'package:moony_app/features/registration/internal/usecase/registration_use_case.dart';
import 'package:moony_app/features/registration/resources/strings.dart';

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
    return [
      OutlinedButton(
          onPressed: controller.onAloneRelationStateChoosen,
          child: makeWidgetWithConstraints(
              child: Text(
            AppStrings.translate(message: aloneRelationState),
            textAlign: TextAlign.center,
          ))),
      const Padding(
        padding: EdgeInsets.only(top: 10),
      ),
      OutlinedButton(
          onPressed: controller.onTakenRelationStatePicked,
          child: makeWidgetWithConstraints(
              child: Text(
            AppStrings.translate(message: takenRelationState),
            textAlign: TextAlign.center,
          ))),
    ];
  }
}

/// SetRelationState Controller
class SetRelationStateController extends GetxController {
  /// Public constructor
  SetRelationStateController(
      this._registrationController, this._registrationUseCase) {
    _currentPageDisposable =
        ever(_registrationController.currentPage, (Widget? page) {
      if (page is SetRelationStateWidget) {
        _relationState != null
            ? _registrationController.enableNextButton()
            : _registrationController.disableNextButton();
      }
    });
  }

  late final Worker _currentPageDisposable;
  final RegistrationUseCase _registrationUseCase;
  final RegistrationController _registrationController;

  RelationState? _relationState;

  /// alone picked button callback
  void onAloneRelationStateChoosen() {
    _relationState = const RelationState.alone();
    _registrationUseCase.setUserRelationState(relationState: _relationState!);
    _registrationController.enableNextButton();
  }

  /// taken picked button callback
  void onTakenRelationStatePicked() {
    _relationState = const RelationState.taken();
    _registrationUseCase.setUserRelationState(relationState: _relationState!);
    _registrationController.enableNextButton();
  }

  @override
  void onClose() {
    _currentPageDisposable.dispose();
    super.onClose();
  }
}
