import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/application/common/app_binding.dart';
import 'package:moony_app/application/common/app_router.dart';
import 'package:moony_app/presentation/common/resources/strings.dart';
import 'package:moony_app/presentation/common/resources/themes.dart';

/// The Moony application widget setup
class MoonyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appTitle.tr,
      debugShowCheckedModeBanner: false,
      initialRoute: Navigation.initial,
      getPages: Navigation.routes,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      initialBinding: AppBinding(),
      locale: Get.deviceLocale,
    );
  }
}
