import 'package:get/get.dart';
import 'package:moony_app/activity_swipe/presentation/detail/swipe_detail_controller.dart';
import 'package:moony_app/activity_swipe/presentation/detail/swipe_detail_page.dart';
import 'package:moony_app/activity_swipe/presentation/list/swipe_controller.dart';
import 'package:moony_app/activity_swipe/presentation/list/swipe_page.dart';

/// Router for activity feature
abstract class Router {
  /// The "swipe" route path
  static const String swipe = '/swipe';
  static const String _swipeDetail = '$swipe/:$swipeDetailParameterName';
  /// Swipe detail route parameter name
  static const String swipeDetailParameterName = 'activityId';
  /// Template for swipe detail page with id
  static const String swipeDetailTemplate = '$swipe/%1\$';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: swipe,
      binding: SwipeBinding(),
      page: () => SwipePage(),
    ),
    GetPage<dynamic>(
      name: _swipeDetail,
      binding: SwipeDetailBinding(),
      page: () => SwipeDetailPage(),
    ),
  ];
}
