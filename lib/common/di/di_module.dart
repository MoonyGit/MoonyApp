import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/data/mock/mock_service.dart';
import 'package:moony_app/common/data/services/connectivity/repository/connectivity_repository.dart';
import 'package:moony_app/common/data/services/connectivity/service/connectivity.dart';
import 'package:moony_app/common/data/services/connectivity/service/connectivity_service.dart';
import 'package:moony_app/common/data/services/geolocation/repository/location_repository.dart';
import 'package:moony_app/common/data/services/geolocation/service/location.dart';
import 'package:moony_app/common/data/services/geolocation/service/location_service.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage_service.dart';
import 'package:moony_app/common/data/services/storage/storage_remote_source.dart';
import 'package:moony_app/common/data/services/storage/storage_remote_source_impl.dart';
import 'package:moony_app/common/data/user/local/user_local_source.dart';
import 'package:moony_app/common/data/user/local/user_local_source_impl.dart';
import 'package:moony_app/common/data/user/remote/photo_remote_source.dart';
import 'package:moony_app/common/data/user/remote/photo_remote_source_impl.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source_impl.dart';
import 'package:moony_app/common/data/user/repository/user_repository_impl.dart';
import 'package:moony_app/common/domain/connectivity/repository/connectivity_repository.dart';
import 'package:moony_app/common/domain/connectivity/usecase/connectivity_use_case.dart';
import 'package:moony_app/common/domain/location/repository/location_repository.dart';
import 'package:moony_app/common/domain/location/usecase/location_use_case.dart';
import 'package:moony_app/common/domain/user/repository/user_repositories_facade.dart';
import 'package:moony_app/flavors.dart';

/// Load global dependencies
///
/// theses dependencies here will remain in memory during the whole application
/// lifecycle
/// if possible, prefer add dependencies in page bindings (scoped to page)
/// add only data source dependencies if needed
void loadModule() {
  Get.lazyPut<IConnectivityDataSource>(() => ConnectivityService(),
      fenix: true);
  Get.lazyPut<IConnectivityRepository>(() => ConnectivityRepository(Get.find()),
      fenix: true);
  Get.lazyPut<IsConnectedUseCase>(() => IsConnectedUseCase(Get.find()),
      fenix: true);

  Get.lazyPut<ILocationDataSource>(() => LocationService(), fenix: true);
  Get.lazyPut<ILocationRepository>(() => LocationRepository(Get.find()),
      fenix: true);
  Get.lazyPut<IsLocationActivatedUseCase>(
      () => IsLocationActivatedUseCase(Get.find()),
      fenix: true);

  Get.lazyPut<ILocalStorage>(
      () => LocalStorageService(UserLocalSourceImpl.userCreation),
      fenix: true);

  // User creation
  switch (F.appFlavor) {
    case Flavor.MOCK:
      {
        Get.lazyPut(() => MockService(), fenix: true);
        Get.lazyPut<StorageRemoteSource>(() => Get.find<MockService>(),
            fenix: true);
        Get.lazyPut<UserRemoteSource>(() => Get.find<MockService>(),
            fenix: true);
        break;
      }
    default:
      {
        Get.lazyPut<FirebaseFirestore>(() => FirebaseFirestore.instance,
            fenix: true);
        Get.lazyPut<FirebaseStorage>(() => FirebaseStorage.instance,
            fenix: true);
        Get.lazyPut<StorageRemoteSource>(
            () => StorageRemoteSourceImpl(Get.find()),
            fenix: true);
        Get.lazyPut<UserRemoteSource>(() => UserRemoteSourceImpl(Get.find()),
            fenix: true);
      }
  }
  Get.lazyPut<UserLocalSource>(() => UserLocalSourceImpl(Get.find()),
      fenix: true);
  Get.lazyPut<PhotoRemoteSource>(() => PhotoRemoteSourceImpl(Get.find()),
      fenix: true);
  Get.lazyPut<IUserRepository>(
      () => UserRepositoryImpl(Get.find(), Get.find(), Get.find(), Get.find()),
      fenix: true);
}
