import 'package:get/get.dart';
import 'package:moony_app/profile/activity/data/repository/user_profile_activity_repository_impl.dart';
import 'package:moony_app/profile/activity/data/source/user_profile_activities_data_source.dart';
import 'package:moony_app/profile/activity/domain/repository/user_profile_activity_repository.dart';
import 'package:moony_app/profile/activity/domain/usecase/get_user_profile_coming_activities_usecase.dart';
import 'package:moony_app/profile/activity/presentation/controller/user_profile_activity_controller.dart';
import 'package:moony_app/profile/common/di/user_profile_banner_binding.dart';

/// User profile activity bindings for DI
class UserProfileActivityBinding extends Bindings {
  @override
  void dependencies() {
    /// Instantiate ban,ner widget
    UserProfileBannerBinding().dependencies();

    /// Controller
    Get.lazyPut(
          () => UserProfileActivityController(
        Get.find<GetUserProfileComingActivitiesUseCase>(),
      ),
    );

    /// UseCase
    Get.lazyPut(() => GetUserProfileComingActivitiesUseCase(Get.find()));

    /// Repository
    Get.lazyPut<UserProfileActivityRepository>(
          () => UserProfileActivityRepositoryImpl(Get.find()),
    );

    /// Data source
    Get.lazyPut<UserProfileActivitiesDataSource>(
          () => UserProfileActivitiesDataSourceImpl(),
    );
  }
}
