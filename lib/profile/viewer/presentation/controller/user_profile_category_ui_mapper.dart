import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/profile/resources/strings.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_enum_entity.dart';
import 'package:moony_app/profile/viewer/presentation/model/user_profile_ui_item.dart';

/// Mapper over UserProfileCategoryEnumEntity to ui item
extension UserProfileCategoryUiMapper on UserProfileCategoryEnumEntity {
  /// Convert value of enum [UserProfileCategoryEnumEntity] to ui item
  UserProfileUi toUi() {
    switch (this) {
      case UserProfileCategoryEnumEntity.sex:
        return UserProfileItem(
          title: userProfileCategorySex,
          icon: AppAsset.sexIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.gender:
        return UserProfileItem(
          title: userProfileCategoryGender,
          icon: AppAsset.genderIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.language:
        return UserProfileItem(
          title: userProfileCategoryLanguage,
          icon: AppAsset.languageIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.relation:
        return UserProfileItem(
          title: userProfileCategoryRelation,
          icon: AppAsset.relationStateIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.passion:
        return UserProfileItem(
          title: userProfileCategoryPassions,
          icon: AppAsset.painterIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.travel:
        return UserProfileItem(
          title: userProfileCategoryTravel,
          icon: AppAsset.airplaneIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.jobs:
        return UserProfileItem(
          title: userProfileCategoryJobs,
          icon: AppAsset.suitcaseIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.studies:
        return UserProfileItem(
          title: userProfileCategoryStudies,
          icon: AppAsset.graduationHatIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.foods:
        return UserProfileItem(
          title: userProfileCategoryFoods,
          icon: AppAsset.restaurantIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.dietetic:
        return UserProfileItem(
          title: userProfileCategoryDietetic,
          icon: AppAsset.dinnerIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.astrology:
        return UserProfileItem(
          title: userProfileCategoryAstrology,
          icon: AppAsset.astroScorpionIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.tobacco:
        return UserProfileItem(
          title: userProfileCategoryTobacco,
          icon: AppAsset.smokingIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.alcohol:
        return UserProfileItem(
          title: userProfileCategoryAlcohol,
          icon: AppAsset.wineGlassIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.drink:
        return UserProfileItem(
          title: userProfileCategoryDrink,
          icon: AppAsset.cocktailIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.communication:
        return UserProfileItem(
          title: userProfileCategoryCommunication,
          icon: AppAsset.chatIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.pets:
        return UserProfileItem(
          title: userProfileCategoryPets,
          icon: AppAsset.pawprintIcon,
          id: name.capitalize(),
        );
      case UserProfileCategoryEnumEntity.kids:
        return UserProfileItem(
          title: userProfileCategoryKids,
          icon: AppAsset.babyBottleIcon,
          id: name.capitalize(),
        );
    }
  }
}

