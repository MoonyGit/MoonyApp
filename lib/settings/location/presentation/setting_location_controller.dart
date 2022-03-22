import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

/// Class to define SettingLocation Page dependencies by dependency injection
class SettingLocationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingLocationController());
  }
}

/// The setting location viewModel of location page
class SettingLocationController  extends GetxController {

}
