import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../resources/strings.dart';
import '../resources/themes.dart';
import 'app_binding.dart';
import 'app_router.dart';

/// The Moony application widget setup
class MoonyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return GetMaterialApp(
      title: AppStrings.translate(message: AppStrings.appTitle),
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
