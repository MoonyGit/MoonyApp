import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

/// Class to define SettingInvoke Page dependencies by dependency injection
class SettingInvokeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingInvokeController());
  }
}

/// The setting "Invoke Moony" viewModel of "Invoke Moony" page
class SettingInvokeController  extends GetxController {

}
