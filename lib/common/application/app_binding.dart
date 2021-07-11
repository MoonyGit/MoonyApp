import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:moony_app/common/services/connectivity/connectivity.dart';
import 'package:moony_app/common/services/connectivity/connectivity_service.dart';
import 'package:moony_app/common/services/local_storage/local_storage.dart';
import 'package:moony_app/common/services/local_storage/local_storage_service.dart';
import 'package:moony_app/features/authentication/api/api.dart';
import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
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

/// Application global dependencies
class AppBinding extends Bindings {

  @override
  void dependencies() {
    // Global
    Get.lazyPut<IConnectivity>(() => ConnectivityService(), fenix: true);
    Get.lazyPut<ILocalStorage>(() => LocalStorageService(), fenix: true);

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

    Get.lazyPut<IAuthStateRepository>(
        () => Get.find<AuthenticationRepositoryImpl>(),
        fenix: true);
    Get.lazyPut<ISignOutRepository>(
        () => Get.find<AuthenticationRepositoryImpl>(),
        fenix: true);
    Get.lazyPut<IPhoneAuthRepository>(
        () => Get.find<AuthenticationRepositoryImpl>(),
        fenix: true);
    Get.lazyPut<IEmailAuthRepository>(
        () => Get.find<AuthenticationRepositoryImpl>(),
        fenix: true);
    Get.lazyPut<IFacebookAuthRepository>(
        () => Get.find<AuthenticationRepositoryImpl>(),
        fenix: true);
    Get.lazyPut<IGoogleAuthRepository>(
        () => Get.find<AuthenticationRepositoryImpl>(),
        fenix: true);
    Get.lazyPut<IAppleAuthRepository>(
        () => Get.find<AuthenticationRepositoryImpl>(),
        fenix: true);

    Get.lazyPut<GetAuthStateUseCase>(() => GetAuthStateUseCase(Get.find()),
        fenix: true);
    Get.lazyPut<AppleAuthUseCase>(() => AppleAuthUseCase(Get.find()),
        fenix: true);
    Get.lazyPut<EmailAuthUseCase>(() => EmailAuthUseCase(Get.find()),
        fenix: true);
    Get.lazyPut<FacebookAuthUseCase>(() => FacebookAuthUseCase(Get.find()),
        fenix: true);
    Get.lazyPut<GoogleAuthUseCase>(() => GoogleAuthUseCase(Get.find()),
        fenix: true);
    Get.lazyPut<PhoneAuthUseCase>(() => PhoneAuthUseCase(Get.find()),
        fenix: true);
    Get.lazyPut<SignOutUseCase>(() => SignOutUseCase(Get.find()), fenix: true);

    Get.lazyPut<AuthenticationApi>(() => AuthenticationApi(Get.find()),
        fenix: true);
  }
}
