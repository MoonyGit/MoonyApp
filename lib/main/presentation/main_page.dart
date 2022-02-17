import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/activity_swipe/presentation/list/swipe_page.dart';
import 'package:moony_app/chat/presentation/chat_list_page.dart';
import 'package:moony_app/gift/presentation/gift_page.dart';
import 'package:moony_app/main/presentation/main_controller.dart';
import 'package:moony_app/main/resources/assets.dart';
import 'package:moony_app/profile/presentation/user_profile_page.dart';

/// The phone otp page
class MainPage extends GetView<MainController> {
  final List<Widget> _pages = PageType.values.map((PageType type) {
    switch (type) {
      case PageType.gift:
        return GiftPage();
      case PageType.swipe:
        return SwipePage();
      case PageType.chat:
        return ChatListPage();
      case PageType.profile:
        return UserProfilePage();
    }
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  controller.tabsManager(PageType.values[0]);
                },
                icon: Image.asset(
                  controller.tabIconList[PageType.values[0]]?.value ?? "",
                ),
                splashColor: Colors.transparent,
              ),
              IconButton(
                onPressed: () {
                  controller.tabsManager(PageType.values[1]);
                },
                icon: Image.asset(
                  controller.tabIconList[PageType.values[1]]?.value ?? "",
                ),
                splashColor: Colors.transparent,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 48, maxWidth: 48),
              ),
              IconButton(
                onPressed: () {
                  controller.tabsManager(PageType.values[2]);
                },
                icon: Image.asset(
                  controller.tabIconList[PageType.values[2]]?.value ?? "",
                ),
                splashColor: Colors.transparent,
              ),
              IconButton(
                onPressed: () {
                  controller.tabsManager(PageType.values[3]);
                },
                icon: Image.asset(
                  controller.tabIconList[PageType.values[3]]?.value ?? "",
                ),
                splashColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        mini: true,
        elevation: 0,
        onPressed: () {
          controller.showActivityCreator();
        },
        child: Image.asset(addActivityButton),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
