import 'package:moony_app/activity_swipe/domain/model/swipe_item_detail.dart';
import 'package:moony_app/activity_swipe/resources/strings.dart';
import 'package:moony_app/common/domain/user/model/hobby.dart';
import 'package:moony_app/common/domain/user/model/language.dart';
import 'package:moony_app/common/domain/user/model/zodiac_sign.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/string_dynamic_interpolation.dart';

/// Model ui for swipe card
class SwipeDetailModel {
  /// Constructor
  SwipeDetailModel({required this.activity, required this.user});

  /// activity part
  final ActivitySwipeDetailModel activity;

  /// user part
  final UserSwipeDetailModel user;
}

/// Activity detail ui model
class ActivitySwipeDetailModel {
  /// Constructor
  ActivitySwipeDetailModel(
      {required this.imgUri,
      required this.name,
      required this.categoryImgUri,
      this.targetDate,
      this.location,
      required this.budget,
      required this.participantNumber,
      this.link,
      required this.description});

  /// activity image
  final String imgUri;

  /// activity name
  final String name;

  /// activity category image
  final String categoryImgUri;

  /// activity targeted date
  final DateTime? targetDate;

  /// activity location
  final String? location;

  /// activity budget
  final String? budget;

  /// activity targeted participant number
  final int participantNumber;

  /// activity more info link
  final String? link;

  /// activity description
  final String description;
}

/// User detail model
class UserSwipeDetailModel {
  /// Constructor
  UserSwipeDetailModel(
      {required this.gender,
      this.orientation,
      this.relationState,
      required this.languages,
      required this.hobbies,
      this.job,
      this.foodCategory,
      required this.zodiacSign,
      this.doSmoke,
      this.doDrinkAlcohol,
      this.petPrefered});

  /// user gender
  final String gender;

  /// user orientation
  final String? orientation;

  /// user relation state
  final String? relationState;

  /// user spoken language list
  final List<String>? languages;

  /// user hobby list
  final List<String> hobbies;

  /// user civil status
  final String? job;

  /// user food
  final String? foodCategory;

  /// user zodiac sign (based on user birthday)
  final String zodiacSign;

  /// user smoke
  final bool? doSmoke;

  /// user drink
  final bool? doDrinkAlcohol;

  /// user pet
  final String? petPrefered;
}

/// Mapper extension for Swipe detail
extension SwipeDetailMapper on SwipeItemDetail {
  /// Mapper method
  SwipeDetailModel toUi() => SwipeDetailModel(
      activity: ActivitySwipeDetailModel(
          imgUri:
              activity.image?.toString() ?? creator.imageList.first.toString(),
          name: activity.title.getOrCrash(),
          categoryImgUri: activity.category.image.toString(),
          budget: swipeDetailBudgetTemplate.format(<String>[
            activity.budget.currency,
            "${activity.budget.lowerRange}",
            "${activity.budget.higherRange}"
          ]),
          targetDate: activity.expectedStartingDate?.getOrCrash(),
          link: activity.linkReference?.toString(),
          location: activity.location.city.getOrCrash(),
          participantNumber: activity.participantNumber.getOrCrash(),
          description: activity.desc.getOrCrash()),
      user: UserSwipeDetailModel(
          gender: creator.gender.toString().split(".")[1],
          languages:
              creator.languageList?.map((Language lang) => lang.title).toList(),
          hobbies: creator.hobbyList.map((Hobby hobby) => hobby.title).toList(),
          orientation: creator.orientation?.toString().split(".")[1],
          job: creator.civilStatus?.toString().split(".")[1],
          foodCategory: creator.foodCategory?.toString().split(".")[1],
          doSmoke: creator.doSmoke,
          doDrinkAlcohol: creator.doDrink,
          petPrefered: creator.petPrefered?.toString().split(".")[1],
          zodiacSign:
              ZodiacSignMapper.fromBirthdate(birthdate: creator.birthdate)
                  .getName()));
}
