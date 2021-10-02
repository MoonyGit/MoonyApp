import 'package:get/get.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/features/activity/router/router.dart'
    as activity_router;
import 'package:moony_app/features/authentication/api/api.dart';
import 'package:moony_app/features/authentication/router/router.dart'
    as auth_router;
import 'package:moony_app/features/registration/api/api.dart';
import 'package:moony_app/features/registration/router/router.dart' as registration_router;

/// Class to define SplashPage dependencies by dependency injection
class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(Get.find(), Get.find()));
  }
}

/// ViewModel of the splash screen
class SplashController extends GetxController {
  /// Constructor
  SplashController(this._authApi, this._registrationApi);

  final AuthenticationApi _authApi;
  final RegistrationApi _registrationApi;

  /// Perform some initializations and check sign in state
  /// before going to next screen
  Future<void> goToNextScreen() async {
    try {
      //TODO: initialize/update resources
      final bool isAuthenticated =
          await _authApi.isUserAuthenticated();
      final bool isRegistered =
          await _registrationApi.doesUserExist();
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
