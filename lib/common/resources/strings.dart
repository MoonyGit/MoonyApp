import 'package:get/get.dart';

/// This class is used to provide all string constant in a statical way
class AppStrings {

  ///////////////////////////
  ///////// Global /////////
  //////////////////////////

  /// The application name
  static const String appTitle = "Moony Application";

  /// Global next
  static const String goToNext = "Next";

  /// Global continue
  static const String goToContinue = "Continuer";

  /// No matter text
  static const String noMatter = "Peu importe";

  /// Man text
  static const String genderMan = "Homme";

  /// Woman text
  static const String genderWoman = "Femme";

  /// Couple text
  static const String relationshipCouple = "Couple";

  /// Single text
  static const String relationshipSingle = "Célibataire";

  /// Hetero text
  static const String hetero = "Hetero";

  /// Homo text
  static const String homosexual = "Homo";

  /// Method to translate strings
  static String translate({required String message}) {
    return message.tr;
  }

  ///////////////////////////
  ////////// Login //////////
  //////////////////////////

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

  /// Phone number hint
  static const String setPhoneNumberHint =
      "AYO! I am Moony! \nI will send you a SMS with a verification code";

  /// Phone otp hint
  static const String smsOtpHint = "ENVOYE! \n Ton code est \n...";

  ///////////////////////////
  //// Activity Creation ////
  ///////////////////////////

  /// Activity type text on activity creation process
  static const String activityTypeTitle = "Type d'activité";

  /// Multiple selection text on activity creation process
  static const String activityFilterTitle = "FILTRE PARTICIPANTS";

  /// Multiple selection text on activity creation process
  static const String activityFilterSubTitle = "(sélection multiple)";

  /// Travel text on activity creation process
  static const String activityTypeTravel = "Voyage";

  /// Sport text on activity creation process
  static const String activityTypeSport = "Sport";

  /// Food text on activity creation process
  static const String activityTypeFood = "Bar & Food";

  /// Culture text on activity creation process
  static const String activityTypeCulture = "Loisir & Culture";

  /// Participants number text on activity creation process
  static const String activityParticipantNumber = "Nombre d'invités";

  /// 1 Participant text on activity creation process
  static const String activityNumber1 = "1 (Binôme)";

  /// 2 Participants text on activity creation process
  static const String activityNumber2 = "2 (Trio)";

  /// 3 Participants text on activity creation process
  static const String activityNumber3 = "3 (Quatuor)";

  /// Activity creation process: Budget title
  static const String activityBudgetTitle = "Budget";

  /// Activity creation process: Budget= Free
  static const String activityBudgetFree = "Gratuit";

  /// Activity creation process: Budget= Free
  static const String activityBudgetLv1 = "1€ - 20€";

  /// Activity creation process: Budget= Free
  static const String activityBudgetLv2 = "20€ - 50€";

  /// Activity creation process: Budget= Free
  static const String activityBudgetLv3 = "+50€";

}
