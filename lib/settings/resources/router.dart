import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:moony_app/settings/di/notification/settings_notification_bindings.dart';
import 'package:moony_app/settings/presentation/home/setting_home_controller.dart';
import 'package:moony_app/settings/presentation/home/setting_home_page.dart';
import 'package:moony_app/settings/presentation/invoke/setting_invoke_controller.dart';
import 'package:moony_app/settings/presentation/invoke/setting_invoke_page.dart';
import 'package:moony_app/settings/presentation/location/setting_location_controller.dart';
import 'package:moony_app/settings/presentation/location/setting_location_page.dart';
import 'package:moony_app/settings/presentation/notification/setting_notification_page.dart';
import 'package:moony_app/settings/presentation/payment/setting_payment_controller.dart';
import 'package:moony_app/settings/presentation/payment/setting_payment_page.dart';
import 'package:moony_app/settings/presentation/profile/setting_profile_controller.dart';
import 'package:moony_app/settings/presentation/profile/setting_profile_page.dart';
import 'package:moony_app/settings/presentation/rules/setting_rules_controller.dart';
import 'package:moony_app/settings/presentation/rules/setting_rules_page.dart';
import 'package:moony_app/settings/presentation/security/setting_security_controller.dart';
import 'package:moony_app/settings/presentation/security/setting_security_page.dart';
import 'package:moony_app/settings/presentation/setting_controller.dart';
import 'package:moony_app/settings/presentation/setting_page.dart';

/// Router for setting feature
abstract class Router {
  /// The "setting homepage" route path
  static const String setting = '/setting';

  /// The "who i am" route path
  static const String settingProfile = '$setting/profile';

  /// The Location route path
  static const String settingLocation = '$setting/location';

  /// The Notification route path
  static const String settingNotification = '$setting/notification';

  /// The Security route path
  static const String settingSecurity = '$setting/security';

  /// The Payment route path
  static const String settingPayment = '$setting/payment';

  /// The Rules route path
  static const String settingRules = '$setting/rules';

  /// The "Invoke Froony" route path
  static const String settingInvoke = '$setting/invoke';

  /// The "Froony's Home" route path
  static const String settingHome = '$setting/home';

  /// Router for user setting
  static final List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
        name: setting, page: () => SettingPage(), binding: SettingBindings()),
    GetPage<dynamic>(
        name: settingProfile,
        page: () => SettingProfilePage(),
        binding: SettingProfileBindings()),
    GetPage<dynamic>(
        name: settingLocation,
        page: () => SettingLocationPage(),
        binding: SettingLocationBindings()),
    GetPage<dynamic>(
        name: settingNotification,
        page: () => SettingNotificationPage(),
        binding: SettingNotificationBindings()),
    GetPage<dynamic>(
        name: settingPayment,
        page: () => SettingPaymentPage(),
        binding: SettingPaymentBindings()),
    GetPage<dynamic>(
        name: settingRules,
        page: () => SettingRulesPage(),
        binding: SettingRulesBindings()),
    GetPage<dynamic>(
        name: settingSecurity,
        page: () => SettingSecurityPage(),
        binding: SettingSecurityBindings()),
    GetPage<dynamic>(
        name: settingInvoke,
        page: () => SettingInvokePage(),
        binding: SettingInvokeBindings()),
    GetPage<dynamic>(
        name: settingHome,
        page: () => SettingHomePage(),
        binding: SettingHomeBindings()),
  ];
}
