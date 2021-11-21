import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

/// Class to define SettingRules Page dependencies by dependency injection
class SettingRulesBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingRulesController());
  }
}

/// The setting rules viewModel of location page
class SettingRulesController  extends GetxController {

}
