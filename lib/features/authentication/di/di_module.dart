import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:moony_app/features/authentication/api/api.dart';
import 'package:moony_app/features/authentication/internal/infrastructure/remote/authentication_data_source.dart';
import 'package:moony_app/features/authentication/internal/infrastructure/remote/authentication_data_source_impl.dart';
import 'package:moony_app/features/authentication/internal/infrastructure/repository/authentication_repository_impl.dart';
import 'package:moony_app/features/authentication/internal/usecase/get_auth_state.dart';

/// Load auth dependencies
void loadModule() {
  // Auth
  Get.lazyPut<GoogleSignIn>(() => GoogleSignIn(), fenix: true);
  Get.lazyPut<FacebookAuth>(() => FacebookAuth.instance, fenix: true);
  Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);
  Get.lazyPut<AuthDataSource>(
      () => AuthDataSourceImpl(
            Get.find(),
            Get.find(),
            Get.find(),
          ),
      fenix: true);

  Get.lazyPut<AuthenticationRepositoryImpl>(
      () => AuthenticationRepositoryImpl(Get.find()),
      fenix: true);

  Get.lazyPut<IsUserAuthenticatedUseCase>(
      () =>
          IsUserAuthenticatedUseCase(Get.find<AuthenticationRepositoryImpl>()),
      fenix: true);

  Get.lazyPut<AuthenticationApi>(
      () => AuthenticationApi(Get.find<IsUserAuthenticatedUseCase>()),
      fenix: true);
}
