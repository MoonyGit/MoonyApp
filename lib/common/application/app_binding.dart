import 'package:get/get.dart';
import 'package:moony_app/common/services/connectivity/connectivity.dart';
import 'package:moony_app/common/services/connectivity/connectivity_service.dart';
import 'package:moony_app/common/services/local_storage/local_storage.dart';
import 'package:moony_app/common/services/local_storage/local_storage_service.dart';
import 'package:moony_app/features/authentication/api/api.dart';
import 'package:moony_app/features/authentication/internal/usecase/get_auth_state.dart';

/// Application global dependencies
class AppBinding extends Bindings {

  @override
  void dependencies() {
    // Global
    Get.lazyPut<IConnectivity>(() => ConnectivityService(), fenix: true);
    Get.lazyPut<ILocalStorage>(() => LocalStorageService(), fenix: true);

    Get.lazyPut<GetAuthStateUseCase>(() => GetAuthStateUseCase(Get.find()),
        fenix: true);

    Get.lazyPut<AuthenticationApi>(() => AuthenticationApi(Get.find()),
        fenix: true);
  }
}
