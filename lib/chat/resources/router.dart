import 'package:get/get.dart';
import 'package:moony_app/chat/presentation/chat_list_controller.dart';
import 'package:moony_app/chat/presentation/chat_list_page.dart';

/// Router for activity_creation feature
abstract class Router {
  /// The "chat list" route path
  static const String chatList = '/chatList';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: chatList,
      page: () => ChatListPage(),
      binding: ChatListBinding(),
    ),
  ];
}
