import 'package:get/get.dart';

/// Class to define UserProfile dependencies by dependency injection
class UserProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileController());
  }
}

/// ViewModel of the user profile screen
class UserProfileController extends GetxController {}
