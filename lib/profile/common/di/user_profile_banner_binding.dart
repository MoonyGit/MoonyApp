import 'package:get/get.dart';
import 'package:moony_app/profile/common/data/repository/user_profile_banner_repository_impl.dart';
import 'package:moony_app/profile/common/data/source/user_profile_banner_data_source.dart';
import 'package:moony_app/profile/common/domain/repository/user_profile_banner_repository.dart';
import 'package:moony_app/profile/common/domain/usecase/get_user_profile_banner_usecase.dart';
import 'package:moony_app/profile/common/presentation/controller/user_profile_banner_controller.dart';

/// Bindings for user profile banner
class UserProfileBannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
          () => UserProfileBannerController(
        Get.find<GetUserProfileBannerUseCase>(),
      ),
    );

    /// UseCase
    Get.lazyPut(() => GetUserProfileBannerUseCase(Get.find()));

    /// Repository
    Get.lazyPut<UserProfileBannerRepository>(
          () => UserProfileBannerRepositoryImpl(Get.find()),
    );

    /// Data source
    Get.lazyPut<UserProfileBannerDataSource>(
          () => UserProfileBannerDataSourceImpl(),
    );
  }
}
