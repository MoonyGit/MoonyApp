import 'package:moony_app/activity_swipe/domain/model/swipe_creator_info.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/domain/model/address.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/civil_status.dart';
import 'package:moony_app/common/domain/user/model/food_category.dart';
import 'package:moony_app/common/domain/user/model/gender.dart';
import 'package:moony_app/common/domain/user/model/language.dart';
import 'package:moony_app/common/domain/user/model/name.dart';
import 'package:moony_app/common/domain/user/model/orientation.dart';
import 'package:moony_app/common/domain/user/model/pet_prefered.dart';
import 'package:moony_app/common/domain/user/model/relation_state.dart';

/// Small user part for swipe
class SwipeCreatorInfoDetail extends SwipeCreatorInfo {
  /// Constructor
  SwipeCreatorInfoDetail({
    required String id,
    required Name name,
    required Birthdate birthdate,
    required bool verified,
    required Address location,
    required List<Uri> imageList,
    required Set<ActivityType> hobbyList,
    required Gender gender,
    this.orientation,
    this.relationState,
    this.languageList,
    this.civilStatus,
    this.foodCategory,
    this.doSmoke,
    this.doDrink,
    this.petPrefered,
  }) : super(
          id: id,
          name: name,
          birthdate: birthdate,
          verified: verified,
          location: location,
          imageList: imageList,
          hobbyList: hobbyList,
          gender: gender,
        );

  /// Orientation of user
  final Orientation? orientation;

  /// Relation state of user
  final RelationState? relationState;

  /// List of languages talked by user
  final List<Language>? languageList;

  /// Civil status of the user (job)
  final CivilStatus? civilStatus;

  /// Food category the user eat
  final FoodCategory? foodCategory;

  /// if user smoke
  final bool? doSmoke;

  /// if user drink alcohol
  final bool? doDrink;

  /// preferred pet of the user
  final PetPrefered? petPrefered;
}
