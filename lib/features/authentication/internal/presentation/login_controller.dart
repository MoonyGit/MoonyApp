import 'package:get/get.dart';
import 'package:moony_app/common/application/app_router.dart';

/// Class to define LoginPage dependencies by dependency injection
class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}

/// The login viewModel of login page
class LoginController extends GetxController {

  /// on facebook login button pressed
  void onFacebookLoginPressed() => Get.toNamed(Navigation.loginFacebook);
  /// on google login button pressed
  void onGmailLoginPressed() => Get.toNamed(Navigation.loginGmail);
  /// on phone login button pressed
  void onPhoneLoginPressed() => Get.toNamed(Navigation.loginPhone);
}
