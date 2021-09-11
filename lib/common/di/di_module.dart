import 'package:get/get.dart';
import 'package:moony_app/common/infrastructure/remote/connectivity/connectivity.dart';
import 'package:moony_app/common/infrastructure/remote/connectivity/connectivity_service.dart';
import 'package:moony_app/common/infrastructure/services/local_storage/local_storage.dart';
import 'package:moony_app/common/infrastructure/services/local_storage/local_storage_service.dart';

/// Load global dependencies
void loadModule() {
  Get.lazyPut<IConnectivity>(() => ConnectivityService(), fenix: true);
  Get.lazyPut<ILocalStorage>(() => LocalStorageService(), fenix: true);
}
