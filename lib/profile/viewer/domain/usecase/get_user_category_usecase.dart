import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_category_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_category_repository.dart';

/// Get user profile category use case
class GetUserCategoryUseCase extends AsyncUseCase<List<UserProfileCategoryEntity>> {
  /// Constructor
  GetUserCategoryUseCase(
      this._userCategoryRepository,
      );

  /// User category
  final UserProfileCategoryRepository _userCategoryRepository;

  @override
  Future<List<UserProfileCategoryEntity>> call({void input}) {
    return _userCategoryRepository.getCategory();
  }
}
