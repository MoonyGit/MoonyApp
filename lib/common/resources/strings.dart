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

  /// Activity category sport
  static const String categorySport = "Sport";
  /// Activity category cultural
  static const String categoryCultural = "Cultural";
  /// Activity category SpareTime
  static const String categorySpareTime = "Spare Time";
  /// Activity category Trip
  static const String categoryTrip = "Trip";
  /// Activity category Food
  static const String categoryFood = "Food";

  /// Activity type aquatic
  static const String activityAquatic = "Aquatic";
  /// Activity type racket
  static const String activityRacket = "Racket";
  /// Activity type ball
  static const String activityBall = "Ball";
  /// Activity type fitness
  static const String activityFitness = "Fitness";
  /// Activity type winter
  static const String activityWinter = "Winter";
  /// Activity type athletic
  static const String activityAthletic = "Athletic";
  /// Activity type martial
  static const String activityMartial = "Martial";
  /// Activity type cyclist
  static const String activityCyclist = "Cyclist";
  /// Activity type nature
  static const String activityNature = "Nature";
  /// Activity type other sport
  static const String activityOtherSport = "Sports";
  /// Activity type cinema
  static const String activityCinema = "Cinema";
  /// Activity type theatre
  static const String activityTheater = "Theater";
  /// Activity type circus
  static const String activityCircus = "Circus";
  /// Activity type museum
  static const String activityMuseum = "Museum";
  /// Activity type monument
  static const String activityMonument = "Monument";
  /// Activity type other cultural
  static const String activityOtherCultural = "Cultural";
  /// Activity type game
  static const String activityGame = "Game";
  /// Activity type party
  static const String activityParty = "Party";
  /// Activity type musical
  static const String activityMusical = "Musical";
  /// Activity type cooking
  static const String activityCooking = "Cooking";
  /// Activity type walk
  static const String activityWalk = "Walk";
  /// Activity type other spare time
  static const String activityOtherSpareTime = "Other";
  /// Activity type chill
  static const String activityChill = "Chill";
  /// Activity type exploration
  static const String activityExploration = "Exploration";
  /// Activity type spiritual
  static const String activitySpiritual = "Spiritual";
  /// Activity type influencing
  static const String activityInfluencing = "Influencing";
  /// Activity type other trip
  static const String activityOtherTrip = "Trips";
  /// Activity type tasting
  static const String activityTasting = "Tasting";
  /// Activity type dinner
  static const String activityDinner = "Dinner";
  /// Activity type brunch
  static const String activityBrunch = "Brunch";
  /// Activity type drink
  static const String activityDrink = "Drink";
  /// Activity type other food
  static const String activityOtherFood = "Food";

  /// The free present emoji
  static const String freeEmoji = "🎁";

  /// Bottom sheet choice Selfie
  static const String takePhotoFromCamera = 'Selfie';
  /// Bottom sheet choice Gallery
  static const String takePhotoFromGallery = 'Gallery';
  /// Bottom sheet choice Facebook
  static const String takePhotoFromFacebook = 'Facebook';
  /// Bottom sheet choice Instagram
  static const String takePhotoFromInstagram = 'Instagram';

  /// Validate
  static const String validate = 'Validate';
  /// Cancel
  static const String cancel = 'Cancel';
  /// Book a date
  static const String bookDate = 'Booking date';

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
