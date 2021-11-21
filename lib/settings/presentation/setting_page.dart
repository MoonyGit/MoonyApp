import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/settings/presentation/setting_controller.dart';
import 'package:moony_app/settings/resources/strings.dart';

/// The setting page
class SettingPage extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.translate(message: settingHomepageTitle)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ..._generateListTile(
                      onTap: controller.buttonSettingProfile,
                      title: settingProfile,
                      icon: Icons.person),
                  ..._generateListTile(
                      onTap: controller.buttonSettingLocation,
                      title: settingLocation,
                      icon: Icons.location_on),
                  ..._generateListTile(
                      onTap: controller.buttonSettingNotification,
                      title: settingNotification,
                      icon: Icons.circle_notifications),
                  ..._generateListTile(
                      onTap: controller.buttonSettingSecurity,
                      title: settingSecurity,
                      icon: Icons.security),
                  ..._generateListTile(
                      onTap: controller.buttonSettingPayment,
                      title: settingPayment,
                      icon: Icons.monetization_on_outlined),
                  ..._generateListTile(
                      onTap: controller.buttonSettingRules,
                      title: settingRules,
                      icon: Icons.account_balance),
                  ..._generateListTile(
                      onTap: controller.buttonSettingInvoke,
                      title: settingInvoke,
                      icon: Icons.call),
                  ..._generateListTile(
                      onTap: controller.buttonSettingHome,
                      title: settingHome,
                      icon: Icons.home),
                  Image.asset(AppAsset.splashLogo, width: 96, height: 96),
                  OutlinedButton(
                      onPressed: controller.disconnectUser,
                      child: Text(
                          AppStrings.translate(message: settingDisconnect))),
                ],
              )),
        ));
  }

  List<Widget> _generateListTile(
          {required Function() onTap,
          required String title,
          required IconData icon}) =>
      [
        ListTile(
            onTap: onTap,
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2),
                borderRadius: BorderRadius.circular(64)),
            title: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(AppStrings.translate(message: title))),
            leading: Icon(
              icon,
              size: 40,
              color: Colors.black,
            )),
        const Padding(padding: EdgeInsets.only(top: 16)),
      ];
}
