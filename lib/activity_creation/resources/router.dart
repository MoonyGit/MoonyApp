import 'package:get/get.dart';
import 'package:moony_app/activity_creation/presentation/activity_creation_controller.dart';
import 'package:moony_app/activity_creation/presentation/activity_creation_page.dart';
import 'package:moony_app/activity_creation/presentation/activity_description_page.dart';

/// Router for activity_creation feature
abstract class Router {
  /// The "activity creation" route path
  static const String activityCreation = '/activity_creation';
  /// The "activity description" route path
  static const String activityDescription = '/activity_creation';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: activityCreation,
      page: () => ActivityCreationPage(),
      binding: ActivityCreationBinding(),
    ),
    GetPage<dynamic>(
      name: activityDescription,
      page: () => ActivityDescriptionPage(),
      binding: ActivityDescriptionBinding(),
    ),
  ];
}
