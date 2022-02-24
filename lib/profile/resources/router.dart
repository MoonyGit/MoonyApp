import 'package:get/get.dart';
import 'package:moony_app/profile/activity/di/user_profile_activity_bindings.dart';
import 'package:moony_app/profile/activity/presentation/view/user_profile_activity_page.dart';

/// Profile router
abstract class Router {
  /// Root profile
  static const String userProfile = '/profile';

  /// Routes for user profile
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>> [
    GetPage<dynamic>(
      name: userProfile,
      binding: UserProfileActivityBinding(),
      page: () => UserProfileActivityPage(),
    ),
  ];
}
