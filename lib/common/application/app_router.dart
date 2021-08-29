import 'package:get/get.dart';
import 'package:moony_app/features/activity/router/router.dart'
    as activity_router;
import 'package:moony_app/features/authentication/router/router.dart'
    as auth_router;
import 'package:moony_app/features/startup/router.dart' as startup_router;

/// Navigation class will provide all the routes of the application
class Navigation {
  /// The initial route
  static const String initial = startup_router.Router.splash;

  /// The list of routes
  static final List<GetPage<dynamic>> routes = startup_router.Router.routes +
      auth_router.Router.routes +
      activity_router.Router.routes;
}
