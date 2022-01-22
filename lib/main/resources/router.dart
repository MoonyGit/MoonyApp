import 'package:get/get.dart';
import 'package:moony_app/main/presentation/main_controller.dart';
import 'package:moony_app/main/presentation/main_page.dart';

/// Router for bottom NavBar feature
abstract class Router {
  /// The "bottom NavBar" route path
  static const String mainPage = '/mainPage';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: mainPage,
      page: () => MainPage(),
      binding: MainPageBindings(),
    ),
  ];
}
