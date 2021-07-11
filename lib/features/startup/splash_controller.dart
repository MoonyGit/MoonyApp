import 'package:get/get.dart';import 'package:moony_app/common/application/app_router.dart';
import 'package:moony_app/common/util/logger.dart';

/// Class to define SplashPage dependencies by dependency injection
class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}

/// ViewModel of the splash screen
class SplashController extends GetxController {
  /// Constructor
  SplashController();

  /// Perform some initializations and check sign in state
  /// before going to next screen
  Future<void> goToNextScreen() async {
    try {
      //TODO: initialize/update resources
      final bool isAuthenticated =
          false;
      // TODO: remove simulation of delay
      Future<void>.delayed(const Duration(milliseconds: 3000), () {
        Get.offNamed(
          isAuthenticated ? Navigation.home : Navigation.login,
        );
      });
    } catch (e) {
      Logger.e(e);
    }
  }
}
