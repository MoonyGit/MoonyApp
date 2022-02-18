import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:moony_app/profile/viewer/data/repository/user_profile_category_repository_impl.dart';
import 'package:moony_app/profile/viewer/data/repository/user_profile_information_repository_impl.dart';
import 'package:moony_app/profile/viewer/data/repository/user_profile_raw_preference_repository_impl.dart';
import 'package:moony_app/profile/viewer/data/repository/user_profile_selected_preference_repository_impl.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_category_datasource_impl.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_information_datasource_impl.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_preferency_datasource_impl.dart';
import 'package:moony_app/profile/viewer/data/source/user_profile_preferency_selected_datasource_impl.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_category_repository.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_information_repository.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_raw_preference_repository.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_selected_preference_repository.dart';
import 'package:moony_app/profile/viewer/domain/usecase/get_user_category_usecase.dart';
import 'package:moony_app/profile/viewer/domain/usecase/get_user_preferencies_usecase.dart';
import 'package:moony_app/profile/viewer/domain/usecase/get_user_profile_information_usecase.dart';
import 'package:moony_app/profile/viewer/presentation/controller/user_profile_controller.dart';

/// User profile bindings for DI
class UserProfileBindings extends Bindings {
  @override
  void dependencies() {
    /// Controller
    Get.lazyPut(
          () => UserProfileController(
        Get.find<GetUserProfileInformationUseCase>(),
        Get.find<GetUserPreferencesUseCase>(),
        Get.find<GetUserCategoryUseCase>(),
      ),
    );

    /// UseCase
    Get.lazyPut(() => GetUserProfileInformationUseCase(Get.find()));
    Get.lazyPut(() => GetUserPreferencesUseCase(Get.find(), Get.find()));
    Get.lazyPut(() => GetUserCategoryUseCase(Get.find()));

    /// Repository
    Get.lazyPut<UserProfileRawPreferenceRepository>(
          () => UserProfileRawPreferenceRepositoryImpl(Get.find()),
    );
    Get.lazyPut<UserProfileSelectedPreferenceRepository>(
          () => UserProfileSelectedPreferenceRepositoryImpl(Get.find()),
    );
    Get.lazyPut<UserProfileCategoryRepository>(
          () => UserProfileCategoryRepositoryImpl(Get.find()),
    );
    Get.lazyPut<UserProfileInformationRepository>(
          () => UserProfileInformationRepositoryImpl(Get.find()),
    );

    /// Data source
    Get.lazyPut<UserProfileRawPreferenceDataSource>(
          () => UserProfilePreferenceDataSourceImpl(),
    );
    Get.lazyPut<UserProfileSelectedPreferenceDataSource>(
          () => UserProfilePreferenceSelectedDataSourceImpl(),
    );
    Get.lazyPut<UserProfileCategoryDataSource>(
          () => UserProfileCategoryDataSourceImpl(),
    );
    Get.lazyPut<UserProfileInformationDataSource>(
          () => UserProfileInformationDataSourceImpl(),
    );
  }
}
