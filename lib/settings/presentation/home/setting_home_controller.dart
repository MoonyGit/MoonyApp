import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

/// Class to define SettingHome Page dependencies by dependency injection
class SettingHomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingHomeController());
  }
}

/// The setting "Home's Moony" viewModel of "Home's Moony" page
class SettingHomeController extends GetxController {}
