import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/common/util/widgets/pick_photo_widget.dart';
import 'package:moony_app/profile/edit/presentation/controller/user_profile_edit_controller.dart';
import 'package:moony_app/profile/edit/presentation/model/user_profile_edit_ui_item.dart';
import 'package:moony_app/profile/edit/presentation/view/user_profile_edit_header.dart';
import 'package:moony_app/profile/edit/presentation/view/user_profile_edit_item.dart';
import 'package:moony_app/profile/resources/strings.dart';

/// User edit profile information page
class UserProfileEditPage extends GetView<UserProfileEditController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          userEditProfileEditHeader.translate(),
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              PhotoSlotWidget(
                colorBegin: Colors.grey,
                slotNumber: 1,
                onClick: () => show(),
                /// TODO ?.let from controller
                child: Image.network(
                  "https://i1.wp.com/capricci.fr/wordpress/wp-content/uploads/2021/10/embrasse-moi-vampire-photo-nicolas-cage-1358012.jpg?fit=1200%2C675&ssl=1",
                  fit: BoxFit.cover,
                ),
              ),
              PhotoSlotWidget(
                colorBegin: Colors.grey,
                slotNumber: 2,
                onClick: () => show(),
                child: Image.network(
                  "https://www.lesuricate.org/wp-content/uploads/2018/11/nicolas-cage-vampire-678x381.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 16, bottom: 16)),
          Obx(
                () =>
            controller.preferencesItem.value?.let(
                  (List<UserProfileEditUi> list) => Expanded(
                child: ListView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return list.elementAt(index).when(
                      header: (String title) =>
                          UserProfileEditHeaderWidget(title: title),
                      item: (String title, String value) =>
                          UserProfileEditItemWidget(
                            title: title,
                            value: value,
                            onClick: ({required String key}) {
                              onItemClick(key);
                            },
                          ),
                    );
                  },
                ),
              ),
            ) ??
                Container(),
          ),
        ],
      ),
    );
  }

  void show() {
    // TODO logic while upload pictures
  }

  void onItemClick(String key) {
    Logger.d("clicked on $key");
    controller.goToEdit();
  }
}
