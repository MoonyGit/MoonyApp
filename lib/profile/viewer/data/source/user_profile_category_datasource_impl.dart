import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/profile/resources/strings.dart';
import 'package:moony_app/profile/viewer/data/model/user_profile_category_data_model.dart';

/// Interface for provide the data source of all category for user profile
abstract class UserProfileCategoryDataSource {
  /// return list of all category for the user profile
  Future<List<UserProfileCategoryDataModel>> getCategory();
}

/// User profile category data source
class UserProfileCategoryDataSourceImpl extends UserProfileCategoryDataSource {
  @override
  Future<List<UserProfileCategoryDataModel>> getCategory() {
    final List<UserProfileCategoryDataModel> res =
    List<UserProfileCategoryDataModel>.empty(growable: true);

    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategorySex,
        title: userProfileCategorySex.translate(),
        icon: AppAsset.sexIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryGender,
        title: userProfileCategoryGender.translate(),
        icon: AppAsset.genderIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryLanguage,
        title: userProfileCategoryLanguage.translate(),
        icon: AppAsset.languageIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryRelation,
        title: userProfileCategoryRelation.translate(),
        icon: AppAsset.relationStateIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryPassions,
        title: userProfileCategoryPassions.translate(),
        icon: AppAsset.painterIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryTravel,
        title: userProfileCategoryTravel.translate(),
        icon: AppAsset.airplaneIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryJobs,
        title: userProfileCategoryJobs.translate(),
        icon: AppAsset.suitcaseIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryStudies,
        title: userProfileCategoryStudies.translate(),
        icon: AppAsset.graduationHatIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryFoods,
        title: userProfileCategoryFoods.translate(),
        icon: AppAsset.restaurantIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryDietetic,
        title: userProfileCategoryDietetic.translate(),
        icon: AppAsset.dinnerIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryAstrology,
        title: userProfileCategoryAstrology.translate(),
        icon: AppAsset.astroScorpionIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryTobacco,
        title: userProfileCategoryTobacco.translate(),
        icon: AppAsset.smokingIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryAlcohol,
        title: userProfileCategoryAlcohol.translate(),
        icon: AppAsset.wineGlassIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryDrink,
        title: userProfileCategoryDrink.translate(),
        icon: AppAsset.cocktailIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryCommunication,
        title: userProfileCategoryCommunication.translate(),
        icon: AppAsset.chatIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryPets,
        title: userProfileCategoryPets.translate(),
        icon: AppAsset.pawprintIcon,
      ),
    );
    res.add(
      UserProfileCategoryDataModel(
        id: userProfileCategoryKids,
        title: userProfileCategoryKids.translate(),
        icon: AppAsset.babyBottleIcon,
      ),
    );
    return Future<List<UserProfileCategoryDataModel>>.value(res);
  }
}
