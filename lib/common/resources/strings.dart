import 'package:get/get.dart';

/// This class is used to provide all string constant in a statical way
abstract class AppStrings {

  ///////////////////////////
  ///////// Global /////////
  //////////////////////////

  /// The application name
  static const String appTitle = "Moony Application";

  /// Global next
  static const String goToNext = "Next";

  /// Global end
  static const String finish = "Finish";

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

  /// Specific failure for email format
  static const String emailBadFormatMessageFailure =
      "Bad email format: should be abc@xyz.com";

  /// Fab add text
  static const String addFab = "+";

  /// The generic string for failures
  static const String genericFailure = "Something went wrong";
  
  /// Method to translate strings
  @Deprecated("Please use extension on string : Translate")
  static String translate({required String message}) {
    return message.tr;
  }
}

/// extension for translate any string
extension Translation on String {
  /// Translate the string in current locale on mobile
  String translate() => tr;
}
