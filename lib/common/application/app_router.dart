import 'package:get/get.dart';
import 'package:moony_app/activity_swipe/resources/router.dart' as swipe_router;
import 'package:moony_app/authentication/resources/router.dart' as auth_router;
import 'package:moony_app/registration/resources/router.dart' as registration_router;
import 'package:moony_app/settings/resources/router.dart' as settings_router;
import 'package:moony_app/startup/resources/router.dart' as startup_router;

/// Navigation class will provide all the routes of the application
abstract class Navigation {
  /// The initial route
  static const String initial = startup_router.Router.splash;

  /// The list of routes
  static final List<GetPage<dynamic>> routes = startup_router.Router.routes +
      auth_router.Router.routes +
      registration_router.Router.routes +
      settings_router.Router.routes +
      swipe_router.Router.routes;
}
