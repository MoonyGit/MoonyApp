import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Router for activity feature
abstract class Router {
  /// The "home" route path
  static const String home = '/home';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
      name: home,
      page: () => const Scaffold(),
    ),
  ];
}
