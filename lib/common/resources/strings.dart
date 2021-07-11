import 'package:get/get.dart';

/// This class is used to provide all string constant in a statical way
class AppStrings {

  /// The application name
  static const String appTitle = "Moony Application";

  /// The generic string for authentication failures
  static const String genericAuthFailure = "Something went wrong";

  /// Specific failure for phone number size
  static const String phoneNumberBadSizeMessageFailure =
      "Phone number format is 10 numbers, please correct your entry";

  /// Specific failure for phone number format
  static const String phoneNumberBadFormatMessageFailure =
      "Phone number format is only numbers, please correct your entry";

  /// Specific failure for phone otp size
  static const String phoneOtpBadSizeMessageFailure =
      "Phone otp format is 6 numbers, please correct your entry";

  /// Specific failure for phone otp format
  static const String phoneOtpBadFormatMessageFailure =
      "Phone otp format is only numbers, please correct your entry";

  /// Specific failure for password size
  static const String passwordBadSizeMessageFailure =
      "Password must be at least 8 characters";

  /// Specific failure for email format
  static const String emailBadFormatMessageFailure =
      "Bad email format: should be abc@xyz.com";

  /// Terms of use on login screen
  static const String termsOfUseLoginScreen =
      "By pressing Became a Froony or Connection, "
      "you accept our terms of use. To learn more about your "
      "personnal data usage, look at our Term of use & data policies.";

  /// Facebook login button text
  static const String loginWithFacebook = "Connection with Facebook";

  /// Google login button text
  static const String loginWithGmail = "Connection with Gmail";

  /// Phone login button text
  static const String loginWithPhone = "Connection with SMS";

  /// Apple login button text
  static const String loginWithApple = "Connection with Apple";

  /// Global next
  static const String goToNext = "Next";

  /// Phone number hint
  static const String setPhoneNumberHint =
      "AYO! I am Moony! \nI will send you a SMS with a verification code";

  /// Phone otp hint
  static const String smsOtpHint = "ENVOYE! \n Ton code est \n...";

  /// Method to translate strings
  static String translate({required String message}) {
    return message.tr;
  }
}
