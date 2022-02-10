import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:moony_app/chat/presentation/chat_room_controller.dart';
import 'package:moony_app/chat/presentation/widgets/chat_room_widget.dart';
import 'package:moony_app/chat/resources/assets.dart';
import 'package:moony_app/common/base/widgets/common.dart';
import 'package:moony_app/home/resources/router.dart' as home_router;

/// The phone otp page
class ChatRoomPage extends GetView<ChatRoomController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: getMoonyTitle()),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(FontAwesomeIcons.chevronLeft),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(home_router.Router.home);
            },
            icon: Image.asset(storm),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Expanded(child: ChatWidget())],
      ),
    );
  }
}
