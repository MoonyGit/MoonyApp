import 'package:get/get.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:url_launcher/url_launcher.dart';

/// Class to define SettingInvoke Page dependencies by dependency injection
class SettingInvokeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingInvokeController());
  }
}

/// The setting "Invoke Moony" viewModel of "Invoke Moony" page
class SettingInvokeController extends GetxController {
  static const String MOONY_GUIDE_URL = "https://google.com";
  static const String FAQ_URL = "https://";
  static const String CONTACT_URL = "https://";
  static const String HELP_URL = "https://";

  /// redirect to moony guide web page
  Future<void> redirectToMoonyGuide() async {
    await canLaunch(MOONY_GUIDE_URL)
        ? await launch(MOONY_GUIDE_URL)
        : Logger.e("cannot open link $MOONY_GUIDE_URL");
  }

  /// redirect to moony guide web page
  Future<void> redirectToFaq() async {
    await canLaunch(FAQ_URL)
        ? await launch(FAQ_URL)
        : Logger.e("cannot open link $FAQ_URL");
  }

  /// redirect to moony guide web page
  Future<void> redirectToContact() async {
    await canLaunch(CONTACT_URL)
        ? await launch(CONTACT_URL)
        : Logger.e("cannot open link $CONTACT_URL");
  }

  /// redirect to moony guide web page
  Future<void> redirectToHelp() async {
    await canLaunch(HELP_URL)
        ? await launch(HELP_URL)
        : Logger.e("cannot open link $HELP_URL");
  }

  /// Go back to settings homepage
  void back() {
    Get.back();
  }
}
