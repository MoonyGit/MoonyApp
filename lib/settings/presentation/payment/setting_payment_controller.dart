import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

/// Class to define SettingPayment Page dependencies by dependency injection
class SettingPaymentBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingPaymentController());
  }
}

/// The setting payment viewModel of location page
class SettingPaymentController  extends GetxController {

}
