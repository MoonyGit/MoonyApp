import 'package:get/get.dart';
import 'package:moony_app/activity_creation/resources/router.dart' as activity_router;
import 'package:moony_app/activity_swipe/resources/router.dart' as swipe_router;
import 'package:moony_app/authentication/resources/router.dart' as auth_router;
import 'package:moony_app/chat/resources/router.dart' as chat_router;
import 'package:moony_app/home/resources/router.dart' as home_router;
import 'package:moony_app/main/resources/router.dart' as main_router;
import 'package:moony_app/profile/resources/router.dart' as profile_router;
import 'package:moony_app/registration/resources/router.dart' as registration_router;
import 'package:moony_app/settings/resources/router.dart' as settings_router;
import 'package:moony_app/startup/resources/router.dart' as startup_router;



/// Navigation class will provide all the routes of the application
abstract class Navigation {
  /// The initial route
  static const String initial = main_router.Router.mainPage;

  /// The list of routes
  static final List<GetPage<dynamic>> routes =
      home_router.Router.routes +
      main_router.Router.routes +
      startup_router.Router.routes +
      auth_router.Router.routes +
      activity_router.Router.routes +
      chat_router.Router.routes +
      profile_router.Router.routes +
      registration_router.Router.routes +
      settings_router.Router.routes +
      swipe_router.Router.routes;
}
