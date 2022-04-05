import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:moony_app/activity_creation/presentation/activity_creation_controller.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

/// The phone otp page
class ActivityCreationPage extends GetView<ActivityCreationController> {
  @override
  Widget build(BuildContext context) {
    //TODO: change this when Obx will return Widget?
    final Widget leading = Obx(() => controller.isFirstPage.value
        ? Container()
        : IconButton(
            onPressed: controller.previousPage,
            icon: const Icon(Icons.arrow_back_ios),
          ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: leading is Container ? null : leading,
        actions: <Widget>[
          IconButton(
            onPressed: controller.exitCreation,
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Center(
              child: SmoothPageIndicator(
                controller: controller.pageController,
                count: controller.pages.length,
                effect: const WormEffect(activeDotColor: AppTheme.primary),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  children: controller.pages.keys.toList(),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            Obx(
              () => TapDebouncer(
                cooldown: controller.pageAnimation,
                onTap: controller.nextButtonEnabled.value
                    ? controller.nextPage
                    : null,
                builder:
                    (BuildContext context, Future<void> Function()? onTap) =>
                        Obx(
                  () => OutlinedButton(
                    onPressed: onTap,
                    child: makeWidgetWithConstraints(
                      child: Text(
                        AppStrings.translate(
                          message: controller.nextButtonText.value,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),
      ),
    );
  }
}
