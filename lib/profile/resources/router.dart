import 'package:get/get.dart';
import 'package:moony_app/profile/presentation/user_profile_controller.dart';
import 'package:moony_app/profile/presentation/user_profile_page.dart';

/// Router for User Profile feature
abstract class Router {
  /// The "user profile" route path
  static const String profile = '/profile';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: profile,
      page: () => UserProfilePage(),
      binding: UserProfileBinding(),
    ),
  ];
}
