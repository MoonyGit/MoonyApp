import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

/// Class to define SettingNotification Page dependencies by dependency injection
class SettingNotificationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingNotificationController());
  }
}

/// The setting location viewModel of location page
class SettingNotificationController  extends GetxController {

}
