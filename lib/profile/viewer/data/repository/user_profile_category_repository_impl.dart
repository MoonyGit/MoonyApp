import 'package:moony_app/profile/viewer/data/model/user_profile_category_data_model.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_category_datasource_impl.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_category_repository.dart';

/// User profile category repository implementation
class UserProfileCategoryRepositoryImpl extends UserProfileCategoryRepository {
  /// Constructor
  UserProfileCategoryRepositoryImpl(this._userProfileCategoryDataSource);

  /// User profile category data source
  final UserProfileCategoryDataSource _userProfileCategoryDataSource;

  @override
  Future<List<UserProfileCategoryEntity>> getCategory() async =>
      _userProfileCategoryDataSource.getCategory().then(
            (List<UserProfileCategoryDataModel> list) => list
            .map(
              (UserProfileCategoryDataModel e) => UserProfileCategoryEntity(
            id: e.id,
            title: e.title,
            icon: e.icon,
          ),
        )
            .toList(),
      );
}
