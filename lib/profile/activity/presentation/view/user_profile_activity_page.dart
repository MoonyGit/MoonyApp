import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/profile/activity/presentation/controller/user_profile_activity_controller.dart';
import 'package:moony_app/profile/activity/presentation/model/user_profile_activity_information_ui.dart';
import 'package:moony_app/profile/activity/presentation/model/user_profile_activity_item_ui.dart';
import 'package:moony_app/profile/activity/presentation/view/user_profile_activity_edit_tabs_widget.dart';
import 'package:moony_app/profile/activity/presentation/view/user_profile_activity_item_delay_widget.dart';
import 'package:moony_app/profile/activity/presentation/view/user_profile_activity_item_widget.dart';
import 'package:moony_app/profile/common/presentation/user_profile_banner_widget.dart';
import 'package:moony_app/profile/resources/strings.dart';

///User profile activity page
class UserProfileActivityPage extends GetView<UserProfileActivityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: userProfileSetting,
            onPressed: () {
              controller.goToSetting();
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          userProfileTitle.translate(),
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Obx(
                      () =>
                  controller.userInformation.value?.let(
                        (UserProfileActivityInformationUi user) =>
                        UserProfileBannerWidget(
                          location: user.location,
                          froonysNumber: user.froonysNumber,
                          activityNumber: user.activityNumber,
                          firstName: user.firstName,
                          lastName: user.lastName,
                          age: user.age,
                          showEdit: false,
                          pictures: user.profilePhoto,
                          onClick: controller.goToSetting,
                        ),
                  ) ??
                      const CircularProgressIndicator(),
                ),
                const Padding(padding: EdgeInsets.only(top: 8, bottom: 8)),
                Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[AppTheme.secondary, AppTheme.primary],
                    ),
                  ),
                  child: Obx(
                        () =>
                    controller.headerNumberActivity.value?.let(
                          (String header) => Text(
                        header,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ) ??
                        Text(
                          userProfileActivityComing.translate(),
                        ),
                  ),
                ),
                Obx(
                      () =>
                  controller.comingActivities.value
                      ?.let((List<UserProfileActivityItemUi> list) {
                    return Column(children: getItems(list));
                  }) ??
                      Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(top: 32),
                            child: ImageIcon(
                              AssetImage(AppAsset.moonyShadow),
                              size: 96,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Text(
                              userProfileActivityNoContent.translate(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32),
                            child: Container(
                              height: 40,
                              decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(32)),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    AppTheme.secondary,
                                    AppTheme.primary
                                  ],
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  textStyle: const TextStyle(fontSize: 14),
                                ),
                                onPressed: controller.goToSetting,
                                child: Text(
                                  userProfileActivityCreate.translate(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                ),
              ],
            ),
          ),
          UserProfileEditTabsWidget(onTabsClick: controller.goToSetting),
        ],
      ),
    );
  }

  /// Get the list of activity and return the wanted widget
  List<Widget> getItems(List<UserProfileActivityItemUi> list) {
    final List<Widget> activities = List<Widget>.empty(growable: true);

    for (final UserProfileActivityItemUi element in list) {
      if (element.delay > 5) {
        activities.add(UserProfileActivityItemWidget(item: element));
      } else {
        activities.add(UserProfileActivityItemDelayWidget(item: element));
      }
    }
    return activities;
  }
}
