import 'package:get/get.dart';

import '../presentation/splash_controller.dart';
import '../presentation/splash_page.dart';

/// Router for startup feature
abstract class Router {
  /// The "splash" route path
  static const String splash = '/splash';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
        name: splash, page: () => SplashPage(), binding: SplashBindings()),
  ];
}
