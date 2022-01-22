import 'package:get/get.dart';

/// Class to define GiftPage dependencies by dependency injection
class GiftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiftController());
  }
}

/// The login viewModel of login page
class GiftController extends GetxController {}
