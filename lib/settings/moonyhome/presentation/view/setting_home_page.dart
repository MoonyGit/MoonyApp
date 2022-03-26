import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/settings/common/presentation/setting_header_widget.dart';
import 'package:moony_app/settings/common/presentation/setting_item_widget.dart';
import 'package:moony_app/settings/moonyhome/presentation/view/setting_home_controller.dart';
import 'package:moony_app/settings/resources/strings.dart';

/// The setting moony home page
class SettingHomePage extends GetView<SettingHomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[AppTheme.secondary, AppTheme.primary],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () => controller.back(),
          ),
          title: Text(
            settingHomeTitle.translate(),
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            SettingHeaderWidget(
              title: settingHomeHeaderMe.translate().toUpperCase(),
            ),
            SettingItemWidget(
              title: settingHomeGuideMoony.translate(),
              listener: controller.redirectToMoonyGuide,
            ),
            SettingHeaderWidget(
              title: settingHomeHeaderMoon.translate().toUpperCase(),
            ),
            SettingItemWidget(
              title: settingHomeShop.translate(),
              listener: controller.redirectToMoonyShop,
            ),
            SettingItemWidget(
              title: settingHomeBlog.translate(),
              listener: controller.redirectToMoonyBlog,
            ),
            SettingItemWidget(
              title: settingHomeGram.translate(),
              listener: controller.redirectToMoonyGram,
            ),
            SettingItemWidget(
              title: settingHomeBook.translate(),
              listener: controller.redirectToMoonyBook,
            ),
            SettingHeaderWidget(
              title: settingHomeHeaderFroony.translate().toUpperCase(),
            ),
            SettingItemWidget(
              title: settingHomeSponsor.translate(),
              listener: controller.redirectToMoonyInvite,
            ),
          ],
        ),
      ),
    );
  }
}
