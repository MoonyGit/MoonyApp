import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/assets.dart';

import 'splash_controller.dart';

/// Splash page is used to show a loading page during the initialization of
/// all the applications components
class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.goToNextScreen();
    SystemChrome.setEnabledSystemUIOverlays(List<SystemUiOverlay>.empty());
    return Container(
      color: Colors.white,
      child: Center(
          child: Image.asset(
        AppAsset.splashLogo,
        height: 200,
        width: 200,
      )),
    );
  }
}
