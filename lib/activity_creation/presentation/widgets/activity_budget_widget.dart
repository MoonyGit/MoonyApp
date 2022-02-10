import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:moony_app/activity_creation/presentation/activity_creation_controller.dart';
import 'package:moony_app/activity_creation/resources/assets.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';

class ActivityBudgetWidget extends GetView<ActivityCreationController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Image.asset(
              budget,
              width: 32,
              height: 32,
            ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: makeRoundedTextWithMoonyGradient(
            context: context,
            text: AppStrings.translate(message: activityBudgetTitle),
          ),
        ),
        SingleChoiceChipWidget(
          chipChoices: controller.activityBudgetList,
          chipSelected: controller.selectedBudget,
          listener: (String selectedItem) {
            controller.selectedBudget = selectedItem;
            controller.isChipSelected();
          },
        ),
      ],
    );
  }
}
