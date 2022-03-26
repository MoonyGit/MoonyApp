import 'package:get/get.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:url_launcher/url_launcher.dart';

/// Class to define SettingRules Page dependencies by dependency injection
class SettingRulesBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingRulesController());
  }
}

/// The setting rules viewModel of location page
class SettingRulesController extends GetxController {
  static const String PRIVACY_POLICY_URL = "https://";
  static const String TERM_OF_USE_URL = "https://";
  static const String LICENCES_URL = "https://";
  static const String FROONYS_SETTLEMENT_URL = "https://";

  /// redirect to moony guide web page
  Future<void> redirectToPrivacy() async {
    await canLaunch(PRIVACY_POLICY_URL)
        ? await launch(PRIVACY_POLICY_URL)
        : Logger.e("cannot open link $PRIVACY_POLICY_URL");
  }

  /// redirect to moony guide web page
  Future<void> redirectToTerm() async {
    await canLaunch(TERM_OF_USE_URL)
        ? await launch(TERM_OF_USE_URL)
        : Logger.e("cannot open link $TERM_OF_USE_URL");
  }

  /// redirect to moony guide web page
  Future<void> redirectToLicences() async {
    await canLaunch(LICENCES_URL)
        ? await launch(LICENCES_URL)
        : Logger.e("cannot open link $LICENCES_URL");
  }

  /// redirect to moony guide web page
  Future<void> redirectToSettlement() async {
    await canLaunch(PRIVACY_POLICY_URL)
        ? await launch(PRIVACY_POLICY_URL)
        : Logger.e("cannot open link $PRIVACY_POLICY_URL");
  }

  /// Go back to settings homepage
  void back() {
    Get.back();
  }
}
