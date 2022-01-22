import 'package:get/get.dart';

/// Class to define LoginPage dependencies by dependency injection
class ActivityCreationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityCreatorController());
  }
}

/// The login viewModel of login page
class ActivityCreatorController extends GetxController {}
