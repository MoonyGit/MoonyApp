import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/data/local/user/user_local_source.dart';
import 'package:moony_app/common/data/local/user/user_local_source_impl.dart';
import 'package:moony_app/common/data/remote/connectivity/connectivity.dart';
import 'package:moony_app/common/data/remote/connectivity/connectivity_service.dart';
import 'package:moony_app/common/data/remote/photo/photo_remote_source.dart';
import 'package:moony_app/common/data/remote/photo/photo_remote_source_impl.dart';
import 'package:moony_app/common/data/remote/user/user_remote_source.dart';
import 'package:moony_app/common/data/remote/user/user_remote_source_impl.dart';
import 'package:moony_app/common/data/repository/user_repository_impl.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage_service.dart';
import 'package:moony_app/common/domain/repository/user_repositories_facade.dart';

/// Load global dependencies
void loadModule() {
  Get.lazyPut<IConnectivity>(() => ConnectivityService(), fenix: true);
  Get.lazyPut<ILocalStorage>(
      () => LocalStorageService(UserLocalSourceImpl.userCreation),
      fenix: true);

  // User creation
  Get.lazyPut<FirebaseFirestore>(() => FirebaseFirestore.instance, fenix: true);
  Get.lazyPut<FirebaseStorage>(() => FirebaseStorage.instance, fenix: true);
  Get.lazyPut<UserLocalSource>(() => UserLocalSourceImpl(Get.find()),
      fenix: true);
  Get.lazyPut<UserRemoteSource>(() => UserRemoteSourceImpl(Get.find()),
      fenix: true);
  Get.lazyPut<PhotoRemoteSource>(() => PhotoRemoteSourceImpl(Get.find()),
      fenix: true);
  Get.lazyPut<IUserRepository>(
      () => UserRepositoryImpl(Get.find(), Get.find(), Get.find(), Get.find()),
      fenix: true);
}
