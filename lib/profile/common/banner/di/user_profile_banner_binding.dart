import 'package:get/get.dart';
import 'package:moony_app/common/data/mock/mock_service.dart';
import 'package:moony_app/flavors.dart';
import 'package:moony_app/profile/common/banner/data/repository/user_profile_banner_repository_impl.dart';
import 'package:moony_app/profile/common/banner/data/source/user_profile_banner_data_source.dart';
import 'package:moony_app/profile/common/banner/domain/repository/user_profile_banner_repository.dart';
import 'package:moony_app/profile/common/banner/domain/usecase/get_user_profile_banner_usecase.dart';
import 'package:moony_app/profile/common/banner/presentation/controller/user_profile_banner_controller.dart';

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

    switch (F.appFlavor) {
      case Flavor.MOCK:
        {
          /// Data source
          Get.lazyPut<UserProfileBannerDataSource>(
                () => Get.find<MockService>(),
          );
          break;
        }
      default:
        {
          /// Data UserProfileBannerDataSource
          Get.lazyPut<UserProfileBannerDataSource>(
                () => UserProfileBannerDataSourceImpl(),
          );
        }
    }
  }
}
