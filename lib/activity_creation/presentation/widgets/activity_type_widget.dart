import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:moony_app/activity_creation/presentation/activity_creation_controller.dart';
import 'package:moony_app/activity_creation/resources/assets.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/widgets/chip_widgets.dart';

/// The phone otp page
class ActivityTypeWidget extends GetView<ActivityCreationController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Image.asset(
                activity,
                width: 32,
                height: 32,
              )),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: makeRoundedTextWithMoonyGradient(
              context: context,
              //prefixImage: AppAsset.activity,
              //prefixImageSize: 24,
              //prefixImagePadding: EdgeInsets.only(left: 5, right: 5),
              text: AppStrings.translate(message: activityTypeTitle),
            ),
          ),
          SingleChoiceChipWidget(
            chipChoices: controller.activityTypeList,
            chipSelected: controller.selectedActivity,
            listener: (String selectedItem) {
              controller.selectedActivity = selectedItem;
              controller.isChipSelected();
            },
          ),
        ],
      ),
    );
  }
}