import 'package:get/get.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:url_launcher/url_launcher.dart';

/// Class to define SettingHome Page dependencies by dependency injection
class SettingHomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingHomeController());
  }
}

/// The setting "Home's Moony" viewModel of "Home's Moony" page
class SettingHomeController extends GetxController {
  static const String MOONY_GUIDE_URL = "https://google.com";
  static const String MOONY_SHOP_URL = "https://";
  static const String MOONY_BLOG_URL = "https://";
  static const String MOONY_GRAM_URL = "https://";
  static const String MOONY_BOOK_URL = "https://";
  static const String MOONY_INVITE_URL = "https://";

  /// redirect to moony guide web page
  Future<void> redirectToMoonyGuide() async {
    await canLaunch(MOONY_GUIDE_URL)
        ? await launch(MOONY_GUIDE_URL)
        : Logger.e("cannot open link $MOONY_GUIDE_URL");
  }

  /// redirect to moony shop web page
  Future<void> redirectToMoonyShop() async {
    await canLaunch(MOONY_SHOP_URL)
        ? await launch(MOONY_SHOP_URL)
        : Logger.e("cannot open link $MOONY_SHOP_URL");
  }

  /// redirect to moony blog web page
  Future<void> redirectToMoonyBlog() async {
    await canLaunch(MOONY_BLOG_URL)
        ? await launch(MOONY_BLOG_URL)
        : Logger.e("cannot open link $MOONY_BLOG_URL");
  }

  /// redirect to moony instagram web page
  Future<void> redirectToMoonyGram() async {
    await canLaunch(MOONY_GRAM_URL)
        ? await launch(MOONY_GRAM_URL)
        : Logger.e("cannot open link $MOONY_GRAM_URL");
  }

  /// redirect to moony shop web page
  Future<void> redirectToMoonyBook() async {
    await canLaunch(MOONY_BOOK_URL)
        ? await launch(MOONY_BOOK_URL)
        : Logger.e("cannot open link $MOONY_BOOK_URL");
  }

  /// redirect to moony invite web page
  Future<void> redirectToMoonyInvite() async {
    await canLaunch(MOONY_INVITE_URL)
        ? await launch(MOONY_INVITE_URL)
        : Logger.e("cannot open link $MOONY_INVITE_URL");
  }

  /// Return to settings homepage
  void back() {
    Get.back();
  }
}
