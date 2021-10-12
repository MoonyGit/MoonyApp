import 'package:get/get.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/activity/resources/router.dart'
    as activity_router;
import 'package:moony_app/authentication/data/repository/authentication_repository_impl.dart';
import 'package:moony_app/authentication/domain/usecase/get_auth_state.dart';
import 'package:moony_app/authentication/resources/router.dart'
    as auth_router;
import 'package:moony_app/registration/domain/usecase/registration_use_case.dart';
import 'package:moony_app/registration/resources/router.dart'
    as registration_router;

/// Class to define SplashPage dependencies by dependency injection
class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IsUserRegistered>(() => IsUserRegistered(Get.find()),
        fenix: true);

    Get.lazyPut<IsUserAuthenticatedUseCase>(
        () => IsUserAuthenticatedUseCase(
            Get.find<AuthenticationRepositoryImpl>()),
        fenix: true);
    Get.lazyPut(() => SplashController(
        Get.find<IsUserAuthenticatedUseCase>(), Get.find<IsUserRegistered>()));
  }
}

/// ViewModel of the splash screen
class SplashController extends GetxController {
  /// Constructor
  SplashController(this._isUserAuthenticated, this._isUserRegistered);

  final AsyncUseCase<bool> _isUserAuthenticated;
  final AsyncUseCase<bool> _isUserRegistered;

  /// Perform some initializations and check sign in state
  /// before going to next screen
  Future<void> goToNextScreen() async {
    try {
      //TODO: initialize/update resources
      final bool isAuthenticated = await _isUserAuthenticated();
      final bool isRegistered = await _isUserRegistered();
      // TODO: remove simulation of delay
      Future<void>.delayed(const Duration(milliseconds: 3000), () {
        String page;
        if (isRegistered) {
          page = activity_router.Router.home;
        } else if (isAuthenticated) {
          page = registration_router.Router.setBackupEmail;
        } else {
          page = auth_router.Router.login;
        }
        Get.offNamed(page);
      });
    } catch (e) {
      Logger.e(e);
    }
  }
}
