import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';

part 'activity_type.freezed.dart';

part 'activity_type.g.dart';

@freezed
/// ActivityType data object
class ActivityTypeData with _$ActivityTypeData {
  /// aquatic
  const factory ActivityTypeData.aquatic() = ActivityTypeDataAquatic;

  /// racket
  const factory ActivityTypeData.racket() = ActivityTypeDataRacket;

  /// ball
  const factory ActivityTypeData.ball() = ActivityTypeDataBall;

  /// gym
  const factory ActivityTypeData.fitness() = ActivityTypeDataFitness;

  /// winter
  const factory ActivityTypeData.winter() = ActivityTypeDataWinter;

  /// athletic
  const factory ActivityTypeData.athletic() = ActivityTypeDataAthletic;

  /// martial
  const factory ActivityTypeData.martial() = ActivityTypeDataMartial;

  /// cyclist
  const factory ActivityTypeData.cyclist() = ActivityTypeDataCyclist;

  /// nature
  const factory ActivityTypeData.nature() = ActivityTypeDataNature;

  /// other
  const factory ActivityTypeData.otherSport() = ActivityTypeDataOtherSport;

  /// cinema
  const factory ActivityTypeData.cinema() = ActivityTypeDataCinema;

  /// theatre
  const factory ActivityTypeData.theatre() = ActivityTypeDataTheatre;

  /// circus
  const factory ActivityTypeData.circus() = ActivityTypeDataCircus;

  /// Museum
  const factory ActivityTypeData.museum() = ActivityTypeDataMuseum;

  /// Monument
  const factory ActivityTypeData.monument() = ActivityTypeDataMonument;

  /// other
  const factory ActivityTypeData.otherCulture() = ActivityTypeDataOtherCulture;

  /// vacation
  const factory ActivityTypeData.chill() = ActivityTypeDataChill;

  /// exploration
  const factory ActivityTypeData.exploration() = ActivityTypeDataExploration;

  /// spiritual
  const factory ActivityTypeData.spiritual() = ActivityTypeDataSpiritual;

  /// influencing
  const factory ActivityTypeData.influencing() = ActivityTypeDataInfluencing;

  /// other
  const factory ActivityTypeData.otherTrip() = ActivityTypeDataOtherTrip;

  /// game
  const factory ActivityTypeData.game() = ActivityTypeDataGame;

  /// party
  const factory ActivityTypeData.party() = ActivityTypeDataParty;

  /// musical
  const factory ActivityTypeData.musical() = ActivityTypeDataMusic;

  /// cooking
  const factory ActivityTypeData.cooking() = ActivityTypeDataCooking;

  /// walk
  const factory ActivityTypeData.walk() = ActivityTypeDataWalk;

  /// other
  const factory ActivityTypeData.otherSpareTime() =
      ActivityTypeDataOtherSpareTime;

  /// degustation
  const factory ActivityTypeData.tasting() = ActivityTypeDataTasting;

  /// dinner
  const factory ActivityTypeData.dinner() = ActivityTypeDataDinner;

  /// brunch
  const factory ActivityTypeData.brunch() = ActivityTypeDataBrunch;

  /// drink
  const factory ActivityTypeData.drink() = ActivityTypeDataDrink;

  /// other
  const factory ActivityTypeData.otherFood() = ActivityTypeDataOtherFood;

  /// from json
  factory ActivityTypeData.fromJson(Map<String, dynamic> json) =>
      _$ActivityTypeDataFromJson(json);
}

/// Mapper ext ActivityType => ActivityTypeData
extension ActivityTypeDataMapper on ActivityType {
  /// Mapper method
  ActivityTypeData toData() => category.when(
      sport: () => (this as ActivitySport).when(
          aquatic: () => const ActivityTypeData.aquatic(),
          racket: () => const ActivityTypeData.racket(),
          ball: () => const ActivityTypeData.ball(),
          fitness: () => const ActivityTypeData.fitness(),
          winter: () => const ActivityTypeData.winter(),
          athletic: () => const ActivityTypeData.athletic(),
          martial: () => const ActivityTypeData.martial(),
          cyclist: () => const ActivityTypeData.cyclist(),
          nature: () => const ActivityTypeData.nature(),
          other: () => const ActivityTypeData.otherSport(),
      ),
      cultural: () => (this as ActivityCultural).when(
          cinema: () => const ActivityTypeData.cinema(),
          theatre: () => const ActivityTypeData.theatre(),
          circus: () => const ActivityTypeData.circus(),
          museum: () => const ActivityTypeData.museum(),
          monument: () => const ActivityTypeData.monument(),
          other: () => const ActivityTypeData.otherCulture(),
      ),
      spareTime: () => (this as ActivitySpareTime).when(
          game: () => const ActivityTypeData.game(),
          party: () => const ActivityTypeData.party(),
          musical: () => const ActivityTypeData.musical(),
          cooking: () => const ActivityTypeData.cooking(),
          walk: () => const ActivityTypeData.walk(),
          other: () => const ActivityTypeData.otherSpareTime(),
      ),
      trip: () => (this as ActivityTrip).when(
          chill: () => const ActivityTypeData.chill(),
          exploration: () => const ActivityTypeData.exploration(),
          spiritual: () => const ActivityTypeData.spiritual(),
          influencing: () => const ActivityTypeData.influencing(),
          other: () => const ActivityTypeData.otherTrip(),
      ),
      food: () => (this as ActivityFood).when(
          tasting: () => const ActivityTypeData.tasting(),
          dinner: () => const ActivityTypeData.dinner(),
          brunch: () => const ActivityTypeData.brunch(),
          drink: () => const ActivityTypeData.drink(),
          other: () => const ActivityTypeData.otherFood(),
      ),
  );
}

/// Mapper ext ActivityTypeData => ActivityType
extension ActivityTypeMapper on ActivityTypeData {
  /// Mapper method
  ActivityType toDomain() => when(
      aquatic: () => const ActivitySportAquatic(),
      racket: () => const ActivitySportRacket(),
      ball: () => const ActivitySportBall(),
      fitness: () => const ActivitySportFitness(),
      winter: () => const ActivitySportWinter(),
      athletic: () => const ActivitySportAthletic(),
      martial: () => const ActivitySportMartial(),
      cyclist: () => const ActivitySportCyclist(),
      nature: () => const ActivitySportNature(),
      otherSport: () => const ActivitySportOther(),
      cinema: () => const ActivityCulturalCinema(),
      theatre: () => const ActivityCulturalTheatre(),
      circus: () => const ActivityCulturalCircus(),
      museum: () => const ActivityCulturalMuseum(),
      monument: () => const ActivityCulturalMonument(),
      otherCulture: () => const ActivityCulturalOther(),
      chill: () => const ActivityTripChill(),
      exploration: () => const ActivityTripExploration(),
      spiritual: () => const ActivityTripSpiritual(),
      influencing: () => const ActivityTripInfluencing(),
      otherTrip: () => const ActivityTripOther(),
      game: () => const ActivitySpareTimeGame(),
      party: () => const ActivitySpareTimeParty(),
      musical: () => const ActivitySpareTimeMusical(),
      cooking: () => const ActivitySpareTimeCooking(),
      walk: () => const ActivitySpareTimeWalk(),
      otherSpareTime: () => const ActivitySpareTimeOther(),
      tasting: () => const ActivityFoodTasting(),
      dinner: () => const ActivityFoodDinner(),
      brunch: () => const ActivityFoodBrunch(),
      drink: () => const ActivityFoodDrink(),
      otherFood: () => const ActivityFoodOther(),
  );
}

/// Mapper ext Set<ActivityTypeData> => Set<ActivityType>
extension ActivityTypeSetMapper on Set<ActivityTypeData> {
  /// Mapper method
  Set<ActivityType> toDomain() =>
      map((ActivityTypeData e) => e.toDomain()).toSet();
}

/// Mapper ext Set<ActivityType> => Set<ActivityTypeData>
extension ActivityTypeDataSetMapper on Set<ActivityType> {
  /// Mapper method
  Set<ActivityTypeData> toData() => map((ActivityType e) => e.toData()).toSet();
}