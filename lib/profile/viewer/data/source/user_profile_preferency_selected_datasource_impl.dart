import 'package:moony_app/profile/viewer/data/model/user_profile_selected_preference_data_model.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_preferency_datasource_impl.dart';

/// Interface for provide the data source of all user preferences for a category
abstract class UserProfileSelectedPreferenceDataSource {
  /// Return list of all preference for a given category
  Future<List<UserProfileSelectedPreferenceDataModel>> getPreferences(
      String categoryId,
      );
}

/// Provide the data source for all user preferences for a category
class UserProfilePreferenceSelectedDataSourceImpl
    extends UserProfileSelectedPreferenceDataSource {
  @override
  Future<List<UserProfileSelectedPreferenceDataModel>> getPreferences(
      String categoryId) {
    final List<UserProfileSelectedPreferenceDataModel> res =
    List<UserProfileSelectedPreferenceDataModel>.empty(growable: true);

    res.add(UserProfileSelectedPreferenceDataModel(id: Relation.Taken.name));
    
    return Future<List<UserProfileSelectedPreferenceDataModel>>.value(res);
  }
}
