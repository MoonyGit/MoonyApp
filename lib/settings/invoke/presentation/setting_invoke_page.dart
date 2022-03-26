import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/settings/common/presentation/setting_header_widget.dart';
import 'package:moony_app/settings/common/presentation/setting_item_widget.dart';
import 'package:moony_app/settings/invoke/presentation/setting_invoke_controller.dart';
import 'package:moony_app/settings/resources/strings.dart';

/// The setting invoke Moony page
class SettingInvokePage extends GetView<SettingInvokeController> {
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
            settingInvokeTitle.translate(),
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            SettingHeaderWidget(
              title: settingInvokeHeaderContact.translate().toUpperCase(),
            ),
            SettingItemWidget(
              title: settingInvokeGuide.translate(),
              listener: controller.redirectToMoonyGuide,
            ),
            SettingItemWidget(
              title: settingInvokeFaq.translate(),
              listener: controller.redirectToFaq,
            ),
            SettingItemWidget(
              title: settingInvokeContact.translate(),
              listener: controller.redirectToContact,
            ),
            SettingItemWidget(
              title: settingInvokeHelp.translate(),
              listener: controller.redirectToHelp,
            ),
          ],
        ),
      ),
    );
  }
}
