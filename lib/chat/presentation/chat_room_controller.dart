import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart' hide Router;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:get/get.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/chat/domain/model/chat_preview.dart';
import 'package:moony_app/chat/resources/router.dart' as chat_router;
import 'package:moony_app/common/resources/assets.dart';

/// Class to define LoginPage dependencies by dependency injection

class ChatRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatRoomController());
  }
}

/// The login viewModel of login page
class ChatRoomController extends GetxController {
  final PageController pageController = PageController();
  late final AuthDataSource _authSource;


  Duration duration = const Duration(milliseconds: 300);
  List<ChatPreview> newChatPreviewList = [
    ChatPreview(
        id: 'panam',
        imageUri: Uri.parse(AppAsset.paris),
        title: "Balade à Paris"),
  ];

  //List<ChatPreview> chatPreviewList = getChatPreviewList();

  Future<String?> _getUserId() async =>
      (await _authSource.getSignedInUser())?.id;

  void goToChatList(String chatId) {
    fillChatRoom(chatId);
    Get.toNamed(chat_router.Router.chatList);
    pageController.nextPage(duration: duration, curve: Curves.linear);
  }

  void fillChatRoom(String chatId){

  }

  List<types.Message> messages = [];

  final types.User user =
  types.User(id: "123");
  //types.User(id: _getUserId ?? "");

  String randomString() {
    final random = Random.secure();
    final values = List<int>.generate(16, (i) => random.nextInt(255));
    return base64UrlEncode(values);
  }
}
