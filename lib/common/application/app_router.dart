import 'package:get/get.dart';
import 'package:moony_app/features/startup/splash_controller.dart';
import 'package:moony_app/features/startup/splash_page.dart';


/// Navigation class will provide all the routes of the application
class Navigation {

  /// The "home" route path
  static const String home = '/home';
  /// The "splash" route path
  static const String splash = '/splash';
  /// The "login" route path
  static const String login = '/login';
  /// The "connectivity" route path
  static const String connectivity = '/connectivity';

  /// The initial route
  static const String initial = splash;

  /// The list of routes
  static final List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
        name: splash,
        page: () => SplashPage(),
        binding: SplashBindings()
    ),
  ];
}
