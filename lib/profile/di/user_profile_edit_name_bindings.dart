import 'package:get/get.dart';
import 'package:moony_app/profile/edit/domain/usecase/user_profile_edit_information_usecase.dart';
import 'package:moony_app/profile/edit/presentation/controller/user_profile_edit_name_controller.dart';

/// User profile bindings for DI
class UserProfileEditNameBindings extends Bindings {
  @override
  void dependencies() {
    /// Controller
    Get.lazyPut(
          () => UserProfileEditNameController(
        Get.find<UserProfileEditInformationUseCase>(),
      ),
    );
  }
}
