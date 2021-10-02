import 'package:get/get.dart';
import 'package:moony_app/features/registration/api/api.dart';
import 'package:moony_app/features/registration/internal/usecase/registration_use_case.dart';

/// Load user dependencies
void loadModule() {
  Get.lazyPut<RegistrationUseCase>(() => RegistrationUseCase(Get.find()),
      fenix: true);
  Get.lazyPut<RegistrationApi>(() => RegistrationApi(Get.find()), fenix: true);
}
