import 'package:get/get.dart';
import 'package:moony_app/registration/presentation/registration_controller.dart';
import 'package:moony_app/registration/presentation/registration_page.dart';
import 'package:moony_app/registration/presentation/set_email/set_email_backup_controller.dart';
import 'package:moony_app/registration/presentation/set_email/set_email_backup_page.dart';

/// Router for user feature
abstract class Router {
  /// The "setBackupEmail" route path
  static const String setBackupEmail = '/setBackupEmail';

  /// The "register" route path
  static const String setUserInfo = '/setUserInfo';

  /// The list of routes
  static final List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
        name: setUserInfo,
        page: () => RegistrationPage(),
        binding: RegistrationBindings()),
    GetPage<dynamic>(
        name: setBackupEmail,
        page: () => SetEmailBackupPage(),
        binding: SetEmailBackupBindings()),
  ];
}
