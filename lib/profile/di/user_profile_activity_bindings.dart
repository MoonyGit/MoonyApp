import 'package:get/get.dart';
import 'package:moony_app/profile/activity/data/repository/user_profile_activity_information_repository_impl.dart';
import 'package:moony_app/profile/activity/data/repository/user_profile_activity_repository_impl.dart';
import 'package:moony_app/profile/activity/data/source/user_profile_activities_data_source.dart';
import 'package:moony_app/profile/activity/data/source/user_profile_activity_information_data_source.dart';
import 'package:moony_app/profile/activity/domain/repository/user_profile_activity_information_repository.dart';
import 'package:moony_app/profile/activity/domain/repository/user_profile_activity_repository.dart';
import 'package:moony_app/profile/activity/domain/usecase/get_user_profile_activity_information_usecase.dart';
import 'package:moony_app/profile/activity/domain/usecase/get_user_profile_coming_activities_usecase.dart';
import 'package:moony_app/profile/activity/presentation/controller/user_profile_activity_controller.dart';

/// User profile activity bindings for DI
class UserProfileActivityBinding extends Bindings {
  @override
  void dependencies() {
    /// Controller
    Get.lazyPut(
          () => UserProfileActivityController(
        Get.find<GetUserProfileActivityInformationUseCase>(),
        Get.find<GetUserProfileComingActivitiesUseCase>(),
      ),
    );

    /// UseCase
    Get.lazyPut(() => GetUserProfileActivityInformationUseCase(Get.find()));
    Get.lazyPut(() => GetUserProfileComingActivitiesUseCase(Get.find()));

    /// Repository
    Get.lazyPut<UserProfileActivityInformationRepository>(
          () => UserProfileActivityInformationRepositoryImpl(Get.find()),
    );
    Get.lazyPut<UserProfileActivityRepository>(
          () => UserProfileActivityRepositoryImpl(Get.find()),
    );

    /// Data source
    Get.lazyPut<UserProfileActivityInformationDataSource>(
          () => UserProfileActivityInformationDataSourceImpl(),
    );
    Get.lazyPut<UserProfileActivitiesDataSource>(
          () => UserProfileActivitiesDataSourceImpl(),
    );
  }
}
