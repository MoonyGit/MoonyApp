import 'package:moony_app/profile/viewer/data/source/local/user_profile_category_datasource_impl.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_enum_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_category_repository.dart';

/// User profile category repository implementation
class UserProfileCategoryRepositoryImpl extends UserProfileCategoryRepository {
  /// Constructor
  UserProfileCategoryRepositoryImpl(this._dataSource);

  /// User profile category data source
  final UserProfileCategoryDataSource _dataSource;

  @override
  Future<List<UserProfileCategoryEnumEntity>> getCategory() async =>
      _dataSource.getCategory().then(
            (List<String> categories) => categories
            .map(
              (String name) =>
              UserProfileCategoryEnumEntity.values.firstWhere(
                    (UserProfileCategoryEnumEntity item) =>
                item.name == name,
              ),
        )
            .toList(),
      );
}
