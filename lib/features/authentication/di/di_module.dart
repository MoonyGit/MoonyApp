import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:moony_app/features/authentication/api/api.dart';
import 'package:moony_app/features/authentication/internal/infrastructure/authentication_data_source.dart';
import 'package:moony_app/features/authentication/internal/infrastructure/authentication_firebase.dart';
import 'package:moony_app/features/authentication/internal/infrastructure/authentication_repository_impl.dart';
import 'package:moony_app/features/authentication/internal/usecase/get_auth_state.dart';
import 'package:moony_app/features/authentication/internal/usecase/login_with_apple.dart';
import 'package:moony_app/features/authentication/internal/usecase/login_with_email.dart';
import 'package:moony_app/features/authentication/internal/usecase/login_with_facebook.dart';
import 'package:moony_app/features/authentication/internal/usecase/login_with_google.dart';
import 'package:moony_app/features/authentication/internal/usecase/login_with_phone.dart';
import 'package:moony_app/features/authentication/internal/usecase/sign_out.dart';

/// Load auth dependencies
void loadModule() {
  // Auth
  Get.lazyPut<GoogleSignIn>(() => GoogleSignIn(), fenix: true);
  Get.lazyPut<FacebookAuth>(() => FacebookAuth.instance, fenix: true);
  Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);
  Get.lazyPut<AuthDataSource>(
      () => FirebaseAuthFacade(
            Get.find(),
            Get.find(),
            Get.find(),
          ),
      fenix: true);

  Get.lazyPut<AuthenticationRepositoryImpl>(
      () => AuthenticationRepositoryImpl(Get.find()),
      fenix: true);

  Get.lazyPut<GetAuthStateUseCase>(
      () => GetAuthStateUseCase(
          Get.find<AuthenticationRepositoryImpl>(), Get.find()),
      fenix: true);
  Get.lazyPut<AppleAuthUseCase>(
      () => AppleAuthUseCase(Get.find<AuthenticationRepositoryImpl>()),
      fenix: true);
  Get.lazyPut<EmailAuthUseCase>(
      () => EmailAuthUseCase(Get.find<AuthenticationRepositoryImpl>()),
      fenix: true);
  Get.lazyPut<FacebookAuthUseCase>(
      () => FacebookAuthUseCase(Get.find<AuthenticationRepositoryImpl>()),
      fenix: true);
  Get.lazyPut<GoogleAuthUseCase>(
      () => GoogleAuthUseCase(Get.find<AuthenticationRepositoryImpl>()),
      fenix: true);
  Get.lazyPut<PhoneAuthUseCase>(
      () => PhoneAuthUseCase(Get.find<AuthenticationRepositoryImpl>()),
      fenix: true);
  Get.lazyPut<SignOutUseCase>(
      () => SignOutUseCase(Get.find<AuthenticationRepositoryImpl>()),
      fenix: true);

  Get.lazyPut<AuthenticationApi>(() => AuthenticationApi(Get.find()),
      fenix: true);
}
