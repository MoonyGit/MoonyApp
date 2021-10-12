import 'package:get/get.dart';
import 'package:moony_app/authentication/presentation/login_controller.dart';
import 'package:moony_app/authentication/presentation/login_page.dart';
import 'package:moony_app/authentication/presentation/phone/set_phone_controller.dart';
import 'package:moony_app/authentication/presentation/phone/set_phone_page.dart';
import 'package:moony_app/authentication/presentation/phone/sms_otp_controller.dart';
import 'package:moony_app/authentication/presentation/phone/sms_otp_page.dart';

/// Router for auth feature
abstract class Router {
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

  /// The list of routes
  static final List<GetPage<dynamic>> routes = [
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
