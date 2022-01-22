import 'package:get/get.dart';
import 'package:moony_app/gift/presentation/gift_controller.dart';
import 'package:moony_app/gift/presentation/gift_page.dart';

/// Router for gift page feature
abstract class Router {
  /// The "gift page" route path
  static const String giftPage = '/giftPage';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: giftPage,
      page: () => GiftPage(),
      binding: GiftBinding(),
    ),
  ];
}
