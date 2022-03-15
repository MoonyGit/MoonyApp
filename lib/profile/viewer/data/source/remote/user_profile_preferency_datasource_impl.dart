import 'package:moony_app/profile/resources/strings.dart';
import 'package:moony_app/profile/viewer/data/model/user_profile_detail_preference_data_model.dart';
import 'package:moony_app/profile/viewer/data/model/user_profile_raw_preference_data_model.dart';

/// Interface for provide the data source of all preferences for a category
abstract class UserProfileRawPreferenceDataSource {
  /// Return list of all preference for a given category
  Future<UserProfileDetailPreferenceDataModel> getProfilePreferences(
      String categoryId);
}

/// Provide the data source for all preferences for a category
class UserProfilePreferenceDataSourceImpl
    extends UserProfileRawPreferenceDataSource {
  @override
  Future<UserProfileDetailPreferenceDataModel> getProfilePreferences(
      String categoryId,
      ) {
    String message = "";
    final List<UserProfileRawPreferenceDataModel> res =
    List<UserProfileRawPreferenceDataModel>.empty(growable: true);

    // Only in case mocked
    switch (categoryId) {
      case userProfileCategoryTravel:
        {
          res.add(
            UserProfileRawPreferenceDataModel(
              title: "Le fétard(e)",
              id: "12",
            ),
          );
          res.add(
            UserProfileRawPreferenceDataModel(title: "l'esthete", id: "10"),
          );
          res.add(
            UserProfileRawPreferenceDataModel(
              title: "le lezard cocktail",
              id: "14",
            ),
          );
          res.add(
            UserProfileRawPreferenceDataModel(
              title: "Le bohémien.ne",
              id: "20",
            ),
          );
          res.add(
            UserProfileRawPreferenceDataModel(
              title: "L'influenceu.r.se",
              id: "18",
            ),
          );
          res.add(
            UserProfileRawPreferenceDataModel(
              title: "Le spirituel.le",
              id: "11",
            ),
          );
          res.add(
            UserProfileRawPreferenceDataModel(
              title: "Le spirituezl.le",
              id: "1244",
            ),
          );
          res.add(
            UserProfileRawPreferenceDataModel(
              title: "Le spirituael.le",
              id: "134444",
            ),
          );

          message =
          "Dans un voyage le plus important c'est les Froonys, pas la destination.";
          break;
        }
      case userProfileCategoryJobs:
        {
          res.add(UserProfileRawPreferenceDataModel(title: "coucou", id: "1"));
          res.add(UserProfileRawPreferenceDataModel(title: "repas", id: "2"));
          res.add(UserProfileRawPreferenceDataModel(title: "hello", id: "3"));
          message = "Je traverse la rue pour un job";
        }
        break;
      case userProfileCategorySex:
        {
          for (final Relation element in Relation.values) {
            res.add(
              UserProfileRawPreferenceDataModel(
                title: element.name,
                id: element.name,
              ),
            );
          }
          message = "Peu importe la relation";
        }
        break;
      case userProfileCategoryGender:
        {
          for (final Gender element in Gender.values) {
            res.add(
              UserProfileRawPreferenceDataModel(
                title: element.name,
                id: element.name,
              ),
            );
          }
          message = "LGBTQQIAAP+";
          break;
        }
      default:
        {
          res.add(UserProfileRawPreferenceDataModel(title: "Bye", id: "4"));
          message = "Lorem ipsum";
        }
        break;
    }
    return Future<UserProfileDetailPreferenceDataModel>.value(
      UserProfileDetailPreferenceDataModel(res, message),
    );
  }
}

// TODO how to handle value
enum Relation {
  Single,
  Taken,
  Geek,
}

enum Gender {
  Man,
  Female,
  NoBinary,
}

enum Travel {
  Chill,
}