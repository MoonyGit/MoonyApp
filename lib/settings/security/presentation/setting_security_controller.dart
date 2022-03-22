import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

/// Class to define SettingSecurity Page dependencies by dependency injection
class SettingSecurityBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingSecurityController());
  }
}

/// The setting security viewModel of location page
class SettingSecurityController  extends GetxController {

}
