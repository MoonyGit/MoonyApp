import 'package:get/get.dart';

/// Class to define LoginPage dependencies by dependency injection
class ChatListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatListController());
  }
}

/// The login viewModel of login page
class ChatListController extends GetxController {}
