import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:moony_app/activity_creation/domain/model/participant_attribute.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/set_infos_base_widget.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';

/// Page to set participant filter
class ActivityParticipantsFilterWidget
    extends SetInfoBaseWidget<ActivityParticipantsFilterController> {

  @override
  IconData getPageIconHint() => Icons.filter_alt;

  @override
  String getPageTextHint() => "$activityFilterTitle\n$activityFilterSubTitle";

  @override
  List<Widget> getWidgets(BuildContext context) => [
    MultipleChoiceChipWidget(
      chipChoices: controller.filterParticipantChoices,
      selectedItems: controller.currentFilterParticipants,
      listener: controller.onAttributeSelected,
    ),
  ];
}

/// ActivityFilter Controller
class ActivityParticipantsFilterController extends ValidationInteractor {
  /// Public constructor
  ActivityParticipantsFilterController(this._creationUseCase);

  final AsyncParamUseCase<Set<ParticipantAttribute>, void> _creationUseCase;

  /// current participant attribute filter if any
  Set<String>? currentFilterParticipants;

  /// Participant attribute filter as choice list for Chips
  Set<String> filterParticipantChoices = ParticipantAttribute.values.toUi();

  /// onAttributeSelected callback
  void onAttributeSelected(Map<int, String> attributes) {
    try {
      attributes.keys.map((int e) => ParticipantAttribute.values[e]).toSet()
          .also((Set<ParticipantAttribute> it) {
        _creationUseCase(input: it);
        currentFilterParticipants = it.toList().toUi();
        validationController.add(true);
      });
    } catch (e, s) {
      Logger.e(s);
      currentFilterParticipants = null;
      validationController.add(false);
    }
  }
}

/// Mapper extension for ParticipantAttribute to String
extension ParticipantAttributeMapper on ParticipantAttribute {
  /// Mapper method
  String toUi() => name;
}

/// Mapper extension for List<ParticipantAttribute> to Set<String>
extension ParticipantAttributeListMapper on List<ParticipantAttribute> {
  /// Mapper method
  Set<String> toUi() => map((ParticipantAttribute state) => state.name).toSet();
}

/// Mapper extension for String to ParticipantAttribute
extension ParticipantAttributeStringMapper on String {
  /// Mapper method
  ParticipantAttribute toParticipantAttribute() =>
      ParticipantAttribute.values.firstWhere(
            (ParticipantAttribute element) => element.name == this,
        orElse: () => throw const FormatException(),
      );
}

/// Mapper extension for Set<String> to Set<ParticipantAttribute>
extension ParticipantAttributeStringSetMapper on Set<String> {
  /// Mapper method
  Set<ParticipantAttribute> toParticipantAttribute() =>
      map((String e) => e.toParticipantAttribute()).toSet();
}