import 'package:flutter/material.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/domain/activity/model/participant_number.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';

/// The phone otp page
class ActivityParticipantsNumberWidget
    extends SetInfoBaseWidget<ActivityParticipantsNumberController> {

  @override
  IconData getPageIconHint() => Icons.people;

  @override
  String getPageTextHint() => activityParticipantNumber.translate();

  @override
  List<Widget> getWidgets(BuildContext context) => [
    SingleChoiceChipWidget(
      chipSelected: controller.currentParticipantNumber,
      chipChoices: controller.participantNumberChoices,
      listener: controller.onParticipantNumberChanged,
    ),
  ];
}

/// ActivityParticipantsNumber Controller
class ActivityParticipantsNumberController extends ValidationInteractor {
  /// Public constructor
  ActivityParticipantsNumberController(this._creationUseCase);

  final AsyncParamUseCase<ParticipantNumber, void> _creationUseCase;

  /// current participant number if any
  String? currentParticipantNumber;

  /// Participant number as choice list for Chips
  Set<String> participantNumberChoices =
      ParticipantNumber.getParticipantNumberChoices().toParticipantNumberUi();

  /// onParticipantNumberChanged callback
  void onParticipantNumberChanged(int index, String participantNumber) {
    ParticipantNumber(
      input: ParticipantNumber.getParticipantNumberChoices().toList()[index],
    ).value.fold(
      (ParticipantNumberFailure l) {
        currentParticipantNumber = null;
        validationController.add(false);
      },
      (int success) {
        _creationUseCase(
          input: ParticipantNumber(input: success),
        );
        currentParticipantNumber = participantNumber;
        validationController.add(true);
      },
    );
  }
}

/// Extension Mapper for participant number
extension ParticipantNumberMapper on int {
  /// Mapper method
  String toParticipantNumberUi() => "+$this";
}

/// Extension Mapper for participant number Set
extension ParticipantNumberSetMapper on Set<int> {
  /// Mapper method
  Set<String> toParticipantNumberUi() =>
      map((int e) => e.toParticipantNumberUi()).toSet();
}
