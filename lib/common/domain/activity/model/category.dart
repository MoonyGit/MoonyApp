import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
/// Activity category
class ActivityCategory with _$ActivityCategory {
  /// Sport category
  const factory ActivityCategory.sport() = CategorySport;

  /// Cultural category
  const factory ActivityCategory.cultural() = CategoryCultural;

  /// Spare time category
  const factory ActivityCategory.spareTime() = CategorySpareTime;

  /// Trip category
  const factory ActivityCategory.trip() = CategoryTrip;

  /// Food category
  const factory ActivityCategory.food() = CategoryFood;

  /// list of values
  static Set<ActivityCategory> values = {
    const CategorySport(),
    const CategoryCultural(),
    const CategorySpareTime(),
    const CategoryTrip(),
    const CategoryFood(),
  };
}

/// Base class Activity type
abstract class ActivityType {
  /// list of values
  static Set<ActivityType> values = {
    ...ActivitySport.values,
    ...ActivityCultural.values,
    ...ActivityTrip.values,
    ...ActivitySpareTime.values,
    ...ActivityFood.values,
  };
  /// category
  ActivityCategory get category;
}

@freezed
/// Activities of category sport
class ActivitySport with _$ActivitySport implements ActivityType {
  const ActivitySport._();
  /// list of values
  static Set<ActivitySport> values = {
    const ActivitySportAquatic(),
    const ActivitySportRacket(),
    const ActivitySportBall(),
    const ActivitySportFitness(),
    const ActivitySportWinter(),
    const ActivitySportAthletic(),
    const ActivitySportMartial(),
    const ActivitySportCyclist(),
    const ActivitySportNature(),
  };

  @override
  final ActivityCategory category = const CategorySport();
  /// aquatic
  const factory ActivitySport.aquatic() = ActivitySportAquatic;
  /// racket
  const factory ActivitySport.racket() = ActivitySportRacket;
  /// ball
  const factory ActivitySport.ball() = ActivitySportBall;
  /// gym
  const factory ActivitySport.fitness() = ActivitySportFitness;
  /// winter
  const factory ActivitySport.winter() = ActivitySportWinter;
  /// athletic
  const factory ActivitySport.athletic() = ActivitySportAthletic;
  /// martial
  const factory ActivitySport.martial() = ActivitySportMartial;
  /// cyclist
  const factory ActivitySport.cyclist() = ActivitySportCyclist;
  /// nature
  const factory ActivitySport.nature() = ActivitySportNature;
  /// other
  const factory ActivitySport.other() = ActivitySportOther;
}

@freezed
/// Activities of category cultural
class ActivityCultural with _$ActivityCultural implements ActivityType {
  const ActivityCultural._();
  /// list of values
  static Set<ActivityCultural> values = {
    const ActivityCulturalCinema(),
    const ActivityCulturalTheatre(),
    const ActivityCulturalCircus(),
    const ActivityCulturalMuseum(),
    const ActivityCulturalMonument(),
    const ActivityCulturalOther(),
  };
  @override
  final ActivityCategory category = const CategoryCultural();
  /// cinema
  const factory ActivityCultural.cinema() = ActivityCulturalCinema;
  /// theatre
  const factory ActivityCultural.theatre() = ActivityCulturalTheatre;
  /// circus
  const factory ActivityCultural.circus() = ActivityCulturalCircus;
  /// Museum
  const factory ActivityCultural.museum() = ActivityCulturalMuseum;
  /// Monument
  const factory ActivityCultural.monument() = ActivityCulturalMonument;
  /// other
  const factory ActivityCultural.other() = ActivityCulturalOther;
}

@freezed
/// Activities of category trip
class ActivityTrip with _$ActivityTrip implements ActivityType {
  const ActivityTrip._();
  /// list of values
  static Set<ActivityTrip> values = {
    const ActivityTripChill(),
    const ActivityTripExploration(),
    const ActivityTripSpiritual(),
    const ActivityTripInfluencing(),
    const ActivityTripOther(),
  };
  @override
  final ActivityCategory category = const CategoryTrip();
  /// vacation
  const factory ActivityTrip.chill() = ActivityTripChill;
  /// exploration
  const factory ActivityTrip.exploration() = ActivityTripExploration;
  /// spiritual
  const factory ActivityTrip.spiritual() = ActivityTripSpiritual;
  /// influencing
  const factory ActivityTrip.influencing() = ActivityTripInfluencing;
  /// other
  const factory ActivityTrip.other() = ActivityTripOther;
}

@freezed
/// Activities of category  spare time
class ActivitySpareTime with _$ActivitySpareTime implements ActivityType {
  const ActivitySpareTime._();
  /// list of values
  static Set<ActivitySpareTime> values = {
    const ActivitySpareTimeGame(),
    const ActivitySpareTimeParty(),
    const ActivitySpareTimeMusical(),
    const ActivitySpareTimeCooking(),
    const ActivitySpareTimeWalk(),
    const ActivitySpareTimeOther(),
  };
  @override
  final ActivityCategory category = const CategorySpareTime();
  /// game
  const factory ActivitySpareTime.game() = ActivitySpareTimeGame;
  /// party
  const factory ActivitySpareTime.party() = ActivitySpareTimeParty;
  /// musical
  const factory ActivitySpareTime.musical() = ActivitySpareTimeMusical;
  /// cooking
  const factory ActivitySpareTime.cooking() = ActivitySpareTimeCooking;
  /// walk
  const factory ActivitySpareTime.walk() = ActivitySpareTimeWalk;
  /// other
  const factory ActivitySpareTime.other() = ActivitySpareTimeOther;
}

@freezed
/// Activities of category food
class ActivityFood with _$ActivityFood implements ActivityType {
  const ActivityFood._();
  /// list of values
  static Set<ActivityFood> values = {
    const ActivityFoodTasting(),
    const ActivityFoodDinner(),
    const ActivityFoodBrunch(),
    const ActivityFoodDrink(),
    const ActivityFoodOther(),
  };
  @override
  final ActivityCategory category = const CategoryFood();
  /// degustation
  const factory ActivityFood.tasting() = ActivityFoodTasting;
  /// dinner
  const factory ActivityFood.dinner() = ActivityFoodDinner;
  /// brunch
  const factory ActivityFood.brunch() = ActivityFoodBrunch;
  /// drink
  const factory ActivityFood.drink() = ActivityFoodDrink;
  /// other
  const factory ActivityFood.other() = ActivityFoodOther;
}

/// Rules
extension ActivityCategoryRules on ActivityCategory {
  /// get activities list
  Set<ActivityType> getActivities() =>
      when(
          sport: () => ActivitySport.values,
          cultural: () => ActivityCultural.values,
          spareTime: () => ActivitySpareTime.values,
          trip: () => ActivityTrip.values,
          food: () => ActivityFood.values,
      );

  /// get expiration delay
  Duration getDateExpirationDelay() =>
      when(
        sport: () => const Duration(days: 15),
        cultural: () => const Duration(days: 300),
        spareTime: () => const Duration(days: 15),
        trip: () => const Duration(days: 365),
        food: () => const Duration(days: 15),
      );

  /// get max participant number
  int getMaxParticipantNumber() =>
      when(
        sport: () => 14,
        cultural: () => 20,
        spareTime: () => 20,
        trip: () => 10,
        food: () => 8,
      );
}