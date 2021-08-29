import 'package:get/get.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/features/activity/router/router.dart'
    as activity_router;
import 'package:moony_app/features/authentication/api/api.dart';
import 'package:moony_app/features/authentication/router/router.dart'
    as auth_router;

/// Class to define SplashPage dependencies by dependency injection
class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(Get.find()));
  }
}

/// ViewModel of the splash screen
class SplashController extends GetxController {
  /// Constructor
  SplashController(this._localAuthRepository);

  final AuthenticationApi _localAuthRepository;

  /// Perform some initializations and check sign in state
  /// before going to next screen
  Future<void> goToNextScreen() async {
    try {
      //TODO: initialize/update resources
      final bool isAuthenticated =
          await _localAuthRepository.isUserAuthenticated();
      // TODO: remove simulation of delay
      Future<void>.delayed(const Duration(milliseconds: 3000), () {
        Get.offNamed(
          isAuthenticated
              ? activity_router.Router.home
              : auth_router.Router.login,
        );
      });
    } catch (e) {
      Logger.e(e);
    }
  }
}
