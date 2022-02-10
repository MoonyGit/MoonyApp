import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:moony_app/activity_creation/presentation/activity_creation_controller.dart';
import 'package:moony_app/activity_creation/presentation/widgets/activity_budget_widget.dart';
import 'package:moony_app/activity_creation/presentation/widgets/activity_participants_filter_widget.dart';
import 'package:moony_app/activity_creation/presentation/widgets/activity_participants_number_widget.dart';
import 'package:moony_app/activity_creation/presentation/widgets/activity_type_widget.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// The phone otp page
class ActivityCreationPage extends GetView<ActivityCreationController> {
  final List<Widget> _pages = [
    ActivityTypeWidget(),
    ActivityParticipantsNumberWidget(),
    ActivityParticipantsFilterWidget(),
    ActivityBudgetWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            controller.previousPage();
          },
          icon: const Icon(FontAwesomeIcons.chevronLeft),
        ),
        actions: [
          IconButton(
            onPressed: () {
              controller.exitCreation();
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.vertical,
        children: [
          SmoothPageIndicator(
            count: _pages.length,
            effect: const JumpingDotEffect(
              verticalOffset: 15,
              activeDotColor: AppTheme.primary,
            ),
            controller: controller.pageController,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
          ),
          Expanded(
            flex: 1,
            child: PageView(
              controller: controller.pageController,
              physics: new NeverScrollableScrollPhysics(),
              children: _pages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: getMoonyImage(size: 160),
          ),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (controller.isChipSelected()) {
                  return Colors.grey;
                }
                return AppTheme.background;
              }),
            ),
            onPressed: controller.isChipSelected() ? controller.nextPage : null,
            child: makeWidgetWithConstraints(
              child: Text(
                AppStrings.translate(message: AppStrings.goToContinue),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
          ),
        ],
      ),
    );
  }
}
