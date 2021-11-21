import 'package:get/get.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/settings/resources/router.dart';

/// Class to define SettingPage dependencies by dependency injection
class SettingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}

/// The setting viewModel of setting page
class SettingController extends GetxController {
  /// on "who i am" button pressed
  void buttonSettingProfile() => Get.toNamed(Router.settingProfile);
  /// on location button pressed
  void buttonSettingLocation() => Get.toNamed(Router.settingLocation);
  /// on notification button pressed
  void buttonSettingNotification() => Get.toNamed(Router.settingNotification);
  /// on security button pressed
  void buttonSettingSecurity() => Get.toNamed(Router.settingSecurity);
  /// on payment button pressed
  void buttonSettingPayment() => Get.toNamed(Router.settingPayment);
  /// on rules button pressed
  void buttonSettingRules() => Get.toNamed(Router.settingRules);
  /// on "invoke Moony" button pressed
  void buttonSettingInvoke() => Get.toNamed(Router.settingInvoke);
  /// on "Froony's home" button pressed
  void buttonSettingHome() => Get.toNamed(Router.settingHome);

  // TODO later
  void disconnectUser() {
    Logger.d("disconnect");
  }
}
