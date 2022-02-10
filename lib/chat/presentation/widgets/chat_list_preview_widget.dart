import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:moony_app/chat/domain/model/chat_preview.dart';
import 'package:moony_app/chat/presentation/chat_list_controller.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/themes.dart';

class NewChatPreviewWidget extends GetView<ChatListController> {
  NewChatPreviewWidget({
    required this.chatList,
  });

  final List<ChatPreview> chatList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 10.0,
      children: buildWidgetList(),
    );
  }

  @override
  List<Widget> buildWidgetList() {
    return chatList.map((ChatPreview chatPreview) {
      return Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 160,
                width: 120,
                child: MaterialButton(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.primary, width: 5),
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(70),
                        bottom: Radius.circular(70),
                      ),
                      image: const DecorationImage(
                          image: AssetImage(AppAsset.paris),
                          fit: BoxFit.cover),
                    ),
                  ),
                  onPressed: () {
                    controller.goToChatRoom(chatPreview.id);
                  },
                ),
              ),
              Text(
                chatPreview.title,
                style: const TextStyle(
                  color: AppTheme.tertiaryDark,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      );
    }).toList();
  }
}


class ChatPreviewWidget extends GetView<ChatListController> {
  ChatPreviewWidget({
    required this.chatList,
  });

  final List<ChatPreview> chatList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 10.0,
      children: buildWidgetList(),
    );
  }

  @override
  List<Widget> buildWidgetList() {
    return chatList.map((ChatPreview chatPreview) {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 4.0,
              fillColor: Colors.white,
              shape: const CircleBorder(
                  side: BorderSide(width: 5, color: AppTheme.connected)),
              child: SizedBox(
                height: 94,
                width: 94,
                child: IconButton(
                    onPressed: () {
                      controller.goToChatRoom(chatPreview.id);
                    },
                    icon: Image.asset(AppAsset.moonyShadow)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.goToChatRoom(chatPreview.id);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chatPreview.title,
                  style: const TextStyle(
                    color: AppTheme.tertiaryDark,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  chatPreview.description ?? "",
                  style: const TextStyle(
                    color: AppTheme.tertiaryDark,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  chatPreview.lastMessage ?? "",
                  style: const TextStyle(
                    color: AppTheme.tertiary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      );
    }).toList();
  }
}