import 'package:get/get.dart';
import 'package:moony_app/home/presentation/home_controller.dart';
import 'package:moony_app/home/presentation/home_page.dart';

/// Router for home feature
abstract class Router {
  /// The "home" route path
  static const String home = '/home';
  /// The list of routes
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: home,
      binding: HomeBinding(),
      page: () => HomePage(),
    ),
  ];
}
