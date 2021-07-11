import 'package:get/get.dart';
import 'package:moony_app/features/authentication/internal/presentation/login_controller.dart';
import 'package:moony_app/features/authentication/internal/presentation/login_page.dart';
import 'package:moony_app/features/authentication/internal/presentation/phone/set_phone_controller.dart';
import 'package:moony_app/features/authentication/internal/presentation/phone/set_phone_page.dart';
import 'package:moony_app/features/authentication/internal/presentation/phone/sms_otp_controller.dart';
import 'package:moony_app/features/authentication/internal/presentation/phone/sms_otp_page.dart';
import 'package:moony_app/features/startup/splash_controller.dart';
import 'package:moony_app/features/startup/splash_page.dart';


/// Navigation class will provide all the routes of the application
class Navigation {

  /// The "home" route path
  static const String home = '/home';
  /// The "splash" route path
  static const String splash = '/splash';
  /// The "login" route path
  static const String login = '/login';
  /// The "facebook login" route path
  static const String loginFacebook = '$login/facebook';
  /// The "gmail login" route path
  static const String loginGmail = '$login/gmail';
  /// The "sms login" route path
  static const String loginPhone = '$login/phone';
  /// The "sms login otp" route path
  static const String loginPhoneOtp = '$loginPhone/smsOtp';
  /// The "connectivity" route path
  static const String connectivity = '/connectivity';

  /// The initial route
  static const String initial = splash;

  /// The list of routes
  static final List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
        name: splash,
        page: () => SplashPage(),
        binding: SplashBindings()
    ),
    GetPage<dynamic>(
        name: home,
        page: () => LoginPage(),
        binding: LoginBindings()
    ),
    GetPage<dynamic>(
      name: login,
      page: () => LoginPage(),
        binding: LoginBindings()
    ),
    GetPage<dynamic>(
        name: loginPhone,
        page: () => SetPhonePage(),
        binding: SetPhoneBindings()
    ),
    GetPage<dynamic>(
        name: loginPhoneOtp,
        page: () => SmsOtpPage(),
        binding: SmsOtpBindings()
    ),
  ];
}
