import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/settings/notification/presentation/setting_notification_controller.dart';
import 'package:moony_app/settings/resources/strings.dart';

/// The setting notification page
class SettingNotificationPage extends GetView<SettingNotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.translate(message: settingNotification)),
          titleTextStyle: const TextStyle(color: Colors.black),
          centerTitle: true,
        ),
        body: Obx(() => controller.showSpinner.value == true
            ? const CircularProgressIndicator()
            : Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        AppStrings.translate(
                            message: settingNotificationHeaderGeneral),
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationMatch)),
                      onChanged: (bool value) =>
                          controller.changeNotificationMatchPreference(
                              isEnabled: value),
                      value: controller.stateMatch.value,
                    ),
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationMessage)),
                      onChanged: (bool value) =>
                          controller.changeNotificationMessagePreference(
                              isEnabled: value),
                      value: controller.stateMessage.value,
                    ),
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationLike)),
                      onChanged: (bool value) =>
                          controller.changeNotificationLikePreference(
                              isEnabled: value),
                      value: controller.stateLike.value,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        AppStrings.translate(
                            message: settingNotificationHeaderActivity),
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationSaw)),
                      onChanged: (bool value) => controller
                          .changeNotificationActivitySawPreference(
                          isEnabled: value),
                      value: controller.stateActivitySaw.value,
                    ),
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationFull)),
                      onChanged: (bool value) => controller
                          .changeNotificationActivityFullPreference(
                          isEnabled: value),
                      value: controller.stateActivityFull.value,
                    ),
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationExpired)),
                      onChanged: (bool value) => controller
                          .changeNotificationActivityExpiredPreference(
                          isEnabled: value),
                      value: controller.stateActivityExpired.value,
                    ),
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationAvailable)),
                      onChanged: (bool value) => controller
                          .changeNotificationActivityAvailablePreference(
                          isEnabled: value),
                      value: controller.stateActivityAvailable.value,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        AppStrings.translate(
                            message: settingNotificationHeaderUniverse),
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 8,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationEvent)),
                      onChanged: (bool value) =>
                          controller.changeNotificationEventPreference(
                              isEnabled: value),
                      value: controller.stateEvent.value,
                    ),
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationPromotion)),
                      onChanged: (bool value) =>
                          controller.changeNotificationPromotionPreference(
                              isEnabled: value),
                      value: controller.statePromotion.value,
                    ),
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationNews)),
                      onChanged: (bool value) =>
                          controller.changeNotificationNewsPreference(
                              isEnabled: value),
                      value: controller.stateNews.value,
                    ),
                  ),
                  Obx(
                        () => SwitchListTile(
                      title: Text(AppStrings.translate(
                          message: settingNotificationSurvey)),
                      onChanged: (bool value) =>
                          controller.changeNotificationSurveyPreference(
                              isEnabled: value),
                      value: controller.stateSurvey.value,
                    ),
                  )
                ])))));
  }
}
