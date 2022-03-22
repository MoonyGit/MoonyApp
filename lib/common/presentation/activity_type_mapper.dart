import 'package:flutter/material.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/resources/strings.dart';

/// Mapper ext to retrieve presentation info on activity type
extension ActivityTypeMapper on ActivityType {
  /// Get title
  String getTitle() => category.when(
    sport: () => (this as ActivitySport).when(
      aquatic: () => AppStrings.activityAquatic,
      racket: () => AppStrings.activityRacket,
      ball: () => AppStrings.activityBall,
      fitness: () => AppStrings.activityFitness,
      winter: () => AppStrings.activityWinter,
      athletic: () => AppStrings.activityAthletic,
      martial: () => AppStrings.activityMartial,
      cyclist: () => AppStrings.activityCyclist,
      nature: () => AppStrings.activityNature,
      other: () => AppStrings.activityOtherSport,
    ),
    cultural: () => (this as ActivityCultural).when(
      cinema: () => AppStrings.activityCinema,
      theatre: () => AppStrings.activityTheater,
      circus: () => AppStrings.activityCircus,
      museum: () => AppStrings.activityMuseum,
      monument: () => AppStrings.activityMonument,
      other: () => AppStrings.activityOtherCultural,
    ),
    spareTime: () => (this as ActivitySpareTime).when(
      game: () => AppStrings.activityGame,
      party: () => AppStrings.activityParty,
      musical: () => AppStrings.activityMusical,
      cooking: () => AppStrings.activityCooking,
      walk: () => AppStrings.activityWalk,
      other: () => AppStrings.activityOtherSpareTime,
    ),
    trip: () => (this as ActivityTrip).when(
      chill: () => AppStrings.activityChill,
      exploration: () => AppStrings.activityExploration,
      spiritual: () => AppStrings.activitySpiritual,
      influencing: () => AppStrings.activityInfluencing,
      other: () => AppStrings.activityOtherTrip,
    ),
    food: () => (this as ActivityFood).when(
      tasting: () => AppStrings.activityTasting,
      dinner: () => AppStrings.activityDinner,
      brunch: () => AppStrings.activityBrunch,
      drink: () => AppStrings.activityDrink,
      other: () => AppStrings.activityOtherFood,
    ),
  );
}

/// Mapper ext to retrieve presentation info on activity type
extension ActivityCategoryMapper on ActivityCategory {
  /// Get title
  String getTitle() => when(
        sport: () => AppStrings.categorySport,
        cultural: () => AppStrings.categoryCultural,
        spareTime: () => AppStrings.categorySpareTime,
        trip: () => AppStrings.categoryTrip,
        food: () => AppStrings.categoryFood,
      );

  /// Get icon
  IconData getIcon() => when(
        sport: () => Icons.sports,
        cultural: () => Icons.theater_comedy,
        spareTime: () => Icons.videogame_asset,
        trip: () => Icons.airplane_ticket_outlined,
        food: () => Icons.food_bank_outlined,
      );
}
