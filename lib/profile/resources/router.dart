import 'package:get/get.dart';
import 'package:moony_app/profile/activity/di/user_profile_activity_bindings.dart';
import 'package:moony_app/profile/activity/presentation/view/user_profile_activity_page.dart';
import 'package:moony_app/profile/edit/presentation/view/user_profile_edit_page.dart';
import 'package:moony_app/profile/viewer/di/user_profile_edit_bindings.dart';
import 'package:moony_app/profile/viewer/di/user_profile_viewer_bindings.dart';
import 'package:moony_app/profile/viewer/presentation/view/user_profile_viewer_page.dart';

/// Profile router
abstract class Router {
  /// Root profile
  static const String userProfile = '/profile';

  /// Root profile
  static const String userProfileViewer = '$userProfile/viewer';

  /// Edit profile
  static const String userProfileEdit = '$userProfile/edit';

  /// Edit profile naming
  static const String userProfileEditNaming = '$userProfileEdit/naming';

  /// Routes for user profile
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: userProfile,
      binding: UserProfileActivityBinding(),
      page: () => UserProfileActivityPage(),
    ),
    GetPage<dynamic>(
      name: userProfileViewer,
      binding: UserProfileViewerBindings(),
      page: () => UserProfileViewerPage(),
    ),
    GetPage<dynamic>(
      name: userProfileEdit,
      binding: UserProfileEditBindings(),
      page: () => UserProfileEditPage(),
    ),
  ];
}
