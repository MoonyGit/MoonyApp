import 'package:get/get.dart';
import 'package:moony_app/infrastructure/services/connectivity/connectivity.dart';
import 'package:moony_app/infrastructure/services/connectivity/connectivity_service.dart';
import 'package:moony_app/infrastructure/services/local_storage/local_storage.dart';
import 'package:moony_app/infrastructure/services/local_storage/local_storage_service.dart';

/// Application global dependencies
class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<IConnectivity>(ConnectivityService());
    Get.put<ILocalStorage>(LocalStorageService());
  }
}