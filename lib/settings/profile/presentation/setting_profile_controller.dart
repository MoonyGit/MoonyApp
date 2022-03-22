import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:moony_app/common/util/logger.dart';

/// Class to define SettingProfile Page dependencies by dependency injection
class SettingProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingProfileController());
  }
}

/// The setting profile viewModel of location page
class SettingProfileController  extends GetxController {

}
