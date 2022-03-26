import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/settings/common/presentation/setting_header_widget.dart';
import 'package:moony_app/settings/common/presentation/setting_item_widget.dart';
import 'package:moony_app/settings/resources/strings.dart';
import 'package:moony_app/settings/rules/presentation/setting_rules_controller.dart';

/// The setting rules page
class SettingRulesPage extends GetView<SettingRulesController> {
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
            settingRuleTitle.translate(),
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            SettingHeaderWidget(
              title: settingRuleHeaderLegal.translate().toUpperCase(),
            ),
            SettingItemWidget(
              title: settingRulePrivacyPolicy.translate(),
              listener: controller.redirectToPrivacy,
            ),
            SettingItemWidget(
              title: settingRuleTermOfUse.translate(),
              listener: controller.redirectToTerm,
            ),
            SettingItemWidget(
              title: settingRuleLicences.translate(),
              listener: controller.redirectToLicences,
            ),
            SettingItemWidget(
              title: settingRuleSettlement.translate(),
              listener: controller.redirectToSettlement,
            ),
          ],
        ),
      ),
    );
  }
}
