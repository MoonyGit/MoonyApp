import 'package:get/get.dart';
import 'package:moony_app/chat/resources/router.dart' as chat_router;

/// Class to define LoginPage dependencies by dependency injection
class ChatListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatListController());
  }
}

/// The login viewModel of login page
class ChatListController extends GetxController {
  void goToChatRoom(String chatId) {
    Get.toNamed(chat_router.Router.chatRoom);
  }
}
