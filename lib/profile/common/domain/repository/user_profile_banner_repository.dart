import 'package:moony_app/profile/common/domain/model/user_profile_banner_entity.dart';

/// Repository for user information
abstract class UserProfileBannerRepository {
  /// Get the user activity information
  Future<UserProfileBannerEntity> getUserInformation();
}
