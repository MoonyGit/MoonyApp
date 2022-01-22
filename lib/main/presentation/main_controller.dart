import 'package:flutter/material.dart' hide Router;
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_creation/resources/router.dart'
    as activity_router;
import 'package:moony_app/activity_swipe/presentation/list/swipe_controller.dart';
import 'package:moony_app/chat/presentation/chat_list_controller.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/gift/presentation/gift_controller.dart';
import 'package:moony_app/main/resources/assets.dart';
import 'package:moony_app/profile/presentation/user_profile_controller.dart';

/// Enum order define page order
enum PageType {
  /// gift type
  gift,
  /// swipe type
  swipe,
  /// chat type
  chat,
  /// profile type
  profile
}

/// Get page icon extension
extension PageTypeIcon on PageType {
  /// Get page icon method
  String getIcon({required bool selected}) {
    switch (this) {
      case PageType.gift:
        return selected ? goodplansColored : goodplansGrey;
      case PageType.swipe:
        return selected ? catFaceColored : catFaceGrey;
      case PageType.chat:
        return selected ? chatColored : chatGrey;
      case PageType.profile:
        return selected ? profileColored : profileGrey;
    }
  }
}

/// Class to define the main page dependencies by dependency injection
class MainPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    GiftBinding().dependencies();
    SwipeBinding().dependencies();
    ChatListBinding().dependencies();
    UserProfileBinding().dependencies();
  }
}

/// The main page controller
class MainController extends GetxController {
  /// Tab icon correspondence
  final Map<PageType, RxString> tabIconList = <PageType, RxString>{
    for (PageType type in PageType.values)
      type: RxString(type.getIcon(selected: false))
  };

  /// Page controller
  late final PageController pageController = PageController(
    initialPage: PageType.swipe.let((PageType it) {
      tabIconList[it]?.value = it.getIcon(selected: true);
      return it.index;
    }),
  );

  /// Duration of the page transition
  Duration duration = const Duration(milliseconds: 300);

  /// Open the creation activity_creation page
  void showActivityCreator() {
    Get.toNamed(activity_router.Router.activityCreation);
  }

  /// Triggered when a tab is clicked
  /// => Change the illuminated icon and navigate to the wanted page
  void tabsManager(PageType pageType) {
    pageController.animateToPage(
      pageType.index,
      duration: duration,
      curve: Curves.linear,
    );

    Logger.d("Switched to page: $pageType");

    switch (pageType) {
      case PageType.gift:
        {
          tabIconList[PageType.gift]?.value =
              PageType.gift.getIcon(selected: true);
          tabIconList[PageType.swipe]?.value =
              PageType.swipe.getIcon(selected: false);
          tabIconList[PageType.chat]?.value =
              PageType.chat.getIcon(selected: false);
          tabIconList[PageType.profile]?.value =
              PageType.profile.getIcon(selected: false);
          break;
        }
      case PageType.swipe:
        {
          tabIconList[PageType.gift]?.value =
              PageType.gift.getIcon(selected: false);
          tabIconList[PageType.swipe]?.value =
              PageType.swipe.getIcon(selected: true);
          tabIconList[PageType.chat]?.value =
              PageType.chat.getIcon(selected: false);
          tabIconList[PageType.profile]?.value =
              PageType.profile.getIcon(selected: false);
          break;
        }
      case PageType.chat:
        {
          tabIconList[PageType.gift]?.value =
              PageType.gift.getIcon(selected: false);
          tabIconList[PageType.swipe]?.value =
              PageType.swipe.getIcon(selected: false);
          tabIconList[PageType.chat]?.value =
              PageType.chat.getIcon(selected: true);
          tabIconList[PageType.profile]?.value =
              PageType.profile.getIcon(selected: false);
          break;
        }
      case PageType.profile:
        {
          tabIconList[PageType.gift]?.value =
              PageType.gift.getIcon(selected: false);
          tabIconList[PageType.swipe]?.value =
              PageType.swipe.getIcon(selected: false);
          tabIconList[PageType.chat]?.value =
              PageType.chat.getIcon(selected: false);
          tabIconList[PageType.profile]?.value =
              PageType.profile.getIcon(selected: true);
          break;
        }
    }
  }
}
