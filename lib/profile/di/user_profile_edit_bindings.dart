import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:moony_app/profile/edit/data/repository/user_profile_edit_information_repository_impl.dart';
import 'package:moony_app/profile/edit/data/source/user_profile_edit_information_datasource_impl.dart';
import 'package:moony_app/profile/edit/domain/repository/user_profile_edit_information_repository.dart';
import 'package:moony_app/profile/edit/domain/usecase/user_profile_edit_information_usecase.dart';
import 'package:moony_app/profile/edit/presentation/controller/user_profile_edit_controller.dart';
import 'package:moony_app/profile/edit/presentation/controller/user_profile_edit_name_controller.dart';

/// User profile bindings for DI
class UserProfileEditBindings extends Bindings {
  @override
  void dependencies() {
    /// Controller
    Get.lazyPut(
          () => UserProfileEditController(
        Get.find<UserProfileEditInformationUseCase>(),
      ),
    );

    /// UseCase
    Get.lazyPut(
          () => UserProfileEditInformationUseCase(
        Get.find(),
      ),
    );

    /// Repository
    Get.lazyPut<UserProfileEditInformationRepository>(
          () => UserProfileEditInformationRepositoryImpl(
        Get.find(),
      ),
    );

    /// Data Source
    Get.lazyPut<UserProfileEditInformationDataSource>(
          () => UserProfileEditInformationDataSourceImpl(),
    );
  }
}
